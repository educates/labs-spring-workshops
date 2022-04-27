Normally to create your Spring Boot application you would go to the
start.spring.io web site, however for this workshop we have integrated the web
site into a tab of the workshop session dashboard. This is done so that rather
than downloading the Spring Boot application you create with it to your own
local machine, it will download it into the workshop environment.

Select the **Initializr** tab in the workshop session dashboard.

```dashboard:open-dashboard
name: Initializr
```

For this workshop leave in place the defaults for all the Java language and
project metadata fields on Spring Initializr as the workshop is scripted to
expect the project name to be `demo`.

Now click on **Add Dependencies**, search for and add the following
dependencies:

* `Spring Web`{{copy}}

We are ready to generate the Spring Boot application code. Remember you need to
be using the Spring Initializr integrated into the workshop session dashboard.

Click on **Create**.

This should send you back to the terminal and you can see where the Spring Boot
application was downloaded and extracted into the workshop environment.

If you were using the start.spring.io web site, rather than seeing a **Create**
button you will see a button labelled **Generate**, which would instead download
the source code as an archive to your local machine where you would then unpack
it to use it.
