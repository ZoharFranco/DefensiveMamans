#include <random>
#include "my_vec.h"
#include "vecs_all.h"




// Constructors

Vector3D::Vector3D() : x(0), y(0), z(0) {}

Vector3D::Vector3D(const Vector3D &other) = default;

Vector3D::Vector3D(double x, double y, double z) : x(x), y(y), z(z) {}


// Getters and Setters

double Vector3D::getX() const { return x; }

double Vector3D::getY() const { return y; }

double Vector3D::getZ() const { return z; }

void Vector3D::setX(double newX) { this->x = newX; }

void Vector3D::setY(double newY) { this->y = newY; }

void Vector3D::setZ(double newZ) { this->z = newZ; }


// Attributes

double Vector3D::magnitude() const {
    return std::sqrt(x * x + y * y + z * z);
}

//  Operators

Vector3D &Vector3D::operator=(const Vector3D &other) {
    if (this == &other) {
        return *this; // Handle self-assignment
    }
    x = other.x;
    y = other.y;
    z = other.z;
    return *this; // Return *this to allow chaining
}

Vector3D Vector3D::operator+(const Vector3D &other) const {
    return {x + other.x, y + other.y, z + other.z};
}

Vector3D Vector3D::operator-(const Vector3D &other) const {
    return {x - other.x, y - other.y, z - other.z};
}

Vector3D Vector3D::operator*(double scalar) const {
    return {x * scalar, y * scalar, z * scalar};
}

double Vector3D::operator*(const Vector3D &other) const {
    return this->dot(other);
}

Vector3D Vector3D::operator/(double scalar) const {
    return {x / scalar, y / scalar, z / scalar};
}


// Advanced actions

double Vector3D::dot(const Vector3D &other) const {
    return x * other.x + y * other.y + z * other.z;
}


// Show
void Vector3D::print() const {
    std::cout << "Vector3D(" << x << ", " << y << ", " << z << ")\n";
}

// Overload << operator for printing
std::ostream &operator<<(std::ostream &os, const Vector3D &vec) {
    os << "Vector3D(" << vec.x << ", " << vec.y << ", " << vec.z << ")";
    return os;
}

Vector3D Vector3D::RandomVector3D() {
    return {getRandomDouble(), getRandomDouble(), getRandomDouble()};
}

double Vector3D::getRandomDouble() {
    // Create a random device to seed the random number generator
    std::random_device rd;
    // Use Mersenne Twister as the random number generator engine
    std::mt19937 gen(rd());
    // Define a uniform real distribution in the range [min, max)
    std::uniform_real_distribution<> dis(0, 10);

    // Generate and return a random double
    return dis(gen);
}




