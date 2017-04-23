"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Operations for prime numbers
    """

    def __init__(self, number):
        self.num = number

    def is_prime(self, num_int):
        """function(a) -> boolean"""
        self.num = num_int
        if self.num < 2:
            return False
        if self.num % 2 == 0:
            return False
        acum = 3
        while acum < self.num:
            if self.num % acum == 0:
                return False
            acum += 2
        return True
