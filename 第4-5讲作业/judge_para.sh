# judge_canshu() {

#             if [ $# -ne 0 ];then
#                             echo -e "\033[42mOK\033[0m"
#             else
#                             echo -e "\033[41mFAILED\033[0m"

#             fi
# }
# judge_canshu 1;


# fmax(){
#     if [ $1 -lt $2 ]; then 
#         echo "$2"
#     else
#         echo "$1"
# }
# fmax 1 2;

# read -p "input" a b
# calc(){
#     if ![[ "$a" =~ ^[0-9]+$ && "$b" =~ ^[0-9]+$ ]]
#     then
#         echo "error"
#         exit 2
#     fi
#     echo "$a + $b = $[a+b]"
# 	echo "$a - $b = $[a-b]"	
# 	echo "$a * $b = $[a*b]"	
# 	echo "$a / $b = $[a/b]"	
# 	echo "$a % $b = $[a%b]"	
# }
# calc 1 2

# i=0
# while read line
# do
#     ..
# done 
# echo