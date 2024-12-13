#pragma once
#include <iostream>

class Figure {
public:
    virtual ~Figure() = default;
    virtual void calculateGeometricCenter() const = 0;
    virtual double calculateArea() const = 0;
    virtual void printInfo() const = 0;
    virtual void input(std::istream& is) = 0;
    virtual void output(std::ostream& os) const = 0;
};

std::ostream& operator<<(std::ostream& os, const Figure& figure);
std::istream& operator>>(std::istream& is, Figure& figure);
