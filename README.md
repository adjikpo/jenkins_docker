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
