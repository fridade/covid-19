pipeline {
    agent any

    stages {
        stage('install apache') {
            steps {
                sh 'apt install apache2'
            }
        }
        stage('update the server') {
            steps {
                sh 'apt update'
            }
        }
        stage('build the dockerfile') {
            steps {
                sh 'docker build -t fridade/covid19:jenkins-$BUILD_NUMBER .'
            }
        }
        stage('create the container') {
            steps {
                sh 'docker run -itd -p 6785:80  fridade/covid19:jenkins-$BUILD_NUMBER'
            }
        }
    }
}