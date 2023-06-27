# Assignment-Part-I-php
Create CI/CD Pipeline in Jenkins, run the Pipeline from GitHub Actions

 - 1 Create Kubernetes cluster + private Docker registry (Skip this step if already exists)
 - 2 Create Docker image (Nginx web server + php-fpm with index.php inside) You should be able to modify the content of index.php file
 - ![image](https://github.com/omriv88/Assignment-Part-I-php/assets/113102456/a46c8537-9cdb-4257-bed0-de230bc762f7)

 - 3 Upload the image to the docker registry.
 - ![image](https://github.com/omriv88/Assignment-Part-I-php/assets/113102456/d4ac6a8d-c064-49b5-98e0-c57970f2201c)

 - 4 Pull the image from the docker registry and deploy it to the kubernetes cluster.
 - ![image](https://github.com/omriv88/Assignment-Part-I-php/assets/113102456/df5a94fb-f7db-4bbe-94c7-0f6cfaa6e4a8)

 - 5 For branch develop, the deploy is done automatically on pull request while
 - ![image](https://github.com/omriv88/Assignment-Part-I-php/assets/113102456/3a9e81ff-d173-4849-93ea-a1abe6a93d94)

 - 6 for branch master the deploy is done by running the workflow manually.
 - ![image](https://github.com/omriv88/Assignment-Part-I-php/assets/113102456/54973945-1dc7-42a7-ad04-6e8efd250aa5)
 - ![image](https://github.com/omriv88/Assignment-Part-I-php/assets/113102456/fafb31ae-5c97-4021-aecf-d2f96f43084e)

 - 7 The workflow should output the application’s service external ip.
 - ![image](https://github.com/omriv88/Assignment-Part-I-php/assets/113102456/3dbd1bb0-1905-4c79-98bb-85802d642d7e)



