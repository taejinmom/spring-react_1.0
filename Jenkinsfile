pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/taejinmom/spring-react_1.0.git'
            }
        }
        stage('Build') {
            steps {
                sh './mvnw clean package'
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                docker stop my-spring-app-container || true
                docker rm my-spring-app-container || true
                docker run -d -p 8081:8080 --network my_network --name my-spring-app-container my-spring-app
                '''
            }
        }
    }
}
