## Docker dev avec live reload du navigateur

Si besoin, installer Docker, en fonction de l'OS : [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)

Pour Ubuntu, tuto ici : [Install Docker pour Ubuntu](https://www.notion.so/Docker-299252aaf34c44deadb76a57ce0a93ca)

### Nouveau projet

```bash
mkdir myProject
cd myProject
git clone git@github.com:marialena31/docker-pwa-studio.git
cd docker-pwa-studio
mkdir pwa-studio-fundamentals
cd pwa-studio-fundamentals
```

Création d'un nouveau projet Pwa Studio :

```bash
docker container run -it --rm -v $(pwd):/pwa-studio-fundamentals/  node:lts yarn create @magento/pwa pwa-studio-fundamentals
```

Valider les informations demandées au fur et à mesure. Sélectionner pour les réponses aux questions :  
@magento/venia-concept,  
2.4-develop,  
CE branintree  
sandbox,  
YARN  
 et Yes (pour les dépendances)  

Lancer les commandes Docker :

```bash
cd ..
sudo chown -R $USER:$USER pwa-studio-fundamentals
docker-compose up -d --build
```

Votre application est ici :

[http://localhost:10000](http://localhost:10000)

Il suffit de faire une modification dans VScode, cliquer sur enregistrer, et la modification apparait instantanément dans le navigateur.

Pour accéder au container :

```bash
docker-compose exec  node bash
```
