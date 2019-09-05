while getopts ':nti:p:v' opt
do
case "$opt" in
	'i')ip="${OPTARG}"
		;;
	'p')port="${OPTARG}"
		;;
	'n')nmap_yes=1;
		;;
	't')ping_yes=1;
		;;
	'v')echo "pingnmap version 1.0.0"
		;;
	*)	 echo "Invalid option $opt"
		 echo "Usage : "
		 echo "pingnmap -[n|t[i|p]|v]"
		;;
esac
done

if [ ! -z "$nmap_yes" ] && [ "$nmap_yes" -eq "1" ]
then
	if [ ! -z "$ip" ] && [ ! -z "$port" ]
	then
		nmap -p "$port" "$ip"
	fi
fi

if [ ! -z "$ping_yes" ] && [ "$ping_yes" -eq "1" ]
then
	if [ ! -z "$ip" ]
	then
		ping -c 5 "$ip"
	fi
fi

shift $(( OPTIND -1 )) # processing additional arguments
if [ ! -z "$@" ]
then
	echo "Bogus arguments at the end : $@"
fi
