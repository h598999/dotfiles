#!/usr/bin/env bash
#!/usr/bin/env bash
selected=`cat ~/.local/bin/scripts/commands ~/.local/bin/scripts/languages | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read query

if grep -qs "$selected" ~/.local/bin/scripts/languages; then
    query=`echo $query | tr ' ' '+'`
    tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query | less"
else
    tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi



