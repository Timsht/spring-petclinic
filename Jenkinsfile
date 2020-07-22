pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                docker build -t petclinic .
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
                docker run -d -p 8081:8081 petclinic
            }
        }
    }
}
