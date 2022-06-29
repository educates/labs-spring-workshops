Since the focus of this workshop is to demonstrate how easy it is to take a
Spring Boot application and run it in a container we have already prepared
the source code for the application we will use.

The Spring Boot application project being used was created using the
[start.spring.io](https://start.spring.io/) web site. The only changes from
the base Spring Boot configuration is to add the Spring Web dependency.

If you want to review the configuration for the application on the
start.spring.io web site you can use the URL:

```dashboard:open-url
url: https://start.spring.io/#!type=maven-project&language=java&platformVersion=2.7.1&packaging=jar&jvmVersion=17&groupId=com.example&artifactId=demo&name=demo&description=Demo%20project%20for%20Spring%20Boot&packageName=com.example.demo&dependencies=web
```

In addition to adding the Spring Web dependency we have modified the demo
application to implement a simple hello world application.

```editor:open-file
file: ~/exercises/demo/src/main/java/com/example/demo/DemoApplication.java
```

Everything else about the Spring Boot application is unchanged and no special
steps have been carried out in order to prepare it ready for being
containerized.
