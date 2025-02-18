## DevOps Final Exam for AWS, Jenkins. Docker, Kubernetes

Date: 			15 february-20 February
Submission deadline: 	20 february 11.59PM

Steps:
Make github repository
Make a repository for application code (base repo)

Local Development:
Choose an frontend application of your choice react/vue/angular or anything of your choice.
Generate a demo application
Change the frontend code as you desire, output page must have your name on it.
Run this locally so that you can see the changes you made in the browser.
Push the code to the github base repo


Docker Development:
Write a docker file and dockerize the application
Make a docker image and run it locally and expose its port. so that you can browse the application on your browser
Try to optimize the dockerfile
Make a docker compose to run the application and expose it on 9097 port
Push the updates to the github repository, base repo

Kubernetes Development:
Install minikube locally.
Write deployment and clusterip service for the dockerized application
Run the application in kubernetes environment
Figure out how to install ingress in minikube.
Write an ingressfile for the application
Apply the ingress and browse the application on your browser(might need to research from online)
push the kubernetes manifest files to the base repository


AWS Development:
 create a ec2 instance
	- make a aws userdata to 
		- install jenkins 
		- install docker
		- give jenkins user permission to docker group
		- restart jenkins and docker 

Make a file named userdata.sh and paste the aws userdata content in this file.
Push this code to the base repository 




AWS Development 2:
In the same jenkins server, in the /var/www folder make a new folder named “app”
Inside app directory use the docker compose file and run the application
Browse on ec2ip:9097 port

Jenkins Development:
Make a pipeline	 named base pipeline
Should be triggered when merge request is accepted from dev -> main branch.
Upon merge acceptance pipeline is triggered
Git code is pulled
Docker image is built
Image tag should be:
pipeline_build_number-day-month-hour-minute
Docker push to dockerhub (using username and password variable  from the jenkins credentials)
Docker logout
Clean the workspace
Use linux commands to update the image tag at dockercompose.yaml file in the /var/www/app directory
After updating the docker compose file, rerun the docker compose so that the container picks the new image and start with the new image.
Send a google chat notification (if pipeline successful)
Notification should be “your application has been updated,
Imagename:imagetag”

			
Push the code to the repository
