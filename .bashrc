# GLOBALS
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=~/Library/Python/2.7/bin/:$PATH


# Locals
NODE_VERSION=`node -v`

# Aliases
alias ll='ls -la'

# Functions
function motd {
  echo "+----------------------+---------------= "
  echo "| Current node version | $NODE_VERSION"
  echo "+----------------------+---------------= "
  echo
}

function updateProfile {
  source ~/.bash_profile
}

function restartFinder {
  killall Finder /System/Library/CoreServices/Finder.App
}

function showHiddenFiles {
  defaults write com.apple.finder AppleShowAllFiles YES
  restartFinder
}

function doNotShowHiddenFiles {
  defaults write com.apple.finder AppleShowAllFiles NO
  restartFinder
}


# Start
clear
motd

# DOCKER_STATUS=`docker-machine status`

# if [ "$DOCKER_STATUS" == "Stopped" ]; then
#   docker-machine start
# fi

# eval $(docker-machine env default)
# echo Docker env ready

