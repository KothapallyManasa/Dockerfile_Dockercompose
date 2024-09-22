root@ip-172-31-35-14:~#
root@ip-172-31-35-14:~# docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
root@ip-172-31-35-14:~#
root@ip-172-31-35-14:~#
root@ip-172-31-35-14:~# docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
root@ip-172-31-35-14:~#
root@ip-172-31-35-14:~#
root@ip-172-31-35-14:~# mkdir docker-demo
root@ip-172-31-35-14:~#
root@ip-172-31-35-14:~#
root@ip-172-31-35-14:~# cd docker-demo/
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# ls
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# git clone https://github.com/amolshete/card-website.git
Cloning into 'card-website'...
remote: Enumerating objects: 45, done.
remote: Counting objects: 100% (45/45), done.
remote: Compressing objects: 100% (44/44), done.
remote: Total 45 (delta 1), reused 45 (delta 1), pack-reused 0 (from 0)
Receiving objects: 100% (45/45), 2.82 MiB | 15.75 MiB/s, done.
Resolving deltas: 100% (1/1), done.
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# ls
card-website
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# nano Dockerfile
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# cat Dockerfile
FROM nginx
COPY card-website /usr/share/nginx/html

root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# cat Dockerfile
FROM nginx
COPY card-website /usr/share/nginx/html

root@ip-172-31-35-14:~/docker-demo# nano Dockerfile
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# cat Dockerfile
FROM nginx
COPY card-website /usr/share/nginx/html
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# docker build -t card-website:v1.1 .
[+] Building 6.1s (7/7) FINISHED                                                                                                                                                                   docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                                         0.0s
 => => transferring dockerfile: 88B                                                                                                                                                                          0.0s
 => [internal] load metadata for docker.io/library/nginx:latest                                                                                                                                              1.4s
 => [internal] load .dockerignore                                                                                                                                                                            0.0s
 => => transferring context: 2B                                                                                                                                                                              0.0s
 => [internal] load build context                                                                                                                                                                            0.1s
 => => transferring context: 6.32MB                                                                                                                                                                          0.1s
 => [1/2] FROM docker.io/library/nginx:latest@sha256:04ba374043ccd2fc5c593885c0eacddebabd5ca375f9323666f28dfd5a9710e3                                                                                        4.2s
 => => resolve docker.io/library/nginx:latest@sha256:04ba374043ccd2fc5c593885c0eacddebabd5ca375f9323666f28dfd5a9710e3                                                                                        0.0s
 => => sha256:88a0a069d5e9865fcaaf8c1e53ba6bf3d8d987b0fdc5e0135fec8ce8567d673e 2.29kB / 2.29kB                                                                                                               0.0s
 => => sha256:a2318d6c47ec9cac5acc500c47c79602bcf953cec711a18bc898911a0984365b 29.13MB / 29.13MB                                                                                                             0.4s
 => => sha256:bbfaa25db775e54ec75dabe7986451cb99911b082d63bbf983ab20fc6f7faaf4 628B / 628B                                                                                                                   0.5s
 => => sha256:04ba374043ccd2fc5c593885c0eacddebabd5ca375f9323666f28dfd5a9710e3 10.27kB / 10.27kB                                                                                                             0.0s
 => => sha256:39286ab8a5e14aeaf5fdd6e2fac76e0c8d31a0c07224f0ee5e6be502f12e93f3 7.47kB / 7.47kB                                                                                                               0.0s
 => => sha256:095d327c79ae6eb03406dd754eb917fbe7009c6a9aa6c0db558f9dea599db8ea 41.88MB / 41.88MB                                                                                                             0.9s
 => => sha256:7bb6fb0cfb2b319dee79e476c11620e7fa47f22ecdedc999e207984f62a4554c 956B / 956B                                                                                                                   0.6s
 => => sha256:0723edc10c178df9245f49c9b8e503c4223a959ee5a072f043d71669132bc5e9 394B / 394B                                                                                                                   0.7s
 => => extracting sha256:a2318d6c47ec9cac5acc500c47c79602bcf953cec711a18bc898911a0984365b                                                                                                                    1.9s
 => => sha256:24b3fdc4d1e3b419643068364b3d4e1b7e280f5a8a3c1e3651e9e67363e6434b 1.21kB / 1.21kB                                                                                                               0.9s
 => => sha256:3122471704d5d924d1f7daac334252487e3c35bfb23163b840954aff355c4a6b 1.40kB / 1.40kB                                                                                                               0.9s
 => => extracting sha256:095d327c79ae6eb03406dd754eb917fbe7009c6a9aa6c0db558f9dea599db8ea                                                                                                                    1.3s
 => => extracting sha256:bbfaa25db775e54ec75dabe7986451cb99911b082d63bbf983ab20fc6f7faaf4                                                                                                                    0.0s
 => => extracting sha256:7bb6fb0cfb2b319dee79e476c11620e7fa47f22ecdedc999e207984f62a4554c                                                                                                                    0.0s
 => => extracting sha256:0723edc10c178df9245f49c9b8e503c4223a959ee5a072f043d71669132bc5e9                                                                                                                    0.0s
 => => extracting sha256:24b3fdc4d1e3b419643068364b3d4e1b7e280f5a8a3c1e3651e9e67363e6434b                                                                                                                    0.0s
 => => extracting sha256:3122471704d5d924d1f7daac334252487e3c35bfb23163b840954aff355c4a6b                                                                                                                    0.0s
 => [2/2] COPY card-website /usr/share/nginx/html                                                                                                                                                            0.2s
 => exporting to image                                                                                                                                                                                       0.1s
 => => exporting layers                                                                                                                                                                                      0.1s
 => => writing image sha256:47d8cae4b784006833284d92b25fd31327fec814ee799777b0d1bb8c7b4a61b2                                                                                                                 0.0s
 => => naming to docker.io/library/card-website:v1.1                                                                                                                                                         0.0s
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# docker images
REPOSITORY     TAG       IMAGE ID       CREATED          SIZE
card-website   v1.1      47d8cae4b784   12 seconds ago   194MB
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# ls
Dockerfile  card-website
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# docker tag card-website:v1.1 mkothapally/card-website:v1.1
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# docker images
REPOSITORY                 TAG       IMAGE ID       CREATED         SIZE
card-website               v1.1      47d8cae4b784   4 minutes ago   194MB
mkothapally/card-website   v1.1      47d8cae4b784   4 minutes ago   194MB
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# docker login

USING WEB-BASED LOGIN
To sign in with credentials on the command line, use 'docker login -u <username>'

Your one-time device confirmation code is: TNMR-CXST
Press ENTER to open your browser or submit your device code here: https://login.docker.com/activate

Waiting for authentication in the browser…

^[[A^[[AWARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credential-stores

Login Succeeded
root@ip-172-31-35-14:~/docker-demo# docker images
REPOSITORY                 TAG       IMAGE ID       CREATED         SIZE
card-website               v1.1      47d8cae4b784   5 minutes ago   194MB
mkothapally/card-website   v1.1      47d8cae4b784   5 minutes ago   194MB
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# docker push mkothapally/card-website:v1.1
The push refers to repository [docker.io/mkothapally/card-website]
0b7cfb60cc3c: Pushed
11de3d47036d: Mounted from library/nginx
16907864a2d0: Mounted from library/nginx
2bdf51597158: Mounted from library/nginx
0fc6bb94eec5: Mounted from library/nginx
eda13eb24d4c: Mounted from library/nginx
67796e30ff04: Mounted from library/nginx
8e2ab394fabf: Mounted from library/nginx
v1.1: digest: sha256:a9d9e4826d8c03311e7dc94d12a6b90dd950bb72b75ff7d0c025a37052338ad4 size: 1989
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# docker run -d -p 80:80 mkothapally/card-website:v1.1
f094b1ffe08c86da9c0e963531b1128b83264acaca3394963f49ab8f13e16e4b
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo# docker ps
CONTAINER ID   IMAGE                           COMMAND                  CREATED         STATUS         PORTS                               NAMES
f094b1ffe08c   mkothapally/card-website:v1.1   "/docker-entrypoint.…"   5 seconds ago   Up 4 seconds   0.0.0.0:80->80/tcp, :::80->80/tcp   loving_chatelet
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo#
root@ip-172-31-35-14:~/docker-demo
