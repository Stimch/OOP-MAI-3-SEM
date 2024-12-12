#include <gtest/gtest.h>
#include "Decimal.h"

TEST(DecimalTest, Addition) {
    Decimal num1("12345");
    Decimal num2("67890");
    num1.add(num2);
    EXPECT_EQ(num1.toString(), "80235");
}

TEST(DecimalTest, Subtraction) {
    Decimal num1("1234");
    Decimal num2("678");
    num1.subtract(num2);
    EXPECT_EQ(num1.toString(), "556");
}

TEST(DecimalTest, Multiplication) {
    Decimal num1("1234");
    Decimal num2("5678");
    num1.multiply(num2);
    EXPECT_EQ(num1.toString(), "7006652");
}

TEST(DecimalTest, Division) {
    Decimal num1("6");
    Decimal num2("2");
    num1.divide(num2);
    EXPECT_EQ(num1.toString(), "3");
}
