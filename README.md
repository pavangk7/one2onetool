# one2onetool
https://github.com/pavangk7/one2onetool/actions/runs/3060224623



# This workflow will build and push a new container image to Amazon ECR,
# and then will deploy a new task definition to Amazon ECS, when there is a push to the "staging" and "release" branch pipeline will trigger automatically.
#
# 1. Created an ECR repository to store project images images.
#    `aws ecr create-repository --repository-name one2onetool --region us-east-2`.
#
# 2. Created the  ECS cluster type is fargate
#    ECS Cluster: ecs-fargate-master and ecs-fargate-staging
#
# 3. Created the ecs service one2onetool

# 4. Created the  ECS task definition as a JSON file (tesk-definition.json) in repository.
#
#    `aws ecs register-task-definition --generate-cli-skeleton`.
#
# 5. Stored an IAM user access key in GitHub Actions secrets named `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
#    Creatd IAM policies (ECR_FullAccess,AmazonECS_FullAccess,ecsTaskExecutionRole) and assiged to user one2onetool
#
# 6. Workflow consist of three stages
#
# a) BUILD 
#    Run the npm ci and npm install 
# b) Securtiy Scan: secrutiy scan the code for any vunarblites 
# c) Create the Deploy 
# Once build sucessfull next is to deploy the docker image into ECS Fargate, create the docker image with tag and  pushing image to ECR , based on # # new image tag append the images and tag in ECS Task defination
#
# d)if the branch staging it will trigger the pipeline with staging task defination of input DATA_FILE with Questions-test.json other wise will    # # #trigger # the with DATA_FILE of Questions.json
#after sucessfull deployment url can  access using public ip 
#  Staging ip: http://52.3.221.24:3000
#  Release ip: http://54.90.120.224:3000

github url: https://github.com/pavangk7/one2onetool
