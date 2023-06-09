# OpenAI Suggest Zsh Plugin

OpenAI Suggest es un plugin para Zsh que proporciona sugerencias de comandos Unix basadas en inteligencia artificial (IA) a través de la API de OpenAI. Cuando estás escribiendo un comando en tu terminal, simplemente presiona `Ctrl+L` para obtener una lista de sugerencias generadas por IA.

## Índice

- [Descripción](#descripción)
- [Instalación](#instalación)
- [Uso](#uso)
- [Dependencias](#dependencias)
- [Configuración de la Clave de la API de OpenAI](#configuración-de-la-clave-de-la-api-de-openai)
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
   
## Uso

Después de instalar el plugin, simplemente escribe parte de un comando en tu terminal y presiona `Ctrl+L`. Esto mostrará una lista de sugerencias de comandos generados por IA. Usa las teclas de flecha para navegar por las sugerencias y presiona `Enter` para seleccionar un comando. El comando seleccionado se colocará en tu línea de comandos.

## Dependencias

- Zsh
- Oh-My-Zsh
- [fzf](https://github.com/junegunn/fzf)
- [jq](https://stedolan.github.io/jq/)
- [curl](https://curl.se/)
- Clave API de OpenAI (necesitarás una clave de API válida de OpenAI y configurarla en el script `suggesai`)

Para poder utilizar el plugin ZshGPT, es necesario tener instaladas ciertas dependencias. A continuación, se describen los pasos para instalar estas dependencias en diferentes sistemas operativos:

### Ubuntu/Debian

Abre la terminal y ejecuta el siguiente comando:

```sh
sudo apt-get install jq curl fzf
```

### macOS

Si estás utilizando Homebrew, puedes ejecutar:

```sh
brew install jq curl fzf
```

### Windows (WSL)

Si estás utilizando Windows Subsystem for Linux (WSL) con una distribución basada en Debian/Ubuntu, sigue los pasos de Ubuntu/Debian mencionados anteriormente.

## Configuración de la Clave de la API de OpenAI

Para que el plugin funcione, necesitas una clave de API de OpenAI. Una vez que tengas la clave, debes configurarla como una variable de entorno:

1. Abre tu archivo de configuración de la terminal (`~/.zshrc`).
2. Añade la siguiente línea, reemplazando `tu_clave_api` con tu clave de API real:
   
   ```sh
   export OPENAI_API_KEY="tu_clave_api"
   ```

Ahora deberías estar listo para usar el plugin ZshGPT en tu terminal.

## Contribuciones

Las contribuciones son bienvenidas! Por favor, crea un issue o un pull request para cualquier mejora o corrección que desees realizar.

## Licencia

Este proyecto está licenciado bajo los términos de la Licencia MIT.
