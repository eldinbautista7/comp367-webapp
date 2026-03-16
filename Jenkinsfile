pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "eldinbautista/comp367-webapp"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/eldinbautista7/comp367-webapp.git'
            }
        }
        stage('Build Maven Project') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub',
                usernameVariable: 'USERNAME',
                passwordVariable: 'PASSWORD')]) {
                    bat 'docker login -u %USERNAME% -p %PASSWORD%'
                }
            }
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t %DOCKER_IMAGE% .'
            }
        }
        stage('Docker Push') {
            steps {
                bat 'docker push %DOCKER_IMAGE%'
            }
        }
    }
}