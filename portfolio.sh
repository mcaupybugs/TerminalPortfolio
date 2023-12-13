command = "Dummy"
isActive = true
underline=`tput smul`
nounderline=`tput rmul`

Main(){
    StartSession
}

StartSession(){
    PrintBanner
    PrintOpeningLine
    while $isActive;
    do
        AwaitCommand
        ExecuteCommand
    done
}

PrintBanner(){
echo "        __I__"
echo "    .-'\"  .  \"'-."
echo "  .'  / . ' . \  '."
echo " /_.-..-..-..-..-._\ .---------------------------------."
echo "          #  _,,_   ( Aur bhai barish hogi kya aaj kya lgta h )"     
echo "          #/``    ``\ /'  ---------------------------------'"         
echo "          / / 6 6\ \""
echo "          \/\  Y /\/       /\-/\""
echo "          #/ ``'U`` \         /a a  \               _ "       
echo "        , (  \   | \     =\ Y  =/-~~~~~~-,_____/ )"
echo "        |\|\_/#  \_/       '^--'          ______/"
echo "        \/'.  \  /'\         \           /"
echo "         \    /=\  /         ||  |---'\  \""
echo "         /____)/____)       (_(__|   ((__|"
echo "          __  ___                             __"                    
echo "         /  |/  /________ ___  ______  __  __/ /_  __  ______ ______"
echo "        / /|_/ / ___/ __``  / / / / __ \/ / / / __ \/ / / / __ ``/ ___/"
echo "       / /  / / /__/ /_/ / /_/ / /_/ / /_/ / /_/ / /_/ / /_/ (__  ) "
echo "      /_/  /_/\___/\__,_/\__,_/ .___/\__, /_.___/\__,_/\__, /____/  "
echo "                             /_/    /____/            /____/        "

}

PrintOpeningLine(){
    echo "For the list of available commands, type help"
}

AwaitCommand(){
    read -p ">>> " command
}

ExecuteCommand(){
    case $command in 
        "")
        EmptyCommandExecuted
        ;;
        "whois")
        ExecuteWhoIsCommand
        ;;
        "whoami")
        ExecuteWhoAmICommand
        ;;
        "video")
        ExecuteVideoCommand
        ;;
        "help")
        HelpCommandExecuted
        ;;
        "exit")
        ExitTerminal
        ;;
        "social")
        ExecuteSocialCommand
        ;;
        "projects")
        ExecuteProjectCommand
        ;;
        "clear")
        ExecuteClearCommand
        ;;
        *)
        CommandNotFound
        ;;
    esac
}

HelpCommandExecuted(){
    echo " whois           Who is Mcaupybugs? "
    echo " whoami          Who are you? "
    echo " video           View YouTube Videos "
    echo " social          Display Social Networks "
    echo " projects        View Coding Projects "
    echo " help            You obviously know what this does "
    echo " clear           Clear the terminal "
    echo " exit            Exit the terminal "
}

ExitTerminal(){
    isActive=false
}

ExecuteClearCommand(){
    clear
}

ExecuteWhoIsCommand(){
    echo "Hey, I'm Mcaupybugs!👋
I'm a software developer and content creator, who builds engaging websites like this on and makes YouTube videos about computer science & software engineering. After graduating with a Bachelor's in Computer Science, I am working professionally as a software engineer in Microsoft. While doing all of that, I documentned my coding journey on YouTube - trying to enlighten the next generation of developers and help them navigate the crazy world that is software development & computer science. I have varied interest over the place and have a lot of hobbies like playing piano, guitar, going to the gym, swimming. I get bored too soon so I keep on picking up new things to do. I am actively looking to go into the freelancing field. Hoping that I would eventually make it big, I am trying to learn a lot right now. See you in the future!"
}

ExecuteProjectCommand(){
    echo "----------------------------------------------------"
    echo "Project Name        | Mars Rover"
    echo "Project Description | Mars rover stimulation which mimics a rover on mars and implements various algorithms such as A*, Breath first search. The rover tries to search for the destination using the best possible path on the given algorithm. Get hands on experience using the link to live website."
    echo "Project URL         | ${underline}https://mars-rover-algo.azurewebsites.net/${nounderline}"
    echo "----------------------------------------------------"
    echo "----------------------------------------------------"
    echo "Project Name        | Taimur Ka Dhaba"
    echo "Project Description | Web Development project using the MERN stack with database integration with Mongo.DB and other API features implemented"
    echo "Project URL         | ${underline}https://taimur-ka-dhaba.azurewebsites.net/${nounderline}"
    echo "----------------------------------------------------"
    echo "----------------------------------------------------"
    echo "Project Name        | Compile Me"
    echo "Project Description | This is an online editor with the ability to run and compile programs of java and c++ language. This was made in an attempt to impersonate the online coding platforms available"
    echo "Project URL         | ${underline}https://compile-me.azurewebsites.net/${nounderline}"
    echo "----------------------------------------------------"
}

ExecuteWhoAmICommand(){
    echo "Knock Knock! Who are you? This paradox! We never know who we are, but, we constantly keep finding ourselves."
}

ExecuteVideoCommand(){
    echo "Checkout the channel here ${underline}https://www.youtube.com/@mcaupybugs${nounderline}"
}

ExecuteSocialCommand(){
    echo " youtube         ${underline}youtube/mcaupybugs${nounderline}"
    echo " twitter         ${underline}twitter/mcaupybugs${nounderline}"
    echo " linkedin        ${underline}linkedin/mcaupybugs${nounderline}"
    echo " github          ${underline}github/mcaupybugs${nounderline}"
}

EmptyCommandExecuted(){
    echo "Please enter a command. For a list of commands, type 'help'"
}

CommandNotFound(){
    echo "Command '$command' not found. For a list of commands, type 'help'"
}

Main