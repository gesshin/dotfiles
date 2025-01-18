# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    brew
    colored-man-pages
    zsh-autosuggestions
    dotenv
)

# Aliases
alias dc="docker-compose --env-file .env.arm64"

source $ZSH/oh-my-zsh.sh

# Homebrew env variables
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

# LinkSquares - AWS configuration
aws-sso-util login --profile staging
export AWS_ACCESS_KEY_ID="$(aws-sso-util credential-process --profile staging | jq -r '.AccessKeyId')"
export AWS_SECRET_ACCESS_KEY="$(aws-sso-util credential-process --profile staging | jq -r '.SecretAccessKey')"
export AWS_SESSION_TOKEN="$(aws-sso-util credential-process --profile staging | jq -r '.SessionToken')"

# LinkSquares - Brahma Image
export IMAGE=099694023434.dkr.ecr.us-east-1.amazonaws.com/image-builder-repository:brahma-stable

# LinkSquares - Parvati Build Outside Container
export PARVATI_IMAGE=099694023434.dkr.ecr.us-east-1.amazonaws.com/image-builder-repository:parvati-stable
export DATABASE_PORT=5433
export REDIS_URL="redis://redis:6380/0"
export WEBPACKER_DEV_SERVER_HOST=localhost
export PORT=3002
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export NPM_REGISTRY__GITHUB__PAT=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
export BUNDLE_RUBYGEMS__PKG__GITHUB__COM=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

# LinkSquares - NVM Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/libpq/bin:$PATH"

# LinkSquares - Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"

# Starship Prompt
eval "$(starship init zsh)"
