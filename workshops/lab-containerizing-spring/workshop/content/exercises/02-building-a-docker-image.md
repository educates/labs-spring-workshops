To run the Spring Boot application as a container, we need to create a container
image, also historically known as a docker image.

The format of a container image is no longer docker specific and has been
standardized under the umbrella of the [Open Container
Initiative](https://opencontainers.org/). This means you are not restricted to
using the `docker` application to build container images.

Because of this standardization, and in order to make the task of creating a
container image from a Spring Boot application easier the Maven
`spring-boot:build-image` command is made available. This enables you to create
the required container image without needing to know how to use a `Dockerfile`
to describe how the container image should be built.

To create the container image using the Maven `spring-boot:build-image` command
first change to the ``demo`` sub directory where the application source code
is located.

```terminal:execute
command: cd ~/exercises/demo
```

Now run Maven to build the container image.

```terminal:execute
command: ./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=spring-demo
```

In order to perform the build the `spring-boot:build-image` command will make
use of [Paketo Buildpacks](https://paketo.io/). This is all handled under the
covers for you, so you do not need to know the exact mechanism used.

Also be aware that since the build of the application is itself being run in a
container it can't take advantage of any Maven cache in your local user home
directory. The `spring-boot:build-image` command will however make use of the
docker image cache to store away artefacts of prior builds, so subsequent builds
should still run quicker than the initial build.
