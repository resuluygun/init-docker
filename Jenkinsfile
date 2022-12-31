pipeline{
    agent any
    stages {
        stage('Static code analysis'){
            steps {
                echo 'static analysis...'
            }
        }

        stage('Unit - Integration Test'){
            steps {
                echo 'tests are runned'
            }
        }

        stage('Build'){
            steps {
                sh 'docker build -t first-build .'
            }
        }

        stage('Deploy'){
            steps {
                echo 'deploying...'
            }
        }
        
    }
}