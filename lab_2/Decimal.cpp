#include "Decimal.h"

// Конструктор по умолчанию
Decimal::Decimal() {}

// Конструктор с параметром типа string
Decimal::Decimal(const std::string &num) {
    data.resize(num.size());
    std::transform(num.rbegin(), num.rend(), data.begin(), [](char c) {
        return c - '0';
    });
}

// Метод для сложения
void Decimal::add(const Decimal &other) {
    std::vector<unsigned char> result;
    size_t max_size = std::max(data.size(), other.data.size());
    int carry = 0;

    for (size_t i = 0; i < max_size || carry; ++i) {
        int sum = carry;
        if (i < data.size()) sum += data[i];
        if (i < other.data.size()) sum += other.data[i];
        result.push_back(sum % 10);
        carry = sum / 10;
    }

    data = result;
}

// Метод для вычитания
void Decimal::subtract(const Decimal &other) {
    std::vector<unsigned char> result;
    size_t max_size = std::max(data.size(), other.data.size());
    int borrow = 0;

    for (size_t i = 0; i < max_size; ++i) {
        int diff = (i < data.size() ? data[i] : 0) - (i < other.data.size() ? other.data[i] : 0) - borrow;

        if (diff < 0) {
            diff += 10;
            borrow = 1;
        } else {
            borrow = 0;
        }

        result.push_back(diff);
    }

    // Удаляем ведущие нули
    while (result.size() > 1 && result.back() == 0) {
        result.pop_back();
    }

    data = result;
}

// Метод для умножения
void Decimal::multiply(const Decimal &other) {
    std::vector<unsigned char> result(data.size() + other.data.size(), 0);

    for (size_t i = 0; i < data.size(); ++i) {
        int carry = 0;
        for (size_t j = 0; j < other.data.size() || carry; ++j) {
            int prod = (i < data.size() ? data[i] : 0) * (j < other.data.size() ? other.data[j] : 0) + carry + result[i + j];
            result[i + j] = prod % 10;
            carry = prod / 10;
        }
    }

    // Удаляем ведущие нули
    while (result.size() > 1 && result.back() == 0) {
        result.pop_back();
    }

    data = result;
}

// Метод для деления
void Decimal::divide(const Decimal &other) {
    if (other.data.empty() || (other.data.size() == 1 && other.data[0] == 0)) {
        throw std::invalid_argument("Division by zero");
    }

    std::vector<unsigned char> result;
    std::vector<unsigned char> remainder;
    size_t pos = 0;

    while (pos < data.size()) {
        remainder.push_back(data[pos]);
        unsigned char quotient = 0;

        while (compare(remainder, other.data) >= 0) {
            subtract_in_place(remainder, other.data);
            ++quotient;
        }

        result.push_back(quotient);
        ++pos;

        // Удаляем ведущие нули из остатка
        while (remainder.size() > 1 && remainder.back() == 0) {
            remainder.pop_back();
        }
    }

    // Удаляем ведущие нули из результата
    while (result.size() > 1 && result.back() == 0) {
        result.pop_back();
    }

    // Удаляем ведущие нули из остатка
    while (remainder.size() > 1 && remainder.back() == 0) {
        remainder.pop_back();
    }

    data = result;
}

// Вспомогательная функция для сравнения двух чисел
int Decimal::compare(const std::vector<unsigned char> &a, const std::vector<unsigned char> &b) const {
    if (a.size() != b.size()) {
        return a.size() > b.size() ? 1 : -1;
    }

    for (int i = a.size() - 1; i >= 0; --i) {
        if (a[i] != b[i]) {
            return a[i] > b[i] ? 1 : -1;
        }
    }

    return 0;
}

// Вспомогательная функция для вычитания одного числа из другого
void Decimal::subtract_in_place(std::vector<unsigned char> &a, const std::vector<unsigned char> &b) const {
    int borrow = 0;

    for (size_t i = 0; i < b.size(); ++i) {
        int diff = a[i] - b[i] - borrow;
        if (diff < 0) {
            diff += 10;
            borrow = 1;
        } else {
            borrow = 0;
        }
        a[i] = diff;
    }

    for (size_t i = b.size(); borrow && i < a.size(); ++i) {
        int diff = a[i] - borrow;
        if (diff < 0) {
            diff += 10;
            borrow = 1;
        } else {
            borrow = 0;
        }
        a[i] = diff;
    }
}

// Метод для преобразования числа в строку
std::string Decimal::toString() const {
    std::string result(data.rbegin(), data.rend());
    std::transform(result.begin(), result.end(), result.begin(), [](unsigned char c) {
        return c + '0';
    });
    return result;
}
