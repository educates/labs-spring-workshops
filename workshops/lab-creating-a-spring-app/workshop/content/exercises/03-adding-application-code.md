After the new Spring Boot project is downloaded you would start modifying the
code to your needs.

From the editor, traverse to the sub directory `src/main/java/com/example/demo`
which was created under the `demo` project directory and open the file
`DemoApplication.java`. Select all the code in the file.

```editor:select-matching-text
file: ~/exercises/demo/src/main/java/com/example/demo/DemoApplication.java
description: ""
text: "package com.example.demo"
after: 999
```

Replace the existing code with the following code:

```editor:replace-text-selection
file: ~/exercises/demo/src/main/java/com/example/demo/DemoApplication.java
text: |-
    package com.example.demo;

    import org.springframework.boot.SpringApplication;
    import org.springframework.boot.autoconfigure.SpringBootApplication;
    import org.springframework.web.bind.annotation.GetMapping;
    import org.springframework.web.bind.annotation.RequestParam;
    import org.springframework.web.bind.annotation.RestController;

    @SpringBootApplication
    @RestController
    public class DemoApplication {
        public static void main(String[] args) {
            SpringApplication.run(DemoApplication.class, args);
        }

        @GetMapping("/hello")
        public String hello(@RequestParam(value = "name", defaultValue = "World") String name) {
            return String.format("Hello %s!", name);
        }  
    }
```            

The `hello()` method we’ve added is designed to take a string parameter called
`name`, and then combine this parameter with the word `"Hello"` in the code.
This means that if you set your name to `"Amy"` in the request, the response
would be `"Hello Amy"`.

The `@RestController` annotation tells Spring that this code describes an
endpoint that should be made available over the web.

The `@GetMapping("/hello")` tells Spring to use our `hello()` method to answer
requests that get sent to the URL path `/hello`.

Finally, the `@RequestParam` is telling Spring to expect a name value in the
request, but if it’s not there, it will use the word `"World"` by default.
