Once the container image has been built, you can verify it's existence by
running:

```terminal:execute
session: 1
command: docker images
```

The output should be similar to:

```
REPOSITORY                 TAG        IMAGE ID       CREATED        SIZE
paketobuildpacks/run       base-cnb   5ba4e30d4d97   12 hours ago   88.3MB
paketobuildpacks/builder   base       d2c5ca64f842   42 years ago   841MB
spring-demo                latest     5217d4540355   42 years ago   261MB
```

The container image for our application is `spring-demo`. The other container
images are the Paketo builder image and the runtime base image upon which our
application image was built.

To start the containerized application run:

```terminal:execute
command: docker run --rm -p 8080:8080 spring-demo
```

The startup messages should include the banner:

```
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v2.6.7)
```
