# Create an Online Version of BLIS

## Design

### Make it work on Linux

The current version of BLIS uses Windows-bundled applications to function as a desktop application. These applications are tightly coupled (as the Server2Go package) and cannot be easily, independently updated.

Meanwhile, Linux servers are ubiquitous in a cloud setting. They are cheaper than Windows VMs on [Azure](https://azure.microsoft.com/en-us/pricing/calculator/) and [AWS](https://aws.amazon.com/ec2/pricing/on-demand/). Additionally, Linux is the only first-class supported option on [DigitalOcean](https://www.digitalocean.com/), which is a platform that our partner specifically mentioned using for testing.

Making modifications to BLIS such that it can run on _both_ a Linux environment and the traditional bundled Windows approach is therefore a priority.

### Containerize it

When BLIS was created, it was common for developers to install the webserver (Apache2), the runtime (PHP) and the database (MySQL) themselves and them drop the PHP application into a directory where the webserver could access it.

Modern containerization technology such as [Docker](https://www.docker.com/) has allowed us to specify exactly how we want our application to be run and build the container that contains our entire application stack ourselves, ahead of time. This has benefits not only in setup of the application, but also security, as the application is isolated from the rest of the system.

After the application is able to run in a container, something like [docker compose](https://docs.docker.com/compose/) can be used to configure and manage the deployment of the application as well as other standalone components (such as the database). Platforms such as DigitalOcean [have a specification](https://docs.digitalocean.com/products/app-platform/how-to/deploy-from-container-images/) that allow an application to be deployed via container in just a few clicks (at a cost.) Containers are supported in all major cloud platforms, and even with self-hosted servers, they are easy to manage.

Therefore, we will be providing a Docker container that runs BLIS.

## Create a devcontainer for developing BLIS in a Linux-like environment

**Complete!**

## Create a release-ready Dockerfile for deploying BLIS

**Complete!**

## Create a GitHub Action for automatically creating BLIS deployment packages from the repository

Even though BLIS is packaged as a container, we could create a `.zip` file that bundles the necessary scripts, extra files (database seed files), etc. needed to run a containerized version of BLIS.

This can be done by adding the files to the repo, and creating a GitHub Action that packages them together with every release.

## Create documentation about how to deploy BLIS as a container

With the deployment package created (above), documentation needs to be added to make use of it and deploy the container to a server somewhere.