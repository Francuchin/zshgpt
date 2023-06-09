# OpenAI Suggest Zsh Plugin

OpenAI Suggest es un plugin para Zsh que proporciona sugerencias de comandos Unix basadas en inteligencia artificial (IA) a través de la API de OpenAI. Cuando estás escribiendo un comando en tu terminal, simplemente presiona `Ctrl+L` para obtener una lista de sugerencias generadas por IA.

## Índice

- [Descripción](#descripción)
- [Instalación](#instalación)
- [Uso](#uso)
- [Dependencias](#dependencias)
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)


![demo](demo.gif)

## Descripción

Este plugin se basa en Zsh y utiliza OpenAI para generar sugerencias de comandos Unix. Está diseñado para ayudarte a escribir comandos Unix de forma más eficiente mostrándote una lista de sugerencias de comandos que puedes seleccionar.

## Instalación

1. Clona este repositorio en la carpeta de plugins personalizados de oh-my-zsh:

   ```sh
   git clone https://github.com/Francuchin/zshgpt.git ~/.oh-my-zsh/custom/plugins/openai_suggest
   ```

2. Agrega `openai_suggest` a tu lista de plugins en `~/.zshrc`:

   ```sh
   plugins=(... openai_suggest)
   ```

3. Copia el script `suggesai` a `/usr/local/bin` y dale permisos de ejecución:

   ```sh
   sudo cp ~/.oh-my-zsh/custom/plugins/openai_suggest/suggesai /usr/local/bin/
   sudo chmod +x /usr/local/bin/suggesai
   ```

4. Reinicia tu terminal o ejecuta `source ~/.zshrc`.

5. Agrega la siguiente línea, reemplazando `your_api_key` con su clave API real:
   
   ```sh
   export OPENAI_API_KEY="your_api_key"
   ```
   
## Uso

Después de instalar el plugin, simplemente escribe parte de un comando en tu terminal y presiona `Ctrl+L`. Esto mostrará una lista de sugerencias de comandos generados por IA. Usa las teclas de flecha para navegar por las sugerencias y presiona `Enter` para seleccionar un comando. El comando seleccionado se colocará en tu línea de comandos.

## Dependencias

- Zsh
- Oh-My-Zsh
- [fzf](https://github.com/junegunn/fzf)
- [jq](https://stedolan.github.io/jq/)
- [curl](https://curl.se/)
- Clave API de OpenAI (necesitarás una clave de API válida de OpenAI y configurarla en el script `suggesai`)

## Contribuciones

Las contribuciones son bienvenidas! Por favor, crea un issue o un pull request para cualquier mejora o corrección que desees realizar.

## Licencia

Este proyecto está licenciado bajo los términos de la Licencia MIT.
