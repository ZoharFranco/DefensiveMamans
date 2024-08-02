from typing import List


def build_b_list(a_list: List[str]):
    b_list = []
    for word in a_list:
        if word.startswith('b'):
            b_list.append(word.capitalize())
    return b_list


def oneliner_build_b_list(a_list: List[str]):
    b_list = [word.capitalize() for word in a_list if word.startswith('b')]
    return b_list


def print_o_uppercase(line: str):
    result = ', '.join([word.upper() for word in line.split(' ') if 'o' in word])
    return result
