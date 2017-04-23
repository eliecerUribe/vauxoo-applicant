"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Basic operations with list: + and *
    """

    def sum(self, num_list):
        """function(array) -> sum of its elements"""
        acum = 0
        for index, value in enumerate(num_list):
            acum += value
        return acum
