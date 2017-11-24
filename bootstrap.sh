#!/bin/sh
echo  -n "Install reactionetes into a minikube cluster locally (ctrl-c now to stop if this not what you intend."
sleep 1; echo  -n "."; sleep 1; echo  -n "."
sleep 1; echo "."
sleep 1

check_cmd () {
  if ! type "$1" > /dev/null; then
      echo "$1 not found"
      echo "please install $1"
  fi
}

check_cmd make
check_cmd git

echo Reactionetes
TMP_DIR=$(mktemp -d --suffix='.reactionetes')
cd $TMP_DIR
git clone https://github.com/joshuacox/reactionetes.git
cd reactionetes
make autopilot

cd
rm -Rf $TMP_DIR