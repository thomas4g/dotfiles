alias quickserver="python -m SimpleHTTPServer"
alias java7="/usr/local/java/jdk1.7.0_67/bin/java"
alias javac7="/usr/local/java/jdk1.7.0_67/bin/javac"
alias sbt="sbt -java-home /usr/local/java/jdk1.7.0_67/"

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
alias rossource='source ~/ros_catkin_ws/install_isolated/setup.bash'
alias ...='cd ../..'
alias sourcebash='source ~/.bashrc'
alias ....='cd ../../../'
