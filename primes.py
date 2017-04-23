"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Operations for prime numbers
    """

    def is_prime(self, num_int):
        """function(a) -> boolean"""
        if num_int < 2:
            return False
        if num_int % 2 == 0:
            return False
        acum = 3
        while acum < num_int:
            if num_int % acum == 0:
                return False
            acum += 2
        return True
