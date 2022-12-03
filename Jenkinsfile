pipeline {
    agent none
    tools {
        jdk 'myjava'
        maven 'mymaven'
    }
    environment{
        BUILD_SERVER_IP='ec2-user@54.249.127.50'
    }
    stages {
        stage('Compile') {
            agent {label 'linux_prac_slave-1'}
            steps {
                echo 'compiling the code'
                sh 'mvn compile'
            }
        }
        stage('Test'){
            agent any
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
                    sshagent(['ssh-key']) {
                        echo "packaging the code"
                        sh "scp -o StrictHostKeyChecking=no server-script.sh ${BUILD_SERVER_IP}:/home/ec2-user"
                        sh "ssh -o StrictHostKeyChecking=no ${BUILD_SERVER_IP}:/home/ec2-user 'bash ~/server-script.sh'"
                    }
                    
                }
            }
        }
    }
}
