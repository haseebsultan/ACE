
#worksp=$1
#barname=$2

echo 'building bar file'
cd /opt/ace-11.0.0.9/tools

 . /opt/ace-11.0.0.9/server/bin/mqsiprofile && mqsicreatebar -data $WORKSPACE -b $WORKSPACE/GeneratedBarFiles/${BUILD_ID}.bar  -a Calculator -compileOnly -v createbartrace.txt -cleanBuild 


                 
