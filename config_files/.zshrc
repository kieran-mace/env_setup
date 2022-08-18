# Add Picnic and Brew Paths

# To install useful key bindings and fuzzy completion:
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

source /usr/local/opt/zinit/zinit.zsh

### End of Zinit's installer chunk

### User Definied zsh plugins
zinit load zsh-users/zsh-completions
zinit load zsh-users/zsh-syntax-highlighting
zinit load zsh-users/zsh-history-substring-search
zinit load zsh-users/zsh-autosuggestions
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit load agkozak/zsh-z
# zinit load b4b4r07/enhancd
zinit snippet OMZ::plugins/iterm2/iterm2.plugin.zsh
zinit snippet OMZ::plugins/vscode/vscode.plugin.zsh
zinit snippet OMZ::plugins/rsync/rsync.plugin.zsh
zinit snippet OMZ::plugins/gcloud/gcloud.plugin.zsh

# Load powerlevel10k theme
zinit ice depth=1; zinit light romkatv/powerlevel10k
### End User Defined zsh plugins

### ZSH options

setopt AUTO_CD
setopt NO_CASE_GLOB
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt EXTENDED_HISTORY
SAVEHIST=5000
HISTSIZE=2000
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

setopt CORRECT
setopt CORRECT_ALL


### Alias etc
# Self update
#zinit self-update

# Plugin update
#zinit update

# Start autocomplete
autoload -Uz compinit
compinit

zinit cdreplay -q   


alias zshconfig="code ~/.zshrc"

