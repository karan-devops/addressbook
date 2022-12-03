pipeline {
    agent none
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
                echo 'testing the code'
                sh 'mvn test'
            }
        }
    }
}
