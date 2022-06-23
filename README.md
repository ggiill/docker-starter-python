# Docker Starter Python

This repo will get you up and running with a basic containerized Python app setup.

If you're here, you might not be familiar with a bunch of these concepts, or may have never run code via a container before. Containers solve the problem of "hm... well, it works on my computer...".

In a containerized project, in addition to any application/scripting code, you'll also declaratively define the steps to create the environment needed to develop/test/run your application. This:

- Allows others to easily get up and running on a project with minimal setup
- Avoids issues that arise from differences in environment setup (especially in Python, where the environment is by default global)
- Enables your application to easily be deployed (Kubernetes, VMs, Lambdas, etc.)

## What do these files do?

### `.gitignore`

This file is used to ignore different artifacts that Python projects usually create during their lifetime. This was copied from GitHub's default `.gitignore` files, which can be found [here](https://github.com/github/gitignore/blob/main/Python.gitignore).

### `Dockerfile`

This file declaritively details the steps to reproduce the environment for this application. We start with a Python base image ([link](https://hub.docker.com/_/python)) and list the additional steps to install our application's required packages and copy the actual application code into the container's `/opt/app` directory. This is also the working directory when we run `make shell` and enter the container in interactive mode.

### `Makefile`

While these are typically used for more advanced compilation and deployment tasks, using a `Makefile` simplifies the Docker build and run steps. We don't have to memorize different options/flags - we just have easy targets (`build` and `run`) which abstract that from us.

### `README.md`

This file!

### `requirements.txt`

You might be familiar with this type of file, but you might also be used to installing packages à la carte via `pip install <package>`. Using a `requirements.txt` allows us to specify all the Python packages and versions that our application will need to run.

## Steps

1. Clone this repo and rename it per your project
2. Add your code
3. Edit the `Makefile` and `requirements.txt` files as necessary

Then:

- To build an image of this app, run `make build`
- To launch an interative shell inside the container, run `make shell`
