
pipeline {
    agent {label 'AWS-DOCKER'}
    environment {
        DOCKERHUB_CREDENTIALS=credentials('docker-hub')
    }

    stages {
        stage('Checkout') {
            steps {
                sh 'rm -r -f *' 
                git branch: 'main', credentialsId: 'GITHUB', url: 'https://github.com/omriv88/Assignment-Part-I-php'
                sh 'docker stop $(docker ps -a -q)'
                sh 'docker rm $(docker ps -a -q)'
                sh 'docker rmi $(docker images -q)'
                sh 'ls -l'
                
            }
        }
        stage('Create Docker image') {
            steps {
                sh 'docker build -t omriv/nginx_php7.4-fp:3 .'
                sh 'docker run -d -p 80:80 omriv/nginx_php7.4-fp:3'
            }
        }
        stage('Upload the image 1/2') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Upload the image 2/2') {
            steps {
                sh 'docker push omriv/nginx_php7.4-fp:3'
                sh 'docker logout'
            }
        }
        stage('cleanup_k8s') {
            agent {label 'LOCAL'}
                steps {
                    bat 'kubectl delete deploy nginx-php'
                    bat 'kubectl delete svc nginx-php-service'
                    bat 'kubectl get pods'
                }
            }
            stage('deploy_kubernetes') {
            agent {label 'LOCAL'}
                steps {
                    git branch: 'main', credentialsId: 'GITHUB', url: 'https://github.com/omriv88/Assignment-Part-I-php'
                    bat 'kubectl apply -f ./deployment.yml'
                    bat 'kubectl get svc'
                }
            }
        }
    }   
