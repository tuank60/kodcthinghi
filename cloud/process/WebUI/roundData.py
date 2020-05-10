def roundDF(df):
    if df is None:
        return "N/A"
    else:
        return round(df, 2)
def roundPoF(pof):
    if pof is None:
        return "N/A"
    else:
        return round(pof,5)
def roundFC(fc):
    if fc is None:
        return "N/A"
    else:
        return round(fc,2)
def roundMoney(money):
    if money is None:
        return "N/A"
    else:
        return round(money,0)
def convertDF(df):
    if df <= 2:
        return "1"
    elif df <= 20:
        return "2"
    elif df <= 100:
        return "3"
    elif df <= 1000:
        return "4"
    else:
        return "5"