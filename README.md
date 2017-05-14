# spigot-buildtools-docker
Minimal alpine-based image to build Spigot and CraftBukkit jars with one command


## How to use
Run this in your favorite console:  
`docker run -it --rm -v $(pwd)/build:/build tennox/spigot-buildtools-alpine`  
-> .jar files will be in the the **build/** directory.

To build a specific Revision:  
`docker run -it --rm -v $(pwd)/build:/build -e REVISION=1.11 tennox/spigot-buildtools-alpine`

It will always download the latest BuildTools on run - so you don't have to worry about that.
