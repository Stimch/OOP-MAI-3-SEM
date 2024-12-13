#include "Rombe.h"
#include "Pentagon.h"
#include "Hexagon.h"
#include <iostream>

int main() {
    Rombe rombe;
    std::cin >> rombe;
    rombe.calculateGeometricCenter();
    std::cout << "Площадь ромба: " << rombe.calculateArea() << "\n";
    std::cout << rombe;

    Pentagon pentagon;
    std::cin >> pentagon;
    pentagon.calculateGeometricCenter();
    std::cout << "Площадь пятиугольника: " << pentagon.calculateArea() << "\n";
    std::cout << pentagon;

    Hexagon hexagon;
    std::cin >> hexagon;
    hexagon.calculateGeometricCenter();
    std::cout << "Площадь шестиугольника: " << hexagon.calculateArea() << "\n";
    std::cout << hexagon;

    return 0;
}
