#ifndef DECIMAL_H
#define DECIMAL_H

#include <iostream>
#include <vector>
#include <stdexcept>
#include <algorithm>
#include <string>

class Decimal {
public:
    // Конструктор по умолчанию
    Decimal();

    // Конструктор с параметром типа string
    Decimal(const std::string &num);

    // Методы для работы с числом
    void add(const Decimal &other);
    void subtract(const Decimal &other);
    void multiply(const Decimal &other);
    void divide(const Decimal &other);
    std::string toString() const;

private:
    std::vector<unsigned char> data;

    // Вспомогательные методы
    int compare(const std::vector<unsigned char> &a, const std::vector<unsigned char> &b) const;
    void subtract_in_place(std::vector<unsigned char> &a, const std::vector<unsigned char> &b) const;
};

#endif // DECIMAL_H
