# BLIS in a Devcontainer

!!! danger
    This is experimental! Not everything will work exactly as it does on Windows.

Devcontainers are [a feature of Visual Studio Code](https://code.visualstudio.com/docs/remote/create-dev-container) that allow you to specify your development environment as a Docker container develop inside of it as if you were running the tools on your computer directly.

The `c4g-blis-spr22/BLIS` repository has a `.devcontainer` configuration already specified, so you can develop BLIS on any computer that can run Docker and Visual Studio Code.

!!! warning
    Although you can run BLIS in a devcontainer, this is only for development. For running a real copy of BLIS, you should still use the traditional Windows-based approach.

## Prerequisites

* `git`
* [Visual Studio Code](https://code.visualstudio.com/)
* Docker: on Mac and Windows, [Docker Desktop](https://www.docker.com/products/docker-desktop) will work

## Instructions

1. Clone the BLIS repository to your computer:

    ```
    $ git clone https://github.com/c4g-spr22-blis/BLIS.git
    ```

1. Open the folder in Visual Studio Code
1. A pop-up that says something like "This folder contains a devcontainer configuration" will appear. Click the button to open the folder in a container.
1. If that does not appear, open the command palette (Ctrl-Shift-P or Cmd-Shift-P) and find "Open folder in container" and select the BLIS folder.
1. Once the container is started, the ports should forward automatically. You can see apache2 running if you click the "Ports" tab on the bottom (if the bottom panel is not open, use Ctrl-` (backtick) to open it)

You can then browse BLIS in your normal browser by visiting `http://localhost:80` (substituting 80 for another port, depending on what port VS Code has mapped to apache2.)