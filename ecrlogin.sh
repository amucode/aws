
#!/bin/bash
docker build -t spinnaker-ecs .
docker images
docker tag spinnaker-ecs:latest 12345678912.dkr.ecr.us-west-1.amazonaws.com/spinnaker-ecs:dev
sh /root/token.sh > /root/ecrtoken
token=$(cat /root/ecrtoken)
echo $token |docker login -u AWS https://12345678912.dkr.ecr.us-west-1.amazonaws.com --password-stdin
docker push 12345678912.dkr.ecr.us-west-1.amazonaws.com/spinnaker-ecs:dev
