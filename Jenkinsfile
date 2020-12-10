pipeline {
    agent any 
    environment {
        CI = 'true'
    }
   
   stages{
      // wrap([$class: 'Xvfb']) {
       
           stage('Build') {            
             post {
                failure {
                            emailext (
                            subject: "Build fail! Job: '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                            body: """<p>STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
                              """,
                            to: 'nida.hayat@systemsltd.com'
                                        )
                            }
                    }
                 steps {
                     dir('/opt/ace-11.0.0.9/tools')
                     {
                         echo 'path'
                      sh "pwd"   
                       wrap([$class: 'Xvfb']) {   
                    sh './mqsicreatebar -data $WORKSPACE -b $WORKSPACE/GeneratedBarFiles/mytestapp.bar  -a Calculator -compileOnly -v createbartrace.txt -cleanBuild' 
                 
                     }
                        }
                     }   
    
             }
        }
  }

