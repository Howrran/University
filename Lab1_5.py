
def unlist(numbers, result = []):

    for number in numbers:
        if type(number) == list:
            unlist(number)
        else:
            result.append(number)

    return result

