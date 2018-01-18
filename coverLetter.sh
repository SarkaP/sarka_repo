#!/bin/bash

#Sarka Cover Letter Script
#v1.1

#SARKA'S FONTS:

reset=$'\e[0m'                            # (works better sometimes)
bold=$(tput bold)                         # make colors bold/bright
red="$bold$(tput setaf 1)"                # bright red text
green=$(tput setaf 2)                     # dim green text
fawn=$(tput setaf 3); beige="$fawn"       # dark yellow text
purple=$(tput setaf 5); magenta="$purple" # magenta text
blink=$(tput blink)                       # blinking text

echo "What's your name?"
read Name 

echo
echo -e "${purple}Hello ${red}$Name${purple}, thank you for your time looking into my application${reset}"
echo 

file="$(<SPcoverLetter.txt)"; 
bytes="${#file}"; 
for ((i=0;i<bytes;i++)); 
do echo -n "${file:i:1}"
sleep 0.1
done
echo ""

echo ""
echo -e "${red}So the real question is: WHY WOULD YOU LIKE TO HIRE ME??? ${reset} \n"
sleep 5

function progress_bar() 
{
    bar=""
    total=10
    [[ -z $1 ]] && input=0 || input=${1}
    x="░▒▓█"
   for i in `seq 1 10`; do
        if [ $i -le $input ] ;then
            bar=$bar$x
        else
            bar="$bar  "
       fi
       sleep 0.2
    done
    pct=$(($input*10))
    echo -ne "Level : [ ${bar} ] (${pct}%) \r"    
    sleep 0.1
    if [ $input -eq 10 ] ;then
        echo -ne '\n'
    fi

}


echo "I LIKE TO PUT MYSELF OUTSIDE OF MY COMFORT ZONES"
progress_bar 9
echo ""
echo ""
sleep 3

echo "TECHNICAL SKILLS"
progress_bar 5
echo ""
echo "Yes, I still need to work on those ..."
echo ""
sleep 3

echo "PASSION FOR LEARNING COOL AND NEW STUFF"
progress_bar 8
echo ""
echo ""
sleep 3

echo "LOVE FOR BREAKING THINGS AND PLAYING AROUND"
progress_bar 9
echo ""
echo ""
sleep 3

echo "ONCE COMMITTED NOTHING STANDS IN MY WAY"
progress_bar 10
echo ""
echo ""
sleep 3

echo "HAVE I WATCHED ALL EPISODES OF MR. ROBOT?"
progress_bar 10
echo ""
echo ""
sleep 3


text="I have never had so much fun writing a cover letter and I believe that this is just where the fun begins. 
So I wonder what it feels like for pen testers when they bypass the logic which is believed to be secure or unbreakable."; 
bytes="${#text}"; 
for ((i=0;i<bytes;i++)); 
do echo -n "${text:i:1}"
sleep 0.1
done
echo ""

echo ""
echo ""
echo -e "${red}${blink}OH $Name, HERE IT COMES ...${reset}"
sleep 4

echo ""
echo "hacking"
echo ""
sleep 2
echo "Initializing"
sleep 2
echo ""
echo "Server hacking module is loading"
sleep 2
echo ""
echo "Server hacking module is ready"
sleep 2
echo ""
echo "Hack module is starting in 5 seconds"
sleep 1
echo ""
echo "4 seconds"
sleep 1
echo ""
echo "3 seconds"
sleep 1
echo ""
echo "2 seconds"
sleep 1
echo ""
echo "1 seconds"
sleep 1
echo ""

echo "${red}${blink}SUCCESSFULLY HACKED!!!${reset}"
sleep 1
echo ""
echo "${blink}PASSWORD ACCEPTED:${reset} token is 45rct3000099998xx885834756376534x"
echo ""
sleep 4

echo ""
echo "Don't worry I was only joking :-). But this is probably the kind of feeling the Penetration Testers get when they make it through"
echo ""
sleep 5


echo "HERE IS SOME MORE INFO ABOUT ME"
echo "I kept it short and sweet, just select a relevant number:"
echo "${blink}${fawn}To exit press any other option${reset}"
echo ""
sleep 2

select me in Work TechnicalSkills Experience Education Languages
do
    case $me in
        "Work")
            echo "Due to my recent lifestlyle changes I am looking for remote work but willing to travel to your office once in a while"
            ;;

        "TechnicalSkills" | "Experience" | "Education")
            echo "Check out my CV this letter is meant to be fun"
            ;;

        "Languages")
            echo -e "I speak ${fawn}English${reset} (I am a former Londoner), \nI am learning ${fawn}Spanish${reset} (because I like it), \nThen ${fawn}Czech${reset} (yes, I come from the beer country) \nand after a few drinks I can understand any language, \nI also speak a bit of ${fawn}Java, SQL, API and now bash${reset}"
            ;;

        *)
            echo "Invalid option. The questionaire will exit now."
            break
            ;;
    esac
done
sleep 1

echo -e "\n${purple}THAT'S ALL $Name!!! \nI hope you've enjoyed my cover letter and if you think I could be the right candidate I would love to hear from you!!! ${reset}"
echo ""
echo ""
sleep 5


file="$(<Graffiti.txt)"; 
bytes="${#file}"; 
for ((i=0;i<bytes;i++)); 
do echo -n "${green}${blink}${file:i:1}${reset}"
sleep 0
done
echo ""
echo ""




