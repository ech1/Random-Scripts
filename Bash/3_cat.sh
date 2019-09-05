cat -v 3_cat.sh
cat -vE 3_cat.sh
cat --number < 3_cat.sh
echo
echo "Hello worlds" > hello.txt
echo "Howdy worlds" > howdy.txt

gzip hello.txt
gzip howdy.txt

cat hello.txt.gz howdy.txt.gz > greetings.txt.gz
cat greetings.txt.gz
gunzip greetings.txt.gz
cat greetings.txt

grep foo 3_cat.sh
grep -v foo 1_hello_world.sh
