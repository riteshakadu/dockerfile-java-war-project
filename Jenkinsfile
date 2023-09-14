pipeline {
  agent {
    node {
      label 'Node-Ritesh'
    }
  }

  parameters {
    string description: 'This is for image tag', name: 'tagName'
  }
  
  stages {
    stage('build') {
      steps {
        sh 'mvn package'
      }
    }

    stage('build docker image') {
      steps {
        sh "sudo docker image build -t riteshkadu/dockerfile-image:${tagName} ."
      }
    }

    stage('push docker image') {
      steps {
        sh "sudo docker image push riteshkadu/dockerfile-image:${tagName}"
      }
    } 
  }
}
