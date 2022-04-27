When run, Spring Boot’s embedded Apache Tomcat server will be used, with it
listening for connections on port 8080 of your local machine. This port was
exposed to the local machine when `docker run` was used to start the
application.

In this case the Apache Tomcat Server is running in the workshop environment. To
access the application and verify it is working you can instead use the
following URL.

```dashboard:create-dashboard
name: Demo
url: https://demo-{{session_namespace}}.{{ingress_domain}}/hello
```

To shutdown the Apache Tomcat Server you can interrupt it from the command
line.

```terminal:interrupt
session: 1
```
