struct FileAttributes
{
	unsinged int ReadOnly: 1;
	unsinged int Hidden: 1;
}

struct Date
{
	unsigned int Year		: 13 ; // 2^13 = 8192	(enough for 0-2019 year)
	unsigned int Month	: 4  ; // 2^4 = 16 		(enough for 1-12 month)
	unsigned int Day		: 5  ; // 2^5 = 32		(enough for 31 days / month)
}

Date d;

d.Year = 2019;
d.Month = 7;
d.Day = 22;

std::cout << "Year:" << d.Year 	<< std::endl <<
				"Month:" << d.Month 	<< std::endl <<
				"Day:" 	<< d.Day		<< std::endl;
