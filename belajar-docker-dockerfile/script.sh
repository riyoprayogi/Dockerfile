# FROM Instruction
docker build -t dockerriyo/from from

docker image ls

# RUN Instruction
docker build -t dockerriyo/run run

docker build -t dockerriyo/run run --progress=plain --no-cache


# CMD Instruction
docker build -t dockerriyo/command command

docker image inspect dockerriyo/command

docker container create --name command dockerriyo/command

docker container start command

docker container logs command


# LABEL Instruction
docker build -t dockerriyo/label label

docker image inspect dockerriyo/label


# ADD Instruction
docker build -t dockerriyo/add add

docker container create --name add dockerriyo/add

docker container start add

docker container logs add


# COPY Instruction
docker build -t dockerriyo/copy copy

docker container create --name copy dockerriyo/copy

docker container start copy

docker container logs copy


# INGNORE instruction
docker build -t dockerriyo/ignore ignore

docker container create --name ignore dockerriyo/ignore

docker container start ignore

docker container logs ignore


# EXPOSE instruction
docker build -t dockerriyo/expose expose

docker image inspect dockerriyo/expose

docker container create --name expose -p 8080:8080 dockerriyo/expose

docker container start expose

docker container ls

docker container logs expose

docker container stop expose