//
// Created by HPC on 28/07/2024.
//

#include "vecs_all.h"


// Constructors
NamedVector3D::NamedVector3D() : vector(), name() {}

NamedVector3D::NamedVector3D(const NamedVector3D &other) = default;

NamedVector3D::NamedVector3D(const Vector3D &vector, std::string &name) : name(name), vector(vector) {}

// Operators
NamedVector3D &NamedVector3D::operator=(const NamedVector3D &other) {
    if (this == &other) {
        return *this; // Handle self-assignment
    }
    vector = other.vector;
    name = other.name;
    return *this; // Return *this to allow chaining
}


// Getters and Setters

Vector3D NamedVector3D::getVector() const {
    return this->vector;
}

std::string NamedVector3D::getName() const {
    return this->name;
}

void NamedVector3D::setVector(const Vector3D &newVector) {
    this->vector = newVector;
}

void NamedVector3D::setName(const std::string &newName) {
    this->name = newName;
}


void NamedVector3D::print() const {

}

std::ostream &operator<<(std::ostream &os, const NamedVector3D &vec) {
    os << "Name - " << vec.name
       << " Vector3D(" << vec.vector.getX() << ", " << vec.vector.getY() << ", " << vec.vector.getZ() << ")";
    return os;
}


NamedVector3D getNamedVector3DByName(const NamedVector3D *array, int size, std::string &name) {


    for (int i = 0; i < size; i++) {
        NamedVector3D currentVector = array[i];
        if (currentVector.getName() == name) {
            return currentVector;
        }
    }
    return {};
}

NamedVector3D *createNamedVector3DList(int size) {
    auto *lst = new NamedVector3D[size];
    std::string name;
    Vector3D vector;

    for (int i = 0; i < size; i++) {
        std::cout << "Enter vector " << i << " name:";
        std::getline(std::cin, name);
        vector = Vector3D::RandomVector3D();
        lst[i] = NamedVector3D(vector, name);
    }

    return lst;
}

