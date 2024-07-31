//
// Created by Zohar Franco on 28/07/2024.
//

#ifndef MAMAN11_VECS_ALL_H
#define MAMAN11_VECS_ALL_H


#include <iostream>
#include <cmath>
#include "my_vec.h"

class NamedVector3D {
private:
    std::string name;
    Vector3D vector;

public:
    // Constructors
    NamedVector3D();

    NamedVector3D(const Vector3D &vector, std::string &name);

    NamedVector3D(const NamedVector3D &other);

    // Operators
    NamedVector3D &operator=(const NamedVector3D &other);

    // Getters and Setters
    Vector3D getVector() const;

    std::string getName() const;


    void setVector(const Vector3D &newVector);

    void setName(const std::string &newName);


    // Show
    void print() const;

    friend std::ostream &operator<<(std::ostream &os, const NamedVector3D &vec);
};

// Static functions
NamedVector3D getNamedVector3DByName(const NamedVector3D *array, int size, std::string &name);

NamedVector3D *createNamedVector3DList(int size);


#endif //MAMAN11_VECS_ALL_H
