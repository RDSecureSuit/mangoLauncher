#!/bin/bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"
echo "Script directory: $SCRIPT_DIR"

cd "$SCRIPT_DIR"

JAVA="${JAVA:-java}"

JAVA_VER=`$JAVA -version 2>&1 | grep 'version' 2>&1 | awk -F\" '{ split($2,a,"."); print a[1]"."a[2]}'`

if [[ $JAVA_VER == "1.8" ]]; then
    JAVAARGS="-Dsun.java2d.noddraw=true -Xmx512m"
else
    JAVAARGS="-Dsun.java2d.noddraw=true -Xmx512m --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.net=ALL-UNNAMED --add-opens=java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.lang.reflect=ALL-UNNAMED --add-opens=java.base/java.text=ALL-UNNAMED --add-opens=java.datatransfer/java.awt.datatransfer=ALL-UNNAMED --add-exports=java.desktop/sun.java2d=ALL-UNNAMED --add-exports=java.desktop/sun.print=ALL-UNNAMED --add-opens=java.desktop/java.applet=ALL-UNNAMED --add-opens=java.desktop/java.awt=ALL-UNNAMED --add-opens=java.desktop/java.awt.font=ALL-UNNAMED --add-opens=java.desktop/sun.awt=ALL-UNNAMED --add-opens=java.desktop/sun.awt.windows=ALL-UNNAMED --add-opens=java.desktop/sun.awt.X11=ALL-UNNAMED --add-opens=java.desktop/sun.awt.motif=ALL-UNNAMED"
fi

echo "Version de Java detectada en el sistema: $JAVA_VER"

CLASSPATH="./lib/secman-J2.jar:./lib/EAAdmin-J2.jar:./lib/cerdsp-J2.jar:./lib/hlsetutil-J2.jar:./lib/secutil-J2.jar:./lib:lax.jar"
JAVAMAINCLASS="hob.ssl.semg.SecuMgr"

# Equivalente a lax.command.line.args="-p/opt/HOB/rdvpn" con raiz local por defecto.
APPROOT="${SECURITY_MANAGER_ROOT:-$SCRIPT_DIR}"

XML_FILE="lib/hob/props/startup.xml"
if [ -f "$XML_FILE" ]; then
    HOST=$(xmllint --xpath 'string(/root/SrvListWSP/__0/host)' "$XML_FILE")
    PORT=$(xmllint --xpath 'string(/root/SrvListWSP/__0/port)' "$XML_FILE")
    URL="https://$HOST:$PORT"

    [ -d www ] || mkdir www
    [ -d lib/sslpublic ] || mkdir -p lib/sslpublic

    curl --insecure -s "$URL"/public/lib/rel102.gif --output www/rel102.gif > /dev/null && \
    curl --insecure -s "$URL"/public/lib/sslpublic/hclient.cdb --output lib/sslpublic/hclient.cdb > /dev/null && \
    curl --insecure -s "$URL"/public/lib/sslpublic/hclient.cfg --output lib/sslpublic/hclient.cfg > /dev/null && \
    curl --insecure -s "$URL"/public/lib/sslpublic/hclient.pwd --output lib/sslpublic/hclient.pwd > /dev/null
fi

$JAVA $JAVAARGS -cp "$CLASSPATH" $JAVAMAINCLASS "-p$APPROOT" "$@"

exit
