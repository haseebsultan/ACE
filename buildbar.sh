
#worksp=$1
#barname=$2

echo 'building bar file'
cd /opt/ace-11.0.0.9/tools

 mqsicreatebar -data $WORKSPACE -b $WORKSPACE/GeneratedBarFiles/test.bar  -a Calculator -compileOnly -v createbartrace.txt -cleanBuild 


                 
