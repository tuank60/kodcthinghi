from datetime import datetime
from dateutil.relativedelta import relativedelta

def dateFuture(date, yearAdd):
    return date + relativedelta(years=+ yearAdd)

def date2str(date):
    return date.strftime('%d/%m/%Y')