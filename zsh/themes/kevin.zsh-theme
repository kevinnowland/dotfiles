# Based on bira theme

setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

# Check the UID
if [[ $UID -ne 0 ]]; then # normal user
  PR_USER='%F{22}%n%f'
  PR_USER_OP='%F{22}%#%f'
  PR_PROMPT='%f➤ %f'
else # root
  PR_USER='%F{red}%n%f'
  PR_USER_OP='%F{red}%#%f'
  PR_PROMPT='%F{red}➤ %f'
fi

# Check if we are on SSH or not
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  PR_HOST='%F{cyan}@%F{red}%M%f' # SSH
else
  PR_HOST='%f' # no SSH
fi


#local return_code="%(?..%F{red}%? ↵%f)"
local user_host="${PR_USER}${PR_HOST}"
local current_dir="%F{130}%~%f"
local git_branch='$(git_super_status)'

# the actual prompt
PROMPT=" ${user_host} ${current_dir} ${git_branch}
$PR_PROMPT"


}
