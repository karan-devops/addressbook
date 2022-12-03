pipeline {
    stages {
        agent any
        stage('Compile') {
            steps {
                echo 'compiling the code'
                sh 'mvn compile'
            }
        }
        stage('Test'){
            agent slave1
            steps {
                echo 'testing the code'
                sh 'mvn test'
            }
        }
    }
}
