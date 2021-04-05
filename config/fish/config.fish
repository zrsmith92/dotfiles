# Cargo
set -x PATH "$HOME/.cargo/bin" $PATH

fish_vi_key_bindings

configure_drone

# Starship theme
starship init fish | source

# Fend
set -x FEND $HOME/src/commure/fend
set -x PATH "$FEND/bin" $PATH

# Java
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)

# Android SDK
set -x PATH "$HOME/Library/Android/sdk/platform-tools/" $PATH
set -x ANDROID_HOME $HOME/Library/Android/sdk

# Agnoster Theme Config
set -g DEFAULT_USER zsmith

# Personal Bin
set -x PATH "$HOME/bin" $PATH

# Conda
source $HOME/miniconda3/etc/fish/conf.d/conda.fish

# RVM
set -x PATH "$HOME/.rvm/bin" $PATH
rvm default

# Krew

set -x PATH "$HOME/.krew/bin" $PATH

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Flutter

set -x PATH "$HOME/flutter/bin" $PATH

# TEMPORARY fix to get old version of rust-openssl to build
# The version a transitive dep of bend depends on is too old for the version that ships with mac
# Should hopefully fixed by updating transitive dep
# set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -x OPENSSL_DIR /usr/local/opt/openssl

# Aliases

alias kc=kubectl
alias g=git

# Increase max open file descriptors
ulimit -S -n 2048
