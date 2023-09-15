pipeline {
    agent {
        node {
            label 'Node-Ritesh'
        }
    }

    stages {
        stage('Load Environment') {
            steps {
                script {
                    def envFile = load 'path/to/environmentfile'
                    env.tagName = envFile.tagName
                }
            }
        }

        stage('build') {
            steps {
                sh 'mvn package'
            }
        }

        stage('build docker image') {
            steps {
                sh "sudo docker image build -t riteshkadu/dockerfile-image:$tagName ."
            }
        }

        stage('push docker image') {
            steps {
                sh "sudo docker image push riteshkadu/dockerfile-image:$tagName"
            }
        }
    }
}
