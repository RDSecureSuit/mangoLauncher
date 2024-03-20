#!/bin/bash

JAVA="java"
#JAVAARGS=""
JAVAARGS="-Dsun.java2d.noddraw=true -Xmx512m --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.net=ALL-UNNAMED --add-opens=java.datatransfer/java.awt.datatransfer=ALL-UNNAMED --add-exports=java.desktop/sun.java2d=ALL-UNNAMED --add-exports=java.desktop/sun.print=ALL-UNNAMED --add-opens=java.desktop/java.applet=ALL-UNNAMED --add-opens=java.desktop/java.awt=ALL-UNNAMED --add-opens=java.desktop/sun.awt=ALL-UNNAMED --add-opens=java.desktop/sun.awt.windows=ALL-UNNAMED --add-opens=java.desktop/sun.awt.X11=ALL-UNNAMED --add-opens=java.desktop/sun.awt.motif=ALL-UNNAMED"
CLASSPATH="lib/:lib/JLaunch2-J2.jar:lib/Admin2-J2.jar:lib/ca-J2.jar:lib/cerdsp-J2.jar:lib/cergen-J2.jar:lib/CheckClient-J2.jar:lib/comma-J2.jar:lib/commb-J2.jar:lib/ComplCheck-J2.jar:lib/ComplCheckClient-J2.jar:lib/DesktopOnDemand-J2.jar:lib/EAAdmin-J2.jar:lib/EAAdminPlugins-J2.jar:lib/easerver-J2.jar:lib/FTPB-J2.jar:lib/FTPBconf-J2.jar:lib/hlset-J2.jar:lib/hlsetutil-J2.jar:lib/hobcc-J2.jar:lib/Hobeans-J2.jar:lib/hoblibs-J2.jar:lib/hobphone-J2.jar:lib/HOBssh-J2.jar:lib/HOBSSHKG-J2.jar:lib/HOBssl-J2.jar:lib/HOBTerminal-J2.jar:lib/hobxml-J2.jar:lib/jcalendar-1.3.2.jar:lib/JLaunch-J2.jar:lib/JTerm-J2.jar:lib/JTermconf-J2.jar:lib/JWT-J2.jar:lib/JWTcommons-J2.jar:lib/JWTconf-J2.jar:lib/JWTconfsa-J2.jar:lib/launchppp-J2.jar:lib/LocalVarsEdit-J2.jar:lib/LogViewer.jar:lib/mail.jar:lib/Ohio-J2.jar:lib/prodkey-J2.jar:lib/proxyconf-J2.jar:lib/secman-J2.jar:lib/secutil-J2.jar:lib/Startoptions-J2.jar:lib/symantec-J2.jar:lib/tool-J2.jar:lib/wsp_passthrough.jar:lib/wspcfg-J2.jar:lib/wspuc-J2.jar:lib/wspucsom-J2.jar:lib/xmlpull-1.1.3.1.jar:lib/xpp3_min-1.1.4c.jar:lib/xstream-1.4.10.jar"
#JAVAMAINCLASS="hob.lau2.JLaunchApplication"
JAVAMAINCLASS="hob.lau.JLaunch"
APPARGS="-a102 -sstartup.xml -llib  -rY "

XML_FILE="lib/hob/props/startup.xml"

HOST=$(xmllint --xpath 'string(/root/SrvListWSP/__0/host)' $XML_FILE)
PORT=$(xmllint --xpath 'string(/root/SrvListWSP/__0/port)' $XML_FILE)
URL="https://"$HOST:$PORT

if [ ! -d www ]; then
    mkdir www
fi
if [ ! -d lib/sslpublic ]; then
    mkdir lib/sslpublic
fi

curl --insecure -s $URL/public/lib/rel102.gif --output www/rel102.gif > /dev/null && \
curl --insecure -s $URL/public/lib/sslpublic/hclient.cdb --output lib/sslpublic/hclient.cdb > /dev/null && \
curl --insecure -s $URL/public/lib/sslpublic/hclient.cfg --output lib/sslpublic/hclient.cfg > /dev/null && \
curl --insecure -s $URL/public/lib/sslpublic/hclient.pwd --output lib/sslpublic/hclient.pwd > /dev/null

$JAVA $JAVAARGS -cp $CLASSPATH $JAVAMAINCLASS $APPARGS

