#повертає True якщо число a ділиться на b без остачі
def div(a,b):

    if a < 0 or b < 0:
        raise error
    bool = False

    if a % b == 0:
        bool = True

    return bool

