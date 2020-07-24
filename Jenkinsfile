pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t petclinic .'
            }
        }
        stage('Test') {
            steps {
               jacoco( 
                  execPattern: 'target/*.exec',
                  classPattern: 'target/classes',
                  sourcePattern: 'src/main/java',
                  exclusionPattern: 'src/test*'
                  )
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose -f ~/data/spring-petlinic/docker-compose-petclinic-mysql up'
            }
        }
    }
}
