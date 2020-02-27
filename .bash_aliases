alias quickserver="python -m SimpleHTTPServer"
alias java7="/usr/local/java/jdk1.7.0_67/bin/java"
alias javac7="/usr/local/java/jdk1.7.0_67/bin/javac"
alias java9="/usr/local/java/jdk1.9.0/bin/java"
alias javac9="/usr/local/java/jdk1.9.0/bin/javac"

alias sagu="sudo apt-get update"
alias sagi="sudo apt-get install"

compile_junit() {
	javac -cp .:/home/thomas/bin/hamcrest-core-1.3.jar:/home/thomas/bin/junit-4.11.jar "$1"
}
run_junit() {
	java -cp .:/home/thomas/bin/hamcrest-core-1.3.jar:/home/thomas/bin/junit-4.11.jar org.junit.runner.JUnitCore "$1"
}
alias junitc=compile_junit
alias junit=run_junit

alias git-rm-del="git ls-files --deleted -z | xargs -0 git rm"
alias reload-apache="sudo service apache2 reload"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias rossource='source ~/ros_catkin_ws/install_isolated/setup.bash'
alias sourcebash='source ~/.bashrc'
alias gohome='cd && clear'
alias goschool="cd ~/Copy/gt/current/"

run_logisim() {
    java -jar ~/bin/logisim-generic-2.7.1.jar "$1" &> /dev/null &
}

alias logisim=run_logisim
alias latexclean='rm *.aux *.out *.log'
def_open() {
    gnome-open "$1" &> /dev/null &
}
alias open=def_open
alias xresmerg='xrdb -merge ~/.Xresources'
alias go1331='cd ~/copy/gt/cs1331/'

alias clipboard='xclip -sel clip'
alias nocaps='dumpkeys | sed "s/\s*58\s*=\s*Caps_Lock/ 58 = Control/" | loadkeys'

alias prettylog="git log --pretty=format:'%C(yellow)%h %Cred%ar(%ad) %Cblue%an%Cgreen%d %Creset%s' --date=short"
alias prettyjson='python -m json.tool'

alias man="PAGER=most man"

alias cat="bat"
