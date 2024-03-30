# General Configuration

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Oh My Zsh configuration
# Theme, plugins, and other settings...
ZSH_THEME="robbyrussell"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Java Configuration

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/

# Maven Configuration

export M2_HOME=/usr/bin/mvn
export PATH="$M2_HOME/bin:$PATH"

# Android SDK Configuration
export ANDROID_HOME=/home/jonas/cmdline-tools/latest/
export PATH=$PATH:$ANDROID_HOME/bin




# Gradle Configuration

export GRADLE_HOME=$HOME/.sdkman/candidates/gradle/current
export PATH="$GRADLE_HOME/bin:$PATH"

# Go Configuration

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"

# Node.js Configuration

export PATH="$HOME/npm-global/bin:$PATH"

# Rust Configuration

export PATH="$HOME/.cargo/bin:$PATH"

# Functions, aliases, and other custom scripts...
function run_my_script(){
    source ~/.local/bin/scripts/tmux-sessionizer.sh
}

function run_sessionizer(){
    source ~/.local/bin/scripts/sessionizer.sh
}

function run_with_enter_wrapper() {
    ~/.local/bin/scripts/run_with_enter.sh
}

# Bind Ctrl+T to run the function

zle -N run_my_script
zle -N run_sessionizer
zle -N run_with_enter_wrapper

bindkey "^g" run_with_enter_wrapper
bindkey '^f' run_sessionizer
# bindkey -s ^f "tmux-sessionizer\n"
bindkey '^t' run_my_script
alias nvim='~/squashfs-root/usr/bin/nvim'

# SDKMAN Configuration

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

