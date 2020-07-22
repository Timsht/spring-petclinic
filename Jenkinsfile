pipeline {
    stages {
        stage ('Checkout') {
          steps {
            git 'https://github.com/kh3phr3n/spring-petclinic/spring-petclinic.git'
          }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}