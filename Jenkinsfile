pipeline {
    agent any
    stages {
        stage('Cloning Repository') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Divya-2002/aesthisia-react-app.git',
                    credentialsId: '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'
            }
        }
        stage('Build and push Image') {
            steps {
		            sh 'docker build -t divyasharma1489/dokcer-composer-image
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
 

