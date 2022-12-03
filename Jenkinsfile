pipeline {
    agent none
    tools {
        jdk 'myjava'
        maven 'mymaven'
    }
    stages {
        stage('Compile') {
            agent any
            steps {
                echo 'compiling the code'
                sh 'mvn compile'
            }
        }
        stage('Test'){
            agent {label 'linux_prac_slave-1'}
            steps {
                script {
                    echo 'testing the code'
                    sh 'mvn test'
                }
            }
            post{
                always{
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Package'){
            agent any
            steps {
                script {
                    echo "packaging the code"
                    sh 'mvn package'
                }
            }
        }
    }
}
