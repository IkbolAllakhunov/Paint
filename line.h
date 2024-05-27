#ifndef FINAL_LINE_H
#define FINAL_LINE_H
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

class line : public shape {
public:
    line(int x1, int y1, int x2, int y2) : shape(x1, y1), m_x2(x2), m_y2(y2) {}

    void paint(QPainter &painter) const override {
        painter.setBrush(Qt::NoBrush);
        painter.setPen(QPen(Qt::black, 2));
        painter.drawLine(m_x, m_y, m_x2, m_y2);
    }

    [[nodiscard]] bool contains(int x, int y) const override {
        int minX = std::min(m_x, m_x2);
        int maxX = std::max(m_x, m_x2);
        int minY = std::min(m_y, m_y2);
        int maxY = std::max(m_y, m_y2);
        return x >= minX && x <= maxX && y >= minY && y <= maxY;
    }

    line* clone() const override {
        return new line(m_x, m_y, m_x2, m_y2);
    }
    void setEndPoint(int x, int y) {
        m_x2 = x;
        m_y2 = y;
    }

    void to_string(std::ostringstream &oss) const override {
        oss << "line " << m_x << ' ' << m_y << ' ' << m_x2 << ' ' << m_y2;
    }
private:
    int m_x2, m_y2;
};



#endif //FINAL_LINE_H
