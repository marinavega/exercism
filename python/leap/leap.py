def is_leap_year(year):
    if _divisible_by_4(year):
        if _divisible_by_100(year) and not _divisible_by_400(year):
            return False
        return True
    else:
        return False


def _divisible_by_4(year):
    return year % 4 == 0

def _divisible_by_100(year):
    return year % 100 == 0

def _divisible_by_400(year):
    return year % 400 == 0
