# https://docs.rancherdesktop.io/how-to-guides/hello-world-example/

# Example 1 
# https://docs.rancherdesktop.io/how-to-guides/hello-world-example#example1---build-image--run-container

# Create a folder
mkdir -p ../hello-world
cd ../hello-world

# Create a blank Dockerfile
    # On Linux, You can use below command to create a blank Dockerfile

touch Dockerfile
# Populate the Dockerfile with the command below
echo "FROM alpine" >> Dockerfile
echo "CMD [\"echo\", \"Hello World!!\"]" >> Dockerfile

nerdctl build --tag helloworld:v1.0 .
nerdctl images | grep helloworld
nerdctl run --rm helloworld:v1.0


# Example 2 
# https://docs.rancherdesktop.io/how-to-guides/hello-world-example#example2---build-image--deploy-container-to-kubernetes

mkdir ../nginx
cd ../nginx
echo "<h1>Hello World from NGINX!!</h1>" > index.html

touch Dockerfile
echo "FROM nginx:alpine" >> Dockerfile
echo "COPY . /usr/share/nginx/html" >> Dockerfile

nerdctl --namespace k8s.io build --tag nginx-helloworld:latest .
nerdctl --namespace k8s.io images | grep nginx-helloworld

kubectl run hello-world --image=nginx-helloworld:latest --image-pull-policy=Never --port=80

# to check that the service is running:
# $ kubectl port-forward pods/hello-world 8080:80
# $ curl localhost:8080
