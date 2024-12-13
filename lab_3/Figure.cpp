#include "Figure.h"
#include "Rombe.h"
#include "Pentagon.h"
#include "Hexagon.h"

std::ostream& operator<<(std::ostream& os, const Figure& figure) {
    figure.output(os);
    return os;
}

std::istream& operator>>(std::istream& is, Figure& figure) {
    figure.input(is);
    return is;
}
