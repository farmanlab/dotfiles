export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator

function gitco() {
    command git fetch --all;
    command git checkout -b $1 remotes/$2;
    command git push $3 $1;
    command git branch -u $3/$1; 
}

function gitcm() {
    command git commit --am $1;
}

function gitrm() {
    command git rebase remotes/origin/master;
}

function gitdel-merged() {
    command git checkout $1; git branch --merged|egrep -v '\*|develop|master'|xargs git branch -d;
}

alias gradleref='./gradlew build --refresh-dependencies'
alias gradlelib='./gradlew assembleRelease uploadArchives'
alias adbrestart='adb kill-server; adb start-server'
alias ls='ls -G'
