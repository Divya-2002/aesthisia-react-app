pipeline {
    agent any
    stages {
        stage('Cloning Repository') {
            steps {
                script {
                    git branch: 'main',
                        credentialsId: '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',
                        url: 'https://github.com/Divya-2002/aesthisia-react-app.git'
                }
            }
        }
        stage('Build and push Image') {
            steps {
                sh 'docker build -t divyasharma1489/docker-compose-image .'
                sh 'docker push divyasharma1489/docker-compose-image'
            }
        }
        stage('Creating Container') {
            steps {
                sh 'docker pull divyasharma1489/docker-compose-image'
                sh 'docker run -d --name div-container -p 8080:80 divyasharma1489/docker-compose-image'
            }
        }
    }
}
