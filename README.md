## mc paper docker

adicione o arquivo do servidor paper na raiz do projeto

### subir para o dockerhub

docker build . -t {nome}

docker tag macpaper:{version} {name}/mcpaper:{version}

docker push {name}/mcpaper:{version}