# Example 1

rm -rf ../hello-world

# Remove the image
nerdctl rmi helloworld:v1.0 


# Example 2

rm -rf ../nginx

kubectl delete pod hello-world
# Remove the image
nerdctl --namespace k8s.io rmi nginx-helloworld:latest 
