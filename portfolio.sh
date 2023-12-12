command = "Dummy"
isActive = true
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
        "help")
        HelpCommandExecuted
        ;;
        "exit")
        ExitTerminal
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
    echo " history         View Command history "
    echo " secret          oooo whats this "
    echo " help            You obviously know what this does "
    echo " email           Don't bother to mail me "
    echo " clear           Clear the terminal "
    echo " exit            Exit the terminal "
}

ExitTerminal(){
    isActive=false
}

ExecuteWhoIsCommand(){
    echo "Hey, I'm Mcaupybugs!👋
I'm a software developer and content creator, who builds engaging websites like this on and makes YouTube videos about computer science & software engineering. After graduating with a Bachelor's in Computer Science, I am working professionally as a software engineer in Microsoft. While doing all of that, I documentned my coding journey on YouTube - trying to enlighten the next generation of developers and help them navigate the crazy world that is software development & computer science. I have varied interest over the place and have a lot of hobbies like playing piano, guitar, going to the gym, swimming. I get bored too soon so I keep on picking up new things to do. I am actively looking to go into the freelancing field. Hoping that I would eventually make it big, I am trying to learn a lot right now. See you in the future!"
}

EmptyCommandExecuted(){
    echo "Please enter a command. For a list of commands, type 'help'"
}

CommandNotFound(){
    echo "Command '$command' not found. For a list of commands, type 'help'"
}

Main