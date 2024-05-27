#include <QtWidgets>
#include <QInputDialog>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <fstream>
#include <memory>
#include <stack>
#include <chrono>
#include "shape.h"
#include "circle.h"
#include "line.h"

class CanvasWidget : public QWidget {
public:
    enum SelectedShapeType {
        RectangleSelected,
        CircleSelected,
        MouseSelected,
        LineSelected
    };
    explicit CanvasWidget(QWidget *parent = nullptr) : QWidget(parent) {
        setMinimumSize(500, 200);
        setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        setFocusPolicy(Qt::StrongFocus);
        history.push(m_shapes);
    }

    void setSelectedShape(SelectedShapeType type) {
        m_selectedShapeType = type;
    }

    void saveAs() {
        QString fileName = QFileDialog::getSaveFileName(this, "Save As", "", "Images (*.png *.xpm *.jpg);;Text files (*.txt);;XML files (*.xml)");
        if (!fileName.isEmpty()) {
            currentFilePath = fileName;
            save(fileName.toStdString());
        }
    }

    void save(const std::string &fileName = "") {
        using namespace std;
        string usedFileName = fileName.empty() ? currentFilePath.toStdString() : fileName;

        if (usedFileName.empty()) {
            saveAs();
            return;
        }
        ofstream MyFile(usedFileName, ios::trunc);

        if (!MyFile.is_open()) {
            std::cerr << "Error opening file!" << std::endl;
            return;
        }

        for (const auto &shape: m_shapes) {
            ostringstream oss;
            shape->to_string(oss);
            MyFile << oss.str() << '\n';
        }

        MyFile.close();
    }

    void open(const std::string &fileName) {
        using namespace std;
        ifstream MyFile(fileName);

        if (!MyFile.is_open()) {
            cerr << "Error opening file!" << endl;
            return;
        }

        m_shapes.clear();
        string text;
        while (getline(MyFile, text)) {
            istringstream iss(text);
            string shapeType;
            int x, y, p1, p2;
            iss >> shapeType >> x >> y >> p1 >> p2;

            if (shapeType == "rectangle") {
                m_shapes.push_back(make_shared<rectangle>(x, y, p1, p2));
            } else if (shapeType == "circle") {
                m_shapes.push_back(make_shared<circle>(x, y, p1));
            } else if (shapeType == "line") {
                m_shapes.push_back(make_shared<line>(x, y, p1, p2));
            }
        }

        currentFilePath = QString::fromStdString(fileName);
        MyFile.close();
        update();
    }

    void undo() {
        if (history.size() > 1) {
            redoStack.push(history.top());
            history.pop();
            m_shapes = history.top();
            update();
        }
    }

    void redo() {
        if (!redoStack.empty()) {
            history.push(redoStack.top());
            m_shapes = redoStack.top();
            redoStack.pop();
            update();
        }
    }

    void cut() {
        if (m_selectedShape != nullptr) {
            m_copiedShape = std::shared_ptr<shape>(m_selectedShape->clone());
            auto it = std::find(m_shapes.begin(), m_shapes.end(), m_selectedShape);
            if (it != m_shapes.end()) {
                m_shapes.erase(it);
            }
            m_selectedShape = m_copiedShape;
        }
        update();
    }

    void copy() {
        if (m_selectedShape != nullptr) {
            m_copiedShape = std::shared_ptr<shape>(m_selectedShape->clone());
        }
        update();
    }

    void paste() {
        if (m_copiedShape != nullptr) {
            if (m_selectedShape != nullptr) {
                m_selectedShape->unselect();
            }
            m_selectedShape = std::shared_ptr<shape>(m_copiedShape->clone());
            m_selectedShape->select();
            m_shapes.push_back(m_selectedShape);
        }
        update();
    }

    void newCanvas() {
        m_shapes.clear();
        history = std::stack<std::vector<std::shared_ptr<shape>>>();
        redoStack = std::stack<std::vector<std::shared_ptr<shape>>>();
        history.push(m_shapes);
        update();
    }

    QString get_currentFilePath() {
        return currentFilePath;
    }

protected:
    void saveHistory() {
        if (!m_shapes.empty()) {
            std::vector<std::shared_ptr<shape>> Copy;
            for (auto &shp: m_shapes) {
                Copy.push_back(std::shared_ptr<shape>(shp->clone()));
            }
            history.push(Copy);
            redoStack = std::stack<std::vector<std::shared_ptr<shape>>>();
        }
    }

    void paintEvent(QPaintEvent *) override {
        QPainter painter(this);

        painter.fillRect(rect(), Qt::white);
        for (const auto &shape: m_shapes) {
            shape->paint(painter);
        }
    }

    void mousePressEvent(QMouseEvent *event) override {
        if (m_selectedShape != nullptr) {
            m_selectedShape->unselect();
            m_selectedShape = nullptr;
            update();
        }
        if (event->button() == Qt::LeftButton) {
            int x = event->pos().x();
            int y = event->pos().y();
            const int size = 100;
            const int halfSize = size / 2;
            switch (m_selectedShapeType) {
                case RectangleSelected:
                    m_shapes.push_back(std::make_shared<rectangle>(x - halfSize, y - halfSize, size, size));
                    break;
                case CircleSelected:
                    m_shapes.push_back(std::make_shared<circle>(x, y, halfSize));
                    break;
                case LineSelected:
                    m_temporaryShape = std::make_shared<line>(x, y, x, y);
                    break;
                case MouseSelected:

                    if (m_selectedShape != nullptr) {
                        m_selectedShape->unselect();
                        m_selectedShape = nullptr;
                        update();
                    }

                    for (auto rit = m_shapes.rbegin(); rit != m_shapes.rend(); ++rit) {
                        std::shared_ptr<shape> shape = *rit;
                        if (shape->contains(x, y)) {
                            shape->select();
                            m_selectedShape = shape;
                            m_dragState = true;
                            m_PrevMouseX = x;
                            m_PrevMouseY = y;
                            update();
                            break;
                        }
                    }
                    break;
                default:
                    break;
            }
            update();
        }
    }

    void mouseMoveEvent(QMouseEvent *event) override {
        if (m_dragState && m_selectedShape != nullptr) {
            int dx = event->pos().x() - m_PrevMouseX;
            int dy = event->pos().y() - m_PrevMouseY;
            m_selectedShape->move(dx, dy);
            m_PrevMouseX = event->pos().x();
            m_PrevMouseY = event->pos().y();
            update();
        } else if (m_selectedShapeType == LineSelected && m_temporaryShape) {
            auto lineShape = std::dynamic_pointer_cast<line>(m_temporaryShape);
            if (lineShape) {
                lineShape->setEndPoint(event->pos().x(), event->pos().y());
                update();
            }
        }
    }

    void mouseReleaseEvent(QMouseEvent *event) override {
        if (m_selectedShapeType == LineSelected && m_temporaryShape) {
            auto lineShape = std::dynamic_pointer_cast<line>(m_temporaryShape);
            if (lineShape) {
                lineShape->setEndPoint(event->pos().x(), event->pos().y());
                m_shapes.push_back(lineShape);
                m_temporaryShape.reset();
            }
            update();
        }
        m_dragState = false;
        saveHistory();
        update();
    }

    void keyPressEvent(QKeyEvent *event) override {
        if (event->key() == Qt::Key_Delete || event->key() == Qt::Key_Backspace) {
            auto it = std::find(m_shapes.begin(), m_shapes.end(), m_selectedShape);
            if (it != m_shapes.end()) {
                m_shapes.erase(it);
            }
            m_selectedShape = nullptr;
        } else if ((event->key() == Qt::Key_X) && (event->modifiers() == Qt::ControlModifier)) {
            cut();
        } else if ((event->key() == Qt::Key_C) && (event->modifiers() == Qt::ControlModifier)) {
            copy();
        } else if ((event->key() == Qt::Key_V) && (event->modifiers() == Qt::ControlModifier)) {
            paste();
        } else if ((event->key() == Qt::Key_Z) && (event->modifiers() == Qt::ControlModifier)) {
            undo();
        }
        update();
    }

private:
    QString currentFilePath;
    std::shared_ptr<shape> m_temporaryShape;
    std::stack<std::vector<std::shared_ptr<shape>>> redoStack;
    std::vector<std::shared_ptr<shape>> m_shapes;
    std::stack<std::vector<std::shared_ptr<shape>>> history;
    std::shared_ptr<shape> m_selectedShape = nullptr;
    std::shared_ptr<shape> m_copiedShape = nullptr;
    int m_PrevMouseX{}, m_PrevMouseY{};
    bool m_dragState = false;
    std::chrono::time_point<std::chrono::system_clock> timer;
    SelectedShapeType m_selectedShapeType = MouseSelected;
};

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    QMainWindow window;
    window.setWindowTitle("Project#2");
    window.resize(1920, 1080);
    window.setStyleSheet("background-color: white;");

    auto *canvas = new CanvasWidget;
    window.setCentralWidget(canvas);

    QMenuBar *menuBar = window.menuBar();

    QMenu *fileMenu = menuBar->addMenu("File");
    QAction *newAction = fileMenu->addAction("New");
    QObject::connect(newAction, &QAction::triggered, canvas, &CanvasWidget::newCanvas);

    QAction *openAction = fileMenu->addAction("Open");
    QObject::connect(openAction, &QAction::triggered, [&]() {
        QString fileName = QFileDialog::getOpenFileName(&window, "Open File", "", "Text files (*.txt);;All files (*.*)");
        if (!fileName.isEmpty()) {
            canvas->open(fileName.toStdString());
        }
    });

    QAction *saveAction = fileMenu->addAction("Save");
    QObject::connect(saveAction, &QAction::triggered, [&]() {
        if (canvas->get_currentFilePath().isEmpty()) {
            canvas->saveAs();
        } else {
            canvas->save();
        }
    });

    QAction *saveAsAction = fileMenu->addAction("Save As...");
    QObject::connect(saveAsAction, &QAction::triggered, canvas, &CanvasWidget::saveAs);
    fileMenu->addSeparator();
    QAction *exitAction = fileMenu->addAction("Exit", &app, &QApplication::quit);
    menuBar->addMenu(fileMenu);

    QMenu *editMenu = menuBar->addMenu("Edit");
    QAction *undoAction = editMenu->addAction("Undo");
    QObject::connect(undoAction, &QAction::triggered, canvas, &CanvasWidget::undo);

    QAction *redoAction = editMenu->addAction("Redo");
    QObject::connect(redoAction, &QAction::triggered, canvas, &CanvasWidget::redo);

    QAction *cutAction = editMenu->addAction("Cut");
    QObject::connect(cutAction, &QAction::triggered, canvas, &CanvasWidget::cut);

    QAction *copyAction = editMenu->addAction("Copy");
    QObject::connect(copyAction, &QAction::triggered, canvas, &CanvasWidget::copy);

    QAction *pasteAction = editMenu->addAction("Paste");
    QObject::connect(pasteAction, &QAction::triggered, canvas, &CanvasWidget::paste);
    menuBar->addMenu(editMenu);

    QMenu *helpMenu = menuBar->addMenu("Help");
    QAction *aboutAction = helpMenu->addAction("INFO about the application");
    QObject::connect(aboutAction, &QAction::triggered, [&]() {
        QMessageBox::about(&window, "About", "This is an About dialog with information about the application.");
    });
    menuBar->addMenu(helpMenu);

    QToolBar *toolbar = new QToolBar("Tools");
    toolbar->setToolButtonStyle(Qt::ToolButtonIconOnly);
    toolbar->setOrientation(Qt::Vertical); // Set orientation to vertical to place buttons on the left
    toolbar->setStyleSheet("QToolBar { background-color: white; }"
                           "QToolButton { background-color: white; border: 3px solid black; }"
                           "QToolButton:checked { background-color: lightgray; }");
    window.addToolBar(Qt::LeftToolBarArea, toolbar);

    QAction *addMouse = new QAction(QIcon("icons/click.png"), "Click");
    toolbar->addAction(addMouse);

    QAction *addRectangleAction = new QAction(QIcon("icons/recrangle.png"), "Add Rectangle");
    toolbar->addAction(addRectangleAction);

    QAction *addCircleAction = new QAction(QIcon("icons/circle.png"), "Add Circle");
    toolbar->addAction(addCircleAction);

    QAction *addLineAction = new QAction(QIcon("icons/line.png"), "Add Line");
    toolbar->addAction(addLineAction);

    QObject::connect(addLineAction, &QAction::triggered, [&]() {
        canvas->setSelectedShape(CanvasWidget::LineSelected);
    });

    QObject::connect(addMouse, &QAction::triggered, [&]() {
        canvas->setSelectedShape(CanvasWidget::MouseSelected);
    });

    QObject::connect(addRectangleAction, &QAction::triggered, [&](){
        canvas->setSelectedShape(CanvasWidget::RectangleSelected);
    });

    QObject::connect(addCircleAction, &QAction::triggered, [&]() {
        canvas->setSelectedShape(CanvasWidget::CircleSelected);
    });

    window.show();
    return QApplication::exec();
}