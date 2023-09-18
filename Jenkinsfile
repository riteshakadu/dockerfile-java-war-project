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
        sh '. /tmp/ritesh/workspace/ile-mvn-demo_feature_docker-cicd/environmentfile && echo $tagName'
      }
    }

    stage('build docker image') {
      steps {
        sh 'chmod +x /tmp/ritesh/workspace/ile-mvn-demo_feature_docker-cicd/environmentfile'
        sh '. /tmp/ritesh/workspace/ile-mvn-demo_feature_docker-cicd/environmentfile && sudo docker image build -t riteshkadu/dockerfile-image:$tagName .'
      }
    }

    stage('push docker image') {
      steps {
        sh '. /tmp/ritesh/workspace/ile-mvn-demo_feature_docker-cicd/environmentfile && sudo docker image push riteshkadu/dockerfile-image:$tagName'
      }
    }

  }
}
