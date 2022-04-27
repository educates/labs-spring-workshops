When run, Spring Boot’s embedded Apache Tomcat server will be used, with it
listening for connections on port 8080 of your local machine.

In this case the Apache Tomcat Server is running in the workshop environment. To
access the application and verify it is working you can instead use the
following URL.


```dashboard:create-dashboard
name: Demo
url: https://demo-{{session_namespace}}.{{ingress_domain}}/hello
```

To verify that handling of URL query string parameters is working use:

```dashboard:reload-dashboard
name: Demo
url: https://demo-{{session_namespace}}.{{ingress_domain}}/hello?name=Amy
```

To shutdown the Apache Tomcat Server you can interrupt it from the command
line.

```terminal:interrupt
session: 1
```

If you want to play a bit more with the demo application before the workshop
session ends, you can make further changes through the editor:

```editor:open-file
file: ~/exercises/demo/src/main/java/com/example/demo/DemoApplication.java
```

and rerun Maven to build your changes and start the application.
