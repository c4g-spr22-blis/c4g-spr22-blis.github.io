# BLIS on Windows

BLIS was originally developed to run on Windows using a discontinued project called Server2Go. This packages Apache2, MySQL, PHP, and Firefox together into a package that can be run all at once on a desktop computer.

!!! info "See Also"

    * [Design and Implementation of a Basic Laboratory Information System for Resource-Limited Settings](https://smartech.gatech.edu/bitstream/handle/1853/34792/monu_ruban_201005_mast.pdf)
    * [Server2Go - Portable Web Server](https://pendriveapps.com/server2go-portable-webserver/)

This is the primary way that end-users are still using BLIS. You can still run BLIS this way to develop it.

## Prerequisites

Installing command-line tools can be done with a Windows package manager such as [Scoop](https://scoop.sh/).

* `git` 

## Instructions

!!! warning
    These instructions are subject to change.

1. Clone the BLIS repository to your computer:

    ```
    $ git clone https://github.com/c4g-spr22-blis/BLIS.git
    ```

1. Download the latest version of [BLISRuntime.zip](https://github.com/c4g-spr22-blis/BLISRuntime/archive/refs/heads/main.zip) archive
1. Unzip BLISRuntime.zip into the BLIS repository directory
1. Run `BLIS.exe`

The bundled Firefox will start and you can use BLIS normally, or make changes to files in the `htdocs/` directory.