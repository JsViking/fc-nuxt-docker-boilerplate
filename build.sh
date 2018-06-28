set -e

red='\e[21;31m%s\e[0m\n'
green='\e[21;32m%s\e[0m\n'
yellow='\e[21;33m%s\e[0m\n'
blue='\e[21;34m%s\e[0m\n'
magenta='\e[21;35m%s\e[0m\n'
cyan='\e[21;36m%s\e[0m\n'
white='\e[21;97m%s\e[0m\n'

printf "$yellow" "[1/2] >> run docker-compose"
printf "$white" "===================================="
docker-compose -f docker-compose-production.yml down && docker-compose -f docker-compose-production.yml build

printf "$green" "[2/2] >> Starting HTTP Server on port 3333"
printf "$green" "done: >> Navigate to http://127.0.0.1:3333 to see your app running in Docker"
printf "$green" "done: >> Starting backend Server on http://127.0.0.1:3333"
docker-compose -f docker-compose-production.yml up