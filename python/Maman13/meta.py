import importlib.util
import inspect
import os
import types

from fruit import AppleBasket, GreenAppleBasket


def modify_class_method(cls, method_name, additional_code):
    """
    Modify an existing method of a class by adding code from a string using exec.

    Args:
        cls (type): The class whose method will be modified.
        method_name (str): The name of the method to be modified.
        additional_code (str): The additional code to add to the method.
    """
    # Get the existing method
    original_method = getattr(cls, method_name)

    def wrapper(self, *args, **kwargs):
        # Create a local context for exec with 'self', 'args', and 'kwargs'
        local_context = {'self': self, 'args': args, 'kwargs': kwargs}
        # Execute the additional code in the local context
        exec(additional_code, globals(), local_context)
        # Call the original method
        return original_method(self, *args, **kwargs)

    # Replace the existing method with the new wrapper method
    setattr(cls, method_name, types.MethodType(wrapper, cls))


def add_code_to_file_functions():
    file_name = input("Enter python file name: ")
    additional_code = input("Enter a python code: ")

    file_classes = get_classes_from_file(file_name)
    funcs = [(method, cls) for cls in file_classes for _, method in
             inspect.getmembers(cls, predicate=inspect.isfunction)]

    for func, cls in funcs[:3]:
        name_space_class = globals().get(cls.__name__)
        modify_class_method(name_space_class, str(func.__name__), additional_code)

    basket = AppleBasket('red', 2)
    basket.increase()
    print(basket)

    green_basket = GreenAppleBasket(4)
    green_basket.increase()
    green_basket.increase()
    print(green_basket)


def get_classes_from_file(file_path: str):
    """
    Extract class objects from a Python file.

    Args:
        file_path (str): The path to the Python file.

    Returns:
        list: A list containing all class objects defined in the module.
    """
    # Extract the module name from the file name
    module_name = os.path.splitext(os.path.basename(file_path))[0]

    # Create a module spec from the file path
    spec = importlib.util.spec_from_file_location(module_name, file_path)
    if spec is None:
        raise ImportError(f"Cannot find module for file: {file_path}")

    # Create a module object from the spec
    module = importlib.util.module_from_spec(spec)

    # Execute the module in its own namespace
    spec.loader.exec_module(module)

    # Get all classes defined in the module
    classes = inspect.getmembers(module, inspect.isclass)

    # Filter classes defined in the current module (excluding imports)
    defined_classes = [cls[1] for cls in classes if cls[1].__module__ == module_name]

    return defined_classes
