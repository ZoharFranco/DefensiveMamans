# This is a sample Python script.
from typing import Callable, Dict, List

from fruit import AppleBasket, GreenAppleBasket
from lsts import build_b_list, oneliner_build_b_list, print_o_uppercase
from meta import add_code_to_file_functions
from pros import create_profession


def test_ex1():
    print('Ex1:')
    a_list = ['apple', 'banana', 'carrot', 'black', 'box']

    print(f"Input: {a_list}")
    print(f"build_b_list: {build_b_list(a_list)}")
    print(f"oneliner_build_b_list: {oneliner_build_b_list(a_list)}")

    line = 'This line contains words and some have the letter o'
    print(f"Input: {line}")
    print(f"print_o_uppercase: {print_o_uppercase(line)}")


def test_ex2():
    print('\nEx2:')
    basket = AppleBasket('red', 2)
    basket.increase()
    print(basket)

    green_basket = GreenAppleBasket(4)
    green_basket.increase()
    green_basket.increase()
    print(green_basket)


def test_ex3():
    print('\nEx3:')
    # create_profession()
    add_code_to_file_functions()


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    test_ex1()
    test_ex2()
    test_ex3()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
