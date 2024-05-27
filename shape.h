#ifndef FINAL_SHAPE_H
#define FINAL_SHAPE_H
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


using std::make_shared;

class shape {
public:
    virtual ~shape() = default;

    virtual void paint(QPainter &painter) const {
        painter.setBrush(Qt::black);
        if (m_selected) {
            painter.setPen(QPen(Qt::red, 2));
        } else {
            painter.setPen(QPen(Qt::black, 2));
        }
    }
    void select() {
        m_selected = true;
    }
    void unselect() {
        m_selected = false;
    }

    [[nodiscard]] virtual bool contains(int x, int y) const = 0;

    void move(int dx, int dy) {
        m_x += dx;
        m_y += dy;
    }

    explicit operator std::string() const {
        std::ostringstream oss;
        to_string(oss);
        return oss.str();
    }
    virtual shape* clone() const = 0;

    virtual void to_string(std::ostringstream &oss) const = 0;

    shape(int x, int y) : m_x{x}, m_y{y}, m_selected{false} { }

protected:
    int m_x, m_y;
    bool m_selected;
};

class rectangle : public shape {
public:
    rectangle(int x, int y, int width, int height) : shape(x, y),
                                                     m_width{width}, m_height{height} { }

    void paint(QPainter &painter) const override {
        shape::paint(painter);
        painter.drawRect(m_x, m_y, m_width, m_height);
    }

    [[nodiscard]] bool contains(int x, int y) const override {
        return x >= m_x && x < m_x + m_width &&
               y >= m_y && y < m_y + m_height;
    }
    rectangle* clone() const override {
        return new rectangle(m_x, m_y, m_width, m_height);
    }
    void to_string(std::ostringstream &oss) const override {
        oss << "rectangle " << m_x << ' ' << m_y << ' ' << m_width << ' ' << m_height;
    }

private:
    const int m_width, m_height;
};
#endif //FINAL_SHAPE_H
