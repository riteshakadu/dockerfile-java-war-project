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

    stage('build docker image') {
      steps {
        sh 'sudo docker image build -t riteshkadu/dockerfile-image:0.0.19 .'
      }
    }

  }
}
