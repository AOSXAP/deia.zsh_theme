# deia zsh_theme

is_repo(){
        if ! git ls-files >& /dev/null; then
          echo "git:(null)";
        else
          echo "$(git_prompt_info)";
        fi
}

cpu(){
        grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print int(usage*100)/100}'
}

PROMPT='
%B%{$FG[119]%}%n%{$f%}%b :: %B%{$FG[119]%}%2~%{$f%}%b $(is_repo) usage:$(cpu)%% %B§%b '

RPROMPT='cc:%? %B%{$FG[119]%}%*%{$f%}%b '
