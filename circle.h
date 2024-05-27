#ifndef FINAL_CIRCLE_H
#define FINAL_CIRCLE_H
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

class circle : public shape {
public:
    circle(int x, int y, int radius) : shape(x, y),
                                       m_radius{radius} { }

    void paint(QPainter &painter) const override {
        shape::paint(painter);
        painter.drawEllipse(m_x- m_radius, m_y - m_radius, m_radius * 2, m_radius * 2);
    }

    [[nodiscard]] bool contains(int x, int y) const override {
        int dx = x - m_x; int dy = y - m_y;
        return (dx * dx + dy * dy) < (m_radius * m_radius);
    }
    circle* clone() const override {
        return new circle(m_x, m_y, m_radius);
    }
    void to_string(std::ostringstream &oss) const override {
        oss << "circle " << m_x << ' ' << m_y << ' ' << m_radius;
    }
private:
    const int m_radius;
};

#endif //FINAL_CIRCLE_H
