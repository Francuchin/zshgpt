# oh-my-zsh/plugins/openai/openai.plugin.zsh

# Define la función openai_suggest que llamará a nuestro script
openai_suggest() {
    # Obtiene el comando actual desde el búfer de comandos
    local current_command=${BUFFER}

    # Llama a nuestro script con el comando actual, elimina las líneas vacías
    local selection=$(bash /usr/local/bin/suggesai "$current_command" | sed '/^$/d' | fzf --reverse --height 40% --preview 'echo -e "Comando: \033[3m$(echo {} | sed -e "s/ #.*//")\033[23m\nExplicación: \033[3m$(echo {} | sed -e "s/.*# //")\033[23m"' --preview-window=wrap --layout=reverse --info=inline)

    # Extrae solo la parte del comando antes del primer "#"
    selection=$(echo "$selection" | sed 's/ #.*$//')

    # Si se ha seleccionado algo, ponlo en el búfer de comandos
    if [ -n "$selection" ]; then
        BUFFER=$selection
        CURSOR=$#BUFFER
    fi

    # Redibuja el indicador de comandos
    zle reset-prompt
}

# Define la función como un widget de Zsh
zle -N openai_suggest

# Establece el atajo de teclado Ctrl+L para llamar a nuestro widget
bindkey '^l' openai_suggest
