//
// Created by Zohar Franco on 28/07/2024.
//

#ifndef MAMAN11_MY_VEC_H
#define MAMAN11_MY_VEC_H


#include <iostream>
#include <cmath>

class Vector3D {
private:
    double x, y, z;

public:
    // Constructors
    Vector3D();

    Vector3D(const Vector3D &other);

    Vector3D(double x, double y, double z);

    static Vector3D RandomVector3D();

    // Getters and Setters
    double getX() const;

    double getY() const;

    double getZ() const;

    void setX(double newX);

    void setY(double newY);

    void setZ(double newZ);

    // Attributes
    double magnitude() const;

    // Operators

    Vector3D &operator=(const Vector3D &other);

    Vector3D operator+(const Vector3D &other) const;

    Vector3D operator-(const Vector3D &other) const;

    Vector3D operator*(double scalar) const;

    double operator*(const Vector3D &other) const;

    Vector3D operator/(double scalar) const;

    // Advanced actions
    double dot(const Vector3D &other) const;

    // Show
    void print() const;

    friend std::ostream &operator<<(std::ostream &os, const Vector3D &vec);

    static double getRandomDouble();
};

#endif //MAMAN11_MY_VEC_H
