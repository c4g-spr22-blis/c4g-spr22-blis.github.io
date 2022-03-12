# Running BLIS on a Cloud Provider

There is experimental support for running BLIS on a cloud provider in the form of a Docker container!

## Prerequisites

1. You must already have an account with a cloud provider to continue, and you must create a virtual machine running a relatively modern Linux distribution. For testing, Digital Ocean and the minimum-level $5/month droplet was used.

2. You must [install Docker Engine](https://docs.docker.com/engine/install/) for the Linux distro you are running.

3. You must [install Docker Compose](https://docs.docker.com/compose/). Either V1 (`docker-compose`) or V2 (`docker compose`) will work, but for this example, **docker-compose V1 will be used.**

## Running BLIS

1. Clone the BLIS repository

    ```bash
    $ git clone https://github.com/c4g-spr22-blis/BLIS.git
    ```

1. Change to the BLIS Docker directory

    ```bash
    $ cd BLIS/docker
    ```

1. Initialize BLIS!

    ```bash
    $ docker-compose up -d
    ```

These commands will set up two containers:

1. The `app` container: This contains all of the BLIS source code, as well as the Apache2 web server and PHP 5.6 runtime.
1. The `db` container: This contains the MySQL 5.7 database. The files inside the `docker/database/` folder are executed when the container is created, providing the seed data that the BLIS database needs to start.