## Docker dev avec live reload du navigateur

Si besoin, installer Docker, en fonction de l'OS : [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)

Pour Ubuntu, tuto ici : [Install Docker pour Ubuntu](https://www.notion.so/Docker-299252aaf34c44deadb76a57ce0a93ca)

### Projet existant

```bash
mkdir myProject
cd myProject
git clone git@github.com:marialena31/reactjs-docker-dev.git
cd reactjs-docker-dev
mkdir react-project
```

Copier dans le répertoire *react-project* l'ensemble des fichiers du projet React

```bash
git clone repo@duprojet react-project
```

Lancer les commandes Docker :

```bash
docker-compose up -d --build
```

Votre application est ici :

[http://localhost:3000](http://localhost:3000)

Il suffit de faire une modification dans VScode, cliquer sur enregistrer, et la modification apparait instantanément dans le navigateur.

Pour accéder au container :

```bash
docker-compose exec  node bash
```

### Nouveau projet

```bash
mkdir myProject
cd myProject
git clone git@github.com:marialena31/reactjs-docker-dev.git
cd reactjs-docker-dev
mkdir react-project
cd react-project
```

Création d'un nouveau projet vide avec Create React App et un container Node :

```bash
docker container run --rm -v $(pwd):/react-project/  node:lts npx create-react-app react-project
```

Lancer les commandes Docker :

```bash
cd ..
docker-compose up -d --build
```

Votre application est ici :

[http://localhost:3000](http://localhost:3000)

Il suffit de faire une modification dans VScode, cliquer sur enregistrer, et la modification apparait instantanément dans le navigateur.

Pour accéder au container :

```bash
docker-compose exec  node bash
```