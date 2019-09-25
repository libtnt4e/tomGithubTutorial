pipeline{
  agent any
      stages{
        stage('One'){
          steps{
            echo 'Hi there, Tom'
          }
          stage('Two'){
            steps{
              input('Do you want to proceed?')
            }
            stage('Three'){
                    when {
                            not{
                                branch "master"
                            }
                    }
              steps{
                echo 'Hello'
              }
              stage('four'){
                parallel{
                  stage('Unit Test'){
                  steps{
                    echo 'running the unit test. . .'
                  }
                  stage('Integration Test'){
                    agent{
                      docker{
                              reuseNode false
                              image 'ubuntu'
                      }
                    }
                  steps{
                        echo 'running Integration test. . .'
                  }
                  }
                }

        }
      }
}
