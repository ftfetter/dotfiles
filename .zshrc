# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="spaceship"
DISABLE_AUTO_TITLE="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-flow
  command-not-found
  zsh-autosuggestions
  zsh-syntax-highlighting
  history
  kubectl
)

source $ZSH/oh-my-zsh.sh

# cat ~/.aws/credentials
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Workspace
WORKSPACE_DIR="~/Workspace"

# ZSH Settings
ZSHRC_PATH="~/.zshrc"

# Golang
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# Java
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-17.0.3.0.7-2.fc36.x86_64
export PATH=$JAVA_HOME/bin:$PATH


# Spaceship Theme customization
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SUFFIX=" "
