pipeline {
    agent any
    environment {
        DOCKER_HUB = credentials"dockerhublogin"
        ACCESS_KEY = credentials"Access-key-ID"
        SECRET_KEY = credentials"Secret-access-key"
}

    stages {
        stage('git'){
            steps {
                git branch: 'main', url: 'https://github.com/MUTHUMMK/AUTOMATION.git'
            }
        }
    
    
        stage('build'){
            steps {
                script{
                    sh 'sh build.sh'
                }
                }
            }
            
        stage('deploy'){
            steps{
                script{
                    withCredentials([sshUserPrivateKey(credentialsId: 'sshkey', keyFileVariable: 'sshkey', usernameVariable: 'sshusr')]) {
                        sh 'sh deploy.sh $sshkey'
}
                }
            }
        }
            
    }
    
}
