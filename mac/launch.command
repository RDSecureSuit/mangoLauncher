#!/bin/bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"
echo "Script directory: $SCRIPT_DIR"

cd $SCRIPT_DIR

JAVA="java"


JAVA_VER=`$JAVA -version 2>&1 | grep 'version' 2>&1 | awk -F\" '{ split($2,a,"."); print a[1]"."a[2]}'`


if [[ $JAVA_VER == "1.8" ]]; then                
    JAVAARGS="-Dsun.java2d.noddraw=true -Xmx512m"
else
    JAVAARGS="-Dsun.java2d.noddraw=true -Xmx512m --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.net=ALL-UNNAMED --add-opens=java.datatransfer/java.awt.datatransfer=ALL-UNNAMED --add-exports=java.desktop/sun.java2d=ALL-UNNAMED --add-exports=java.desktop/sun.print=ALL-UNNAMED --add-opens=java.desktop/java.applet=ALL-UNNAMED --add-opens=java.desktop/java.awt=ALL-UNNAMED --add-opens=java.desktop/sun.awt=ALL-UNNAMED --add-opens=java.desktop/sun.awt.windows=ALL-UNNAMED --add-opens=java.desktop/sun.awt.X11=ALL-UNNAMED --add-opens=java.desktop/sun.awt.motif=ALL-UNNAMED"

fi

echo Versión de Java detectada en el sistema: $JAVA_VER

#JAVAARGS=""
CLASSPATH="lib/:lib/JLaunch2-J2.jar:lib/Admin2-J2.jar:lib/ca-J2.jar:lib/cerdsp-J2.jar:lib/cergen-J2.jar:lib/CheckClient-J2.jar:lib/comma-J2.jar:lib/commb-J2.jar:lib/ComplCheck-J2.jar:lib/ComplCheckClient-J2.jar:lib/DesktopOnDemand-J2.jar:lib/EAAdmin-J2.jar:lib/EAAdminPlugins-J2.jar:lib/easerver-J2.jar:lib/FTPB-J2.jar:lib/FTPBconf-J2.jar:lib/hlset-J2.jar:lib/hlsetutil-J2.jar:lib/hobcc-J2.jar:lib/Hobeans-J2.jar:lib/hoblibs-J2.jar:lib/hobphone-J2.jar:lib/HOBssh-J2.jar:lib/HOBSSHKG-J2.jar:lib/HOBssl-J2.jar:lib/HOBTerminal-J2.jar:lib/hobxml-J2.jar:lib/jcalendar-1.3.2.jar:lib/JLaunch-J2.jar:lib/JTerm-J2.jar:lib/JTermconf-J2.jar:lib/JWT-J2.jar:lib/JWTcommons-J2.jar:lib/JWTconf-J2.jar:lib/JWTconfsa-J2.jar:lib/launchppp-J2.jar:lib/LocalVarsEdit-J2.jar:lib/LogViewer.jar:lib/mail.jar:lib/Ohio-J2.jar:lib/prodkey-J2.jar:lib/proxyconf-J2.jar:lib/secman-J2.jar:lib/secutil-J2.jar:lib/Startoptions-J2.jar:lib/symantec-J2.jar:lib/tool-J2.jar:lib/wsp_passthrough.jar:lib/wspcfg-J2.jar:lib/wspuc-J2.jar:lib/wspucsom-J2.jar:lib/xmlpull-1.1.3.1.jar:lib/xpp3_min-1.1.4c.jar:lib/xstream-1.4.10.jar"
#JAVAMAINCLASS="hob.lau2.JLaunchApplication"
JAVAMAINCLASS="hob.lau.JLaunch"


XML_FILE="lib/hob/props/startup.xml"

HOST=$(xmllint --xpath 'string(/root/SrvListWSP/__0/host)' $XML_FILE)
PORT=$(xmllint --xpath 'string(/root/SrvListWSP/__0/port)' $XML_FILE)
URL="https://"$HOST:$PORT

APPARGS="-a102 -sstartup.xml -rY -l$URL/public/lib"
WWW_DIR="www"

# Limpieza de directorios antes de las descargas
rm -rf lib/*.gif && rm -rf $WWW_DIR lib/sslpublic

if [ ! -d $WWW_DIR ]; then
    mkdir $WWW_DIR
fi
if [ ! -d $HOME/hob_jportal ]; then
    mkdir $HOME/hob_jportal
fi
#if [ ! -d lib/sslpublic ]; then
#    mkdir lib/sslpublic
#fi



# Descargas para la carpeta 'www' (continuarán aunque una falle)
curl --insecure -s "$URL/public/lib/rel25.gif" --output $WWW_DIR/rel25.gif
curl --insecure -s "$URL/public/lib/rel102.gif" --output $WWW_DIR/rel102.gif
curl --insecure -s "$URL/public/lib/rel10018.gif" --output $WWW_DIR/rel10018.gif
curl --insecure -s "$URL/public/lib/rel10048.gif" --output $WWW_DIR/rel10048.gif
curl --insecure -s "$URL/public/lib/ver25.gif" --output $WWW_DIR/ver25.gif
curl --insecure -s "$URL/public/lib/ver85.gif" --output $WWW_DIR/ver85.gif
curl --insecure -s "$URL/public/lib/ver100018.gif" --output $WWW_DIR/ver100018.gif

# Copiamos los archivos de versión en lib

cp $WWW_DIR/rel25.gif lib/rel25.gif
cp $WWW_DIR/rel102.gif lib/rel102.gif
cp $WWW_DIR/rel10018.gif lib/rel10018.gif
cp $WWW_DIR/rel10048.gif lib/rel10048.gif
cp $WWW_DIR/ver25.gif lib/ver25.gif
cp $WWW_DIR/ver85.gif lib/ver85.gif
cp $WWW_DIR/ver100018.gif lib/ver100018.gif

# Descargas para la carpeta de jportal
curl --insecure -s "$URL/public/lib/sslpublic/hclient.cdb" --output "$HOME/hob_jportal/hclient.cdb"
curl --insecure -s "$URL/public/lib/sslpublic/hclient.cfg" --output "$HOME/hob_jportal/hclient.cfg"
curl --insecure -s "$URL/public/lib/sslpublic/hclient.pwd" --output "$HOME/hob_jportal/hclient.pwd"

# Ejecución de la aplicación Java (se ejecuta siempre al terminar las descargas)
$JAVA $JAVAARGS -cp "$CLASSPATH" "$JAVAMAINCLASS" $APPARGS > rdsMangoLauncher.log 2>&1

exit

