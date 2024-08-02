import random


class Profession:
    def __init__(self, description: str):
        self.description = description


class Engineer(Profession):
    def __init__(self, description: str):
        super().__init__(description)


class Technician(Profession):
    def __init__(self, description: str):
        super().__init__(description)


class Politician(Profession):
    def __init__(self, description: str):
        super().__init__(description)


class ElectricalEngineer(Engineer):
    def __init__(self, description: str):
        super().__init__(description)


class ComputrsEngineer(Engineer):
    def __init__(self, description: str):
        super().__init__(description)


class MechanicalEngineer(Engineer):
    def __init__(self, description: str):
        super().__init__(description)


class User:
    def __init__(self, name: str, profession: Profession):
        self.name = name
        self.profession = profession


def create_profession():
    class_name = input("Please enter the name of new class:")
    class_parent_name = input("Please enter the name of base class:")
    class_method = input(f"Please enter name of new method for class {class_name}:")
    class_attr = input(f"Please enter name of new attribute for class {class_name}:")

    class_parent = globals().get(class_parent_name)

    if not class_parent:
        print(f"Not exist parent class {class_parent}")
        return

    # Create the class dynamically using `type`
    dynamic_class = type(class_name, (class_parent,),
                         {class_method: lambda x: print(x), class_attr: random.randint(1, 10)})

    print(f"Class {class_name} created with base class: {class_parent.__name__}")
    print(f"Class.__name__ is: {dynamic_class.__name__}")
    print(f"Class.__dict__ is: {dynamic_class.__dict__}")
