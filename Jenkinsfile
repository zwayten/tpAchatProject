pipeline {
    agent any

    
    stages {
        //echo test 
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
        //Maven Version
        stage("Testing maven version") {
            steps {
                sh 'mvn -version'
            }
        }
        
        stage('Git Checkout') {
            steps {
                echo 'Pulling'
                git branch: 'main',
                url : 'https://github.com/zwayten/tpAchatProject.git';
            }
        }
    }

}