# docker_smashing_dashboard
This builds a docker image for a Smashing (aka Dashing) dashboard

```bash
docker build . --tag codingbee/smashing_image:0.1
```

You can check the new image has been created by running:

```bash
$ docker image ls
REPOSITORY                 TAG                 IMAGE ID            CREATED             SIZE
codingbee/smashing_image   v0.1                5e899a596d4f        29 minutes ago      146MB
alpine                     3.8                 3f53bb00af94        2 weeks ago         4.41MB
```

Here's how to push to Docker hub:

```bash
docker push codingbee/smashing_image:0.1
```
