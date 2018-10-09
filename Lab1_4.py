#Повертає масив простих чисел з відрізку від a до b
def rangemassiv(a,b):
    if a > b:
        a,b = b, a
    result = []
    bool = False
    for i in range(a,b):
        for j in range(2,i):
            if i % j == 0:
                break
        else:
            result.append(i)
    try:
        print (result[0])
    except IndexError:
        bool = True

    if bool == True:
        raise NoSimpleDigits

    return result