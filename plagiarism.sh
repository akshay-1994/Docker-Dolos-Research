#!/bin/bash
echo "Pass the language as an arument to this script. Dolos works on following langauages - javascript, python, java, c, c#, bash"
while getopts ":f:l:p:h:" r; do
	case "${r}" in
	f ) # process file
	  filename="$OPTARG"
	  ;;
	l ) # process language
	  lang="$OPTARG"
	  ;;
	p ) # select platform
	  platform="$OPTARG"
	  ;;
        h ) 
	  echo "The script requires a filename (-f), language (-l) (javascript, python, java, c, c#, bash) to test and platform (-p)(linux or mac_m1)"
	  ;;
esac
done

if [[ "$platform" == "mac_m1" ]]
then
   docker run -dit --name docker_dolos -v ${PWD}/$filename:/dolos/repos.lst 3zculprit/research_dolos_macosx_m1:latest sh -c "/dolos/autoplagiarism.sh -l $lang -f /dolos/repos.lst"
   sleep 10
   docker exec docker_dolos /usr/local/bin/lt --port 3000 --subdomain culprit &
   sleep 2
elif [[ "$platform" == "linux" ]]
then
   docker run -dit --name docker_dolos -v ${PWD}/$filename:/dolos/repos.lst 3zculprit/research_dolos_linux:latest sh -c "/dolos/autoplagiarism.sh -l $lang -f /dolos/repos.lst"
   sleep 10
   docker exec docker_dolos /usr/local/bin/lt --port 3000 --subdomain culprit &
   sleep 2	
else
   echo "Provide a platform between mac_m1 or linux"
fi
