pipeline {
  agent {
    node {
      label 'Node-Ritesh'
    }
  }
  
  stages {
    stage('build') {
      steps {
        sh 'mvn package'
      }
    }

    stage('check tag') {
      steps {
        sh ". .environmentfile && echo ${tagName}"
      }
    }

    stage('build docker image') {
      steps {
        sh "source environmentfile && sudo docker image build -t riteshkadu/dockerfile-image:${tagName} ."
      }
    }

    stage('push docker image') {
      steps {
        sh "source environmentfile && sudo docker image push riteshkadu/dockerfile-image:${tagName}"
      }
    } 
  }
}
