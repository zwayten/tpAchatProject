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

        // stage('Clean Maven Install') {
        //     steps {
        //         sh 'mvn clean install'
        //     }
        // }

        stage('Compile Porject') {
            steps {
                sh 'mvn compile'
            }
        }

        stage('RUnning tests') {
            steps {
                sh 'mvn test'
            }
        }
        
        stage ('SonarQube'){
            steps {

    sh "mvn clean verify sonar:sonar \
	  -Dsonar.projectKey=SpringAOp \
	  -Dsonar.projectName='SpringAOp' \
	  -Dsonar.host.url=http://localhost:9000 \
	  -Dsonar.token=sqp_62e9fe125eaf93680773e5d303e1cfebf42dfe60"
            }
          }

    }
}
