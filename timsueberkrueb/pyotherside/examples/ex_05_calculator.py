from math import *


def calculate(expression):
    """
    NOTE: This is obviously not how you should do it properly,
    we're just trying to keep everything as simple as possible for
    the purpose of this example.*
    """
    try:
        return eval(expression, globals())
    except Exception as error:
        return str(error)
