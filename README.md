# Haskell anywhere

Working with haskell in a container with all dependencies and cabal preinstalled. Workdir setup with volume to host.

## Setup

1. Copy your haskell scripts into the scripts folder
2. Execute `docker compose up -d` to start the container in the background
3. Execute `docker ps` to get the id of the container we just started
4. Execute `docker attach <container_id>` to attach your terminal to the containers shell
5. In the directory you'll find yourself starting out, you'll find all your files and folders that were in the _scripts_ folder on your host.

You will be able to work on your haskell scripts on your host. Because of the volume, the script in the contianer will immediately update. When you execute your script or build the executable, it will always be of the newest version.

## Work in the container

For changing your .hs scripts, you simply work on them on your host machine (the ones in the scripts folder) and save them. After saving, they should be the same in the container.

You can work with the interpreter shell (ghci) or compile the scripts with `ghc yourscript.hs` and it will generate a linux executable file for you.
