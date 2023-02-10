local ret_status="%(?:%{$fg_bold[green]%}𝄢:%{$fg_bold[red]%}𝄢%s)"
# PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

PROMPT='${ret_status}%{$fg[green]%}%p %{$fg[blue]%}%c %{$reset_color%}$(git_super_status) % %{$reset_color%}'
