pipeline {
    agent any

    environment {
        IMAGE_NAME = "docker-app-1"
        PROFILE="dev"
    }

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/prudhvi2244/demo-app.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package -Dspring.profiles.active=$PROFILE'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -e SPRING_PROFILES_ACTIVE=$PROFILE -p 9999:9999 $IMAGE_NAME'
            }
        }

    }
}