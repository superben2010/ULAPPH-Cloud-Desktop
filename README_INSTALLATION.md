# ULAPPH INSTALLATION

## Basic Commands
Usual commands when everything is setup already in your local Windows machine. Updating the source codes and deploying them is easy.

#### Updating ULAPPH source codes in Golang, JS, HTML, CSS etc
`$ ulapph`
`$ dev`
`$ pwd`
`~/go/src/github.com/edwindvinas/ULAPPH-Cloud-Desktop`

#### Deploying the updated source codes in Google Cloud
`$ dep`
`$ deploy`

## Pre-requisites
### If you're developing in a Windows machine & Google Cloud....
- Golang
- Git Bash for Windows
- Github account
- Google Cloud Platform account
- gcloud CLI
- IBM Watson account

## One-time setup

#### Setting up bash_profile
`$ vim ~/.bash_profile`

```
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc
alias ulapph="cd /c/Users/edwin.d.vinas && source setalias_ulapph.sh"
alias deploy="dep && ./quick_install_ulapph_GAE_ulapph_demo.sh"
alias build="dev && go build main.go && rm main.exe"
```

#### Cloning the needed repositories
```
$ mkdir $GOPATH/go/src/github.com/YOURGITHUBNAME
$ cd $GOPATH/go/src/github.com/YOURGITHUBNAME

$ git clone https://github.com/edwindvinas/ULAPPH-Cloud-Desktop.git
$ git clone https://github.com/ulapph/quick-install-ulapph.git
$ git clone https://github.com/ulapph/ULAPPH-Cloud-Desktop-Configs.git
$ git clone https://github.com/ulapph/ULAPPH-Cloud-Desktop-Shell-Installer.git
$ git clone https://github.com/ulapph/ULAPPH-Cloud-Desktop-AI.git
$ git clone https://github.com/ulapph/ULAPPH-Cloud-Desktop-Watson.git
```

#### Setting up alias
```
$ cd ~
$ vim setalias_ulapph.sh

#!/bin/sh
alias dep='cd /c/Users/edwin.d.vinas/go/src/github.com/edwindvinas/quick-install-ulapph'
alias dev='cd /c/Users/edwin.d.vinas/go/src/github.com/edwindvinas/ULAPPH-Cloud-Desktop'
alias cfg='cd /c/Users/edwin.d.vinas/go/src/github.com/edwindvinas/ULAPPH-Cloud-Desktop-Configs'
alias ctl='cd /c/Users/edwin.d.vinas/go/src/github.com/edwindvinas/ULAPPH-Cloud-Desktop-Shell-Installer'
alias ai='cd /c/Users/edwin.d.vinas/go/src/github.com/edwindvinas/ULAPPH-Cloud-Desktop-AI'
alias ws='cd /c/Users/edwin.d.vinas/go/src/github.com/edwindvinas/ULAPPH-Cloud-Desktop-Watson'
```

## Setting up ULAPPH YAML Configurations...
TBD

## Setting up Google Cloud Platform...
TBD

## Setting up IBM Watson Assistant...
TBD