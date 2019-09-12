from dateutil import tz
from dateutil.parser import parse

ET = tz.gettz('US/Eastern')
CT = tz.gettz('US/Central')
MT = tz.gettz('US/Mountain')
PT = tz.gettz('US/Pacific')

us_tzinfos = {  'CST': CT, 'CDT' : CT,
                'EST': ET, 'EDT' : ET,
                'MST': MT, 'MDT' : MT,
                'PST': PT, 'PDT' : PT}

dt_est = parse('2014-01-02 04:00:00 EST', tzinfos=us_tzinfos)
dt_pst = parse('2016-03-11 16:00:00 PST', tzinfos=us_tzinfos)

print(dt_est)
print(dt_pst)
