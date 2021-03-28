# Jenkins_docker
### Principal contributor : [Arthur][A]

[A]:https://github.com/adjikpo

## 📋 Requirements
- 🛠Make
- 🐳Docker
---------------------------------------------------------
## 🎉 Building your app

### with docker
1. Launch the command  `make help` or `make` generate list of targets with descriptions
2. Build the docker and project environment
    ```bash
    $ make env 
    ```
    - add your port on the docker-compose.override.yml

3. Build the docker & the app
    ``` bash

    $ make docker
    ```
4. Stop the app
    ``` bash

    $ make stop
    ```
5. Run bash in the jenkins container
    ``` bash

    $ make exec
    ```
---------------------------------------------------------
## Initialisation of jenkins

1. Browse to http://localhost:8080 (or whichever port you configured for Jenkins when installing it) and wait until the Unlock Jenkins page appears.

![setup-jenkins-01-unlock-jenkins-page](https://user-images.githubusercontent.com/44362825/112753431-ee149900-8fd7-11eb-8715-e0aa321a4084.jpg)


2. From the terminal, use unlock command 
    ``` bash

    $ make unlock
    ```
    ![Screen Capture_select-area_20210328151556](https://user-images.githubusercontent.com/44362825/112753629-9a567f80-8fd8-11eb-8c4a-995c9b7a20bc.png)

3. On the Unlock Jenkins page, paste this password into the Administrator password field and click Continue.

4. After unlocking Jenkins, the Customize Jenkins page appears. Here you can install any number of useful plugins as part of your initial setup.

    Click one of the two options shown:

    -  `Install suggested plugins` - to install the recommended set of plugins, which are based on most common use cases.

    - `Select plugins to install` - to choose which set of plugins to initially install. When you first access the plugin selection page, the suggested plugins are selected by default.

5.  Finally, after customizing Jenkins with plugins, Jenkins asks you to create your first administrator user.

    -  When the Create First Admin User page appears, specify the details for your administrator user in the respective fields and click Save and Finish.

    - When the Jenkins is ready page appears, click Start using Jenkins.
    
        Notes:

        - This page may indicate Jenkins is almost ready! instead and if so, click Restart.

        -  If the page does not automatically refresh after a minute, use your web browser to refresh the page manually.

    - If required, log in to Jenkins with the credentials of the user you just created and you are ready to start using Jenkins

## Jenkinks Documentation
Where to find it : [Jenkins Docs][D]

[D]:https://www.jenkins.io/doc/book/using/
