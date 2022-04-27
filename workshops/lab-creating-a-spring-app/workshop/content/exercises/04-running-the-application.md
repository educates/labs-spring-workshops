We are now ready to build and test the application.

Change to the ``demo`` sub directory in the terminal.

```terminal:execute
command: cd ~/exercises/demo
```

Then run Maven to start the application.

```terminal:execute
command: ./mvnw spring-boot:run
```

This will also build the application code and can take a couple of minutes the
first time, but once the dependencies are all cached, subsequent builds would be
faster.

Once the application code has been compiled, you should see the application
start, with the output including the banner:

```
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v2.6.7)
```
