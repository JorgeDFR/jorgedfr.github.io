# Development Environment

## C++

```sh
sudo apt install build-essential gcc-doc gdb gdb-doc -y
sudo apt install cmake cmake-doc cmake-qt-gui -y
```

**Note:** `*-doc` packages in Linux install additional documentation, usually,
in PDF or HTML format, available in `/usr/share/doc/`.

## Doxygen

```sh
sudo apt install doxygen doxygen-doc doxygen-gui doxygen-latex -y
```

## Terminator

```sh
sudo apt install terminator -y
```

## Visual Studio Code

### Installation

1. Download :material-microsoft-visual-studio-code: Visual Studio Code
   (available at
   [https://code.visualstudio.com/download](https://code.visualstudio.com/download))
2. Execute the following commands
    ```sh
    cd ~/Downloads/
    sudo apt install ./code_1.101.2-1750797935_amd64.deb -y
    ```

### Setup

1. Open :material-microsoft-visual-studio-code: Visual Studio Code
    - GNOME menu
    - Terminal (`$ code` | `$ code .` to open the VS Code in the current
      directory)
2. :material-view-grid-plus-outline: Extensions
   (**++ctrl+shift+x++** | File :material-arrow-right: Preferences
   :material-arrow-right: Extensions)
    - :simple-cplusplus: ms-vscode.cpptools-extension-pack
        - ms-vscode.cpptools
        - ms-vscode.cpptools-themes
        - ms-vscode.cmake-tools
    - :material-language-python: ms-python.python
    - :material-language-python: ms-python.debugpy
    - :material-language-python: ms-python.vscode-pylance
    - :simple-doxygen: cschlosser.doxdocgen
    - :material-file-xml-box: :material-xml: redhat.vscode-xml
    - :simple-yaml: redhat.vscode-yaml
    - :material-file-pdf-box: tomoki1207.pdf
