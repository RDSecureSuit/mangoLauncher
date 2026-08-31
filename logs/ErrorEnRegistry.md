# Error en registry.xml

En la versión de adaptación de HOBLink a KBLink no se crean los archivos escenciales del jterm. Esto genera el error de que no se pueden cargar los certificados.

He intentado copiar los archivos `hclient.*` en `~/hob_jportal` pero con la versión conflictiva. Con la versión funcional no hay necesidad de copiar ningún `hclient.*` ya que creo que al pasar el parámetro `-l`, el aplicativo lee dichos archivos desde la Web `-a102 -sstartup.xml -l$URL/public/lib  -urdvpn\demo -rY`, ambas versiones usan el mismo "Script de lanzamiento"

## Versión conflictiva

Estructura del diretorio `HOME` `hob_jportal`

```text
ll ~/hob_jportal
total 336
-rw-r--r--@ 1 erwinpalma  staff     227 28 ago 21:01 1user.hxml
drwxr-xr-x@ 3 erwinpalma  staff      96 28 ago 21:02 logs
-rw-r--r--@ 1 erwinpalma  staff    1433 20 ago 07:36 registry.xml
-rw-r--r--  1 erwinpalma  staff    1095 28 ago 21:06 registry.xml.zip
drwxr-xr-x@ 2 erwinpalma  staff      64 28 ago 21:00 temp
```

<details>
  <summary>Logs de librerías actualizadas</summary>
  
  ### Heading

  ### Some Javascript
  ```text
./launch.command
Script directory: /Users/erwinpalma/Documents/GitHub/mangoLauncher/mac
Versión de Java detectada en el sistema: 21.0
WARNING: package sun.awt.windows not in java.desktop
WARNING: package sun.awt.motif not in java.desktop
WARNING: package sun.awt.X11 not in java.desktop
###########################
No support of SLF4J detected, use Java 2 core logging facilities
User specified log.properties not found at '/logs' (/logs/log.properties (No such file or directory))
Log load 'log.properties' from hob/props/log.properties
######getResourceAsStream: strp_name=hob/props/log.properties
ago 28, 2026 11:57:28 P. M. hob.tools.CHM getResourceAsStream():408
ADVERTENCIA: CHM - getResourceAsStream(): Could not get URL from getResourcePlus - class hob.tools.logging.Log14=hob/props/log.properties
Failed to load 'log.properties'
ago 28, 2026 11:57:28 P. M. hob.tools.CHM setSysParam():3197
INFORMACIÓN: Argument[0]: -a102
ago 28, 2026 11:57:28 P. M. hob.tools.CHM setSysParam():3197
INFORMACIÓN: Argument[1]: -sstartup.xml
ago 28, 2026 11:57:28 P. M. hob.tools.CHM setSysParam():3197
INFORMACIÓN: Argument[2]: -lhttps://54.156.237.41:443/public/lib
ago 28, 2026 11:57:28 P. M. hob.tools.CHM setSysParam():3197
INFORMACIÓN: Argument[3]: -urdvpn\demo
ago 28, 2026 11:57:28 P. M. hob.tools.CHM setSysParam():3197
INFORMACIÓN: Argument[4]: -rY
ago 28, 2026 11:57:28 P. M. hob.tools.CHM setSysParam():3714
INFORMACIÓN: CHM - setSysParam(): RDVPN host=54.156.237.41
User specified log.properties not found at '/Users/erwinpalma/hob_jportal/logs' (/Users/erwinpalma/hob_jportal/logs/log.properties (No such file or directory))
Log load 'log.properties' from hob/props/log.properties
######getResourceAsStream: strp_name=hob/props/log.properties
ago 28, 2026 11:57:29 P. M. hob.tools.CHM getResourceAsStream():401
ADVERTENCIA: CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/hob/props/log.properties
Failed to load 'log.properties'
ago 28, 2026 11:57:29 P. M. hob.tools.CHM setSysParam():3753
INFORMACIÓN: User Home Directory=/Users/erwinpalma/hob_jportal
ago 28, 2026 11:57:29 P. M. hob.lau.JLaunch mainEx():316
INFORMACIÓN: J-Term release file (rel102.gif)
######getResourceAsStream: strp_name=rel102.gif
######getResourceAsStream: strp_name=eval_en.gif
ago 28, 2026 11:57:29 P. M. hob.tools.CHM getResourceAsStream():401
ADVERTENCIA: CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/eval_en.gif
######getResourceAsStream: strp_name=ver102.gif
ago 28, 2026 11:57:29 P. M. hob.tools.CHM getResourceAsStream():401
ADVERTENCIA: CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/ver102.gif
ago 28, 2026 11:57:29 P. M. hob.lau.JLaunch mainEx():330
INFORMACIÓN: HOB J-Term Version 1 0
ago 28, 2026 11:57:29 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.lau.res.RcLaunch_es (español)
######getResourceAsStream: strp_name=hob/dlls/hobjni.hxml
ago 28, 2026 11:57:29 P. M. hob.tools.CHM loadNative():2637
INFORMACIÓN: JNI-File (/Users/erwinpalma/hob_jportal/hobjni.hxml  Version 0, 36814)
ago 28, 2026 11:57:29 P. M. hob.tools.CHM loadNative():2660
INFORMACIÓN: LoadNative - File "hob/dlls/hobjni.hxml" cannot be loaded. No support for (mac os x)
ago 28, 2026 11:57:29 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hlc.res.RcHlSet_es (español)
ago 28, 2026 11:57:29 P. M. hob.tools.CHM get_startup_pnode():4329
INFORMACIÓN: Startup file=startup.xml
######getResourceAsStream: strp_name=/hob/props/startup.xml
ago 28, 2026 11:57:29 P. M. hob.hlc.HlSetsvc hConnect():775
INFORMACIÓN: HlSetSvc: classname hob.hlc.cipset
######getResourceAsStream: strp_name=hob/img/EntprAdmin16.png
ago 28, 2026 11:57:32 P. M. hob.hlc.cipset getSocket():370
INFORMACIÓN: TCP-Connect to server localhost:13270 (connect via WSP! 54.156.237.41:443)
ago 28, 2026 11:57:32 P. M. hob.comm.WSP_Auth connect_to():358
INFORMACIÓN: Connect to WSP: 54.156.237.41:443
ago 28, 2026 11:57:32 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.comm.res.RcDyn_es (español)
######getResourceAsStream: strp_name=/sslpublic/hclient.cfg
######getResourceAsStream: strp_name=/sslpublic/hclient.pwd
######getResourceAsStream: strp_name=/sslpublic/hclient.cdb
User specified log.properties not found at '/Users/erwinpalma/hob_jportal/logs' (/Users/erwinpalma/hob_jportal/logs/log.properties (No such file or directory))
Log load 'log.properties' from hob/props/log.properties
######getResourceAsStream: strp_name=hob/props/log.properties
ago 28, 2026 11:57:33 P. M. hob.tools.CHM getResourceAsStream():401
ADVERTENCIA: CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/hob/props/log.properties
Failed to load 'log.properties'
ago 28, 2026 11:57:33 P. M. hob.ssl.hssldpro HSSL_PrivExtInit()
INFORMACIÓN: HOBLink Secure SSL Software Module, Version 3.2 1.28, Rev. 7.1, 12.06.2017
SECDRBG - Confirmation coefficient in method A = 82.
ago 28, 2026 11:57:33 P. M. hob.ssl.hssldpro HSSL_PrivExtInit()
INFORMACIÓN: SECDRBG: Seed ok
ago 28, 2026 11:57:34 P. M. hob.comm.sec SSLConnect():595
INFORMACIÓN: Server Certificate: 10.0.10.145
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.cuc.JSres01_en (inglés)
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.cuc.JSres01_de (alemán)
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.cuc.JSres01_fr (francés)
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.cuc.JSres01_es (español)
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.cuc.JSres01_zh (chino)
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.cuc.JSres01_ru (ruso)
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.cuc.JSres01_pt (portugués)
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.cuc.JSres01_uk (ucraniano)
ago 28, 2026 11:57:34 P. M. hob.comm.WSP_Auth connect_to():429
INFORMACIÓN: WSP-Auth succesful. select server = null
ago 28, 2026 11:57:34 P. M. hob.hlc.cipset getSocket():373
INFORMACIÓN: TCP connection established to null
ago 28, 2026 11:57:34 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.lau.res.RcCommon_es (español)
ago 28, 2026 11:57:34 P. M. hob.lau.PaneLaunch init():322
INFORMACIÓN: CABBASE(Productmask)=0xff , Components=0x187ff
######getResourceAsStream: strp_name=/hob/images/prevfold.png
######getResourceAsStream: strp_name=/hob/images/newdir.png
######getResourceAsStream: strp_name=/hob/images/DISPLAYSEL.png
ago 28, 2026 11:57:34 P. M. hob.dhom.DhomSrv startEx():84
ADVERTENCIA: Dhom port not set for product H_DHOM_JTERM (Exception: 'boolean hob.comm.Hobjni.removeProductDHOMPort(java.lang.String)')
ago 28, 2026 11:57:34 P. M. hob.lau.PaneLaunch init():452
INFORMACIÓN: DHOM-server (/Users/erwinpalma/hob_jportal) started with port 0
######getResourceAsStream: strp_name=/hob/images/BIG_SESSGROUP.png
######getResourceAsStream: strp_name=/images/MSWord.png
######getResourceAsStream: strp_name=/images/Desktop.png
######getResourceAsStream: strp_name=/images/Desktop.png
######getResourceAsStream: strp_name=/images/contpaqi-comer.png
ago 28, 2026 11:57:35 P. M. hob.tools.CHM getResourceAsStream():401
ADVERTENCIA: CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/images/contpaqi-comer.png
######getResourceAsStream: strp_name=/hob/images/contpaqi-comer.png
ago 28, 2026 11:57:35 P. M. hob.tools.CHM getResourceAsStream():401
ADVERTENCIA: CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/hob/images/contpaqi-comer.png
######getResourceAsStream: strp_name=/hob/images/BIG_JWTICON.png
######getResourceAsStream: strp_name=/images/MSExcel.png
######getResourceAsStream: strp_name=/hob/images/JTERM_32.png
ago 28, 2026 11:57:35 P. M. hob.lau.PaneLaunch autoRunSessions():1020
INFORMACIÓN: Sessions available in the launcher: 5
Product information: KBLink JWT 4.1.0001
hob.hltc.sessionmgr.SESSIONMGR.Certificates: could not load certificate file
java.security.cert.CertificateException: Missing input stream
	at java.base/sun.security.provider.X509Factory.engineGenerateCertificate(X509Factory.java:93)
	at java.base/java.security.cert.CertificateFactory.generateCertificate(CertificateFactory.java:355)
	at hob.hltc.ca_sessionmanager.mgr_init(Unknown Source)
	at hob.hltc.ea.jwt$c_globalmanager.mgr_init(Unknown Source)
	at hob.hltc.ca_sessionmanager.mgr_init(Unknown Source)
	at hob.hltc.ea.jwt$c_globalmanager.<init>(Unknown Source)
	at hob.hltc.ea.jwt.get_global_manager(Unknown Source)
	at hob.hltc.ea.jwt.<init>(Unknown Source)
	at hob.hltc.ea.JWTPlugin.m_create_session(Unknown Source)
	at hob.lau.BundleJWT.runSession(BundleJWT.java:657)
	at hob.lau.PaneLaunch.loadSess(PaneLaunch.java:2294)
	at hob.lau.PaneLaunch.load(PaneLaunch.java:2199)
	at hob.lau.PaneLaunch.onRun(PaneLaunch.java:1467)
	at hob.lau.PaneLaunch.actionPerformed(PaneLaunch.java:3008)
	at hob.tools.MList.fireActionEvent(MList.java:1267)
	at hob.tools.Grid.mouseClicked(Grid.java:594)
	at java.desktop/java.awt.Component.processMouseEvent(Component.java:6682)
	at java.desktop/java.awt.Component.processEvent(Component.java:6444)
	at java.desktop/java.awt.Component.dispatchEventImpl(Component.java:5049)
	at java.desktop/java.awt.Component.dispatchEvent(Component.java:4877)
	at java.desktop/java.awt.LightweightDispatcher.retargetMouseEvent(Container.java:4963)
	at java.desktop/java.awt.LightweightDispatcher.processMouseEvent(Container.java:4586)
	at java.desktop/java.awt.LightweightDispatcher.dispatchEvent(Container.java:4518)
	at java.desktop/java.awt.Container.dispatchEventImpl(Container.java:2310)
	at java.desktop/java.awt.Component.dispatchEvent(Component.java:4877)
	at java.desktop/java.awt.EventQueue.dispatchEventImpl(EventQueue.java:783)
	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:728)
	at java.desktop/java.awt.EventQueue$4.run(EventQueue.java:722)
	at java.base/java.security.AccessController.doPrivileged(AccessController.java:400)
	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:87)
	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:98)
	at java.desktop/java.awt.EventQueue$5.run(EventQueue.java:755)
	at java.desktop/java.awt.EventQueue$5.run(EventQueue.java:753)
	at java.base/java.security.AccessController.doPrivileged(AccessController.java:400)
	at java.base/java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:87)
	at java.desktop/java.awt.EventQueue.dispatchEvent(EventQueue.java:752)
	at java.desktop/java.awt.EventDispatchThread.pumpOneEventForFilters(EventDispatchThread.java:207)
	at java.desktop/java.awt.EventDispatchThread.pumpEventsForFilter(EventDispatchThread.java:128)
	at java.desktop/java.awt.EventDispatchThread.pumpEventsForHierarchy(EventDispatchThread.java:117)
	at java.desktop/java.awt.EventDispatchThread.pumpEvents(EventDispatchThread.java:113)
	at java.desktop/java.awt.EventDispatchThread.pumpEvents(EventDispatchThread.java:105)
	at java.desktop/java.awt.EventDispatchThread.run(EventDispatchThread.java:92)

could not load certificate file: Missing input stream
Warning: register lib failed for win/x86/hobjnirail.dll
Warning: register lib failed for win/x64/hobjnirail.dll
Warning: register lib failed for linux/x86/libx11rdpui_v5.so
Warning: register lib failed for linux/x86/libx11rdpui_v6.so
Warning: register lib failed for linux/x86_64/libx11rdpui_v6.so
Warning: register lib failed for freebsd/x86/libx11rdpui_v6.so
Warning: register lib failed for win/x86/winrdpui.dll
Warning: register lib failed for win/x64/winrdpui.dll
Warning: register lib failed for win/x86/HOBTwainApp.dll
Warning: register lib failed for win/x64/HOBTwainApp.dll
Warning: register lib failed for win/x86/JIIcon.dll
Warning: register lib failed for win/x64/JIIcon.dll
Warning: register resource failed for hob.sec.hlsecbundle
Warning: register resource failed for hob.sec.hlsecbundle
Warning: register lib failed for win/x86/speechmikecli.dll
Warning: register lib failed for win/x64/speechmikecli.dll
Warning: register lib failed for win/x86/hobjnisspi.dll
Warning: register lib failed for win/x64/hobjnisspi.dll
Warning: register lib failed for win/x86/hobjnidevnotif.dll
Warning: register lib failed for win/x64/hobjnidevnotif.dll
Warning: register lib failed for mac/x86/libhobjnidr.jnilib
Warning: register lib failed for mac/x86_64/libhobjnidr.jnilib
Warning: register lib failed for mac/ppc/libhobmacjni.jnilib
Warning: register lib failed for mac/x86/libhobmacjni.jnilib
Warning: register lib failed for mac/x86_64/libhobmacjni.jnilib
REGISTRATING MAC WSM 86
Warning: register lib failed for mac/x86/libhobjniwsm.jnilib
REGISTRATING MAC WSM 86_64
Warning: register lib failed for mac/x86_64/libhobjniwsm.jnilib
Warning: register lib failed for mac/x86_64/libmacrdpui.jnilib
Warning: register lib failed for mac/x86/libmacrdpui.jnilib
Warning: register lib failed for mac/x86/libhobjnigst.jnilib
Warning: register lib failed for mac/x86_64/libhobjnigst.jnilib
Warning: register lib failed for mac/x86_64/libhobjniffmpeg_v55.jnilib
Warning: register lib failed for mac/x86_64/libhobjniffmpeg_v56.jnilib
Warning: register resource failed for hob.media.ffmpeg.portable
Warning: register lib failed for mac/x86_64/libhobjniffmpeg_portable.jnilib
Warning: register lib failed for mac/x86/libhobjnimacscan.jnilib
Warning: register lib failed for mac/x86_64/libhobjnimacscan.jnilib
>>>>> loading fdselector from c_macjni.STR_RESOURCE_KEY(hob.comm.jnisysmac)
dsd_fdselector_native.create(): m_install_and_load_jnilib() has failed!
ago 28, 2026 11:57:38 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hltc.JHLTCres01_en (inglés)
ago 28, 2026 11:57:38 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hltc.JHLTCres01_de (alemán)
ago 28, 2026 11:57:38 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hltc.JHLTCres01_fr (francés)
ago 28, 2026 11:57:38 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hltc.JHLTCres01_es (español)
ago 28, 2026 11:57:38 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hltc.JHLTCres01_zh (chino)
ago 28, 2026 11:57:38 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hltc.JHLTCres01_ru (ruso)
ago 28, 2026 11:57:38 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hltc.JHLTCres01_pt (portugués)
ago 28, 2026 11:57:38 P. M. hob.tools.CHM getResourceBundle():666
INFORMACIÓN: Loaded resources hob.hltc.JHLTCres01_uk (ucraniano)
Error: Failed to read cached RDP options (java.io.FileNotFoundException: /Users/erwinpalma/hob_jportal/registry.xml (No such file or directory))
ago 28, 2026 11:57:38 P. M. hob.tools.C_jvmsupport15 get_http_proxies():60
INFORMACIÓN: No HTTP Proxy detected
searching for SSL files in /Users/erwinpalma/hob_jportal/hclient.cfg
searching for SSL files in /Users/erwinpalma/hob_jportal/globalconfig/default.cfg
searching for SSL files in /Users/erwinpalma/Documents/GitHub/mangoLauncher/mac/templates/default.cfg
  ```
</details>

## Versión Original

Estructura del diretorio `HOME` `hob_jportal`

```text
ll ~/hob_jportal
total 16
-rw-r--r--@ 1 erwinpalma  staff  227 28 ago 23:57 1user.hxml
drwxr-xr-x@ 3 erwinpalma  staff   96 28 ago 23:48 logs
-rw-r--r--@ 1 erwinpalma  staff   42 28 ago 23:48 userset.hxml
```

<details>
  <summary>Logs de librerías antigüas</summary>

  ### Some Javascript

  ```js
/erwinpalma/hob_jportal
2026-08-28 23:43:25.566	hob	hob.lau.JLaunch	mainEx():316	INFO	J-Term release file (rel102.gif)
2026-08-28 23:43:25.908	hob	hob.tools.CHM	getResourceAsStream():401	WARNING	CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/eval_en.gif	1001
2026-08-28 23:43:26.150	hob	hob.tools.CHM	getResourceAsStream():401	WARNING	CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/ver102.gif	1001
2026-08-28 23:43:28.667	hob	hob.lau.JLaunch	mainEx():330	INFO	HOB J-Term Version 1 0
2026-08-28 23:43:28.680	hob	hob.tools.CHM	getResourceBundle():666	INFO	Loaded resources hob.lau.res.RcLaunch_es (español)
2026-08-28 23:43:28.689	hob	hob.tools.CHM	loadNative():2653	INFO	JNI-File (/Users/erwinpalma/hob_jportal/hobjni.hxml  Version 0, 36814)
2026-08-28 23:43:28.689	hob	hob.tools.CHM	loadNative():2676	INFO	LoadNative - File "hob/dlls/hobjni.hxml" cannot be loaded. No support for (mac os x)
2026-08-28 23:43:28.694	hob	hob.tools.CHM	getResourceBundle():666	INFO	Loaded resources hob.hlc.res.RcHlSet_es (español)
2026-08-28 23:43:28.695	hob	hob.tools.CHM	get_startup_pnode():4359	INFO	Startup file=startup.xml	1030
2026-08-28 23:43:28.699	hob	hob.hlc.HlSetsvc	hConnect():775	INFO	HlSetSvc: classname hob.hlc.cipset
2026-08-28 23:43:30.063	hob.hlset	hob.hlc.cipset	getSocket():370	INFO	TCP-Connect to server localhost:13270 (connect via WSP! 54.156.237.41:443)	827601
2026-08-28 23:43:30.065	hob	hob.comm.WSP_Auth	connect_to():358	INFO	Connect to WSP: 54.156.237.41:443
2026-08-28 23:43:30.065	hob	hob.tools.C_jvmsupport15	get_http_proxies():60	INFO	No HTTP Proxy detected
2026-08-28 23:43:30.188	hob	hob.tools.CHM	getResourceBundle():666	INFO	Loaded resources hob.comm.res.RcDyn_es (español)
User specified log.properties not found at '/Users/erwinpalma/hob_jportal/logs' (/Users/erwinpalma/hob_jportal/logs/log.properties (No such file or directory))
Log load 'log.properties' from hob/props/log.properties
'log.properties' load successfully.
2026-08-28 23:43:30.198	hob	hob.ssl.hssldpro	HSSL_PrivExtInit()	INFO	HOBLink Secure SSL Software Module, Version 3.2 1.28, Rev. 9.0, 22.02.2018
SECDRBG - Confirmation coefficient in method A = 82.
2026-08-28 23:43:30.501	hob	hob.ssl.hssldpro	HSSL_PrivExtInit()	INFO	SECDRBG: Seed ok
2026-08-28 23:43:31.074	hob	hob.comm.sec	SSLConnect():595	INFO	Server Certificate: 10.0.10.145
2026-08-28 23:43:31.099	hob	hob.tools.CHM	getResourceBundle():666	INFO	Loaded resources hob.cuc.JSres01_es (español)
2026-08-28 23:43:31.257	hob	hob.comm.WSP_Auth	connect_to():429	INFO	WSP-Auth succesful. select server = null
2026-08-28 23:43:31.258	hob.hlset	hob.hlc.cipset	getSocket():373	INFO	TCP connection established to null	827602
2026-08-28 23:43:31.410	hob	hob.tools.CHM	getResourceBundle():666	INFO	Loaded resources hob.lau.res.RcCommon_es (español)
2026-08-28 23:43:31.410	hob	hob.lau.PaneLaunch	init():322	INFO	CABBASE(Productmask)=0xff , Components=0x187ff
2026-08-28 23:43:31.817	hob	hob.dhom.DhomSrv	startEx():84	WARNING	Dhom port not set for product H_DHOM_JTERM (Exception: 'boolean hob.comm.Hobjni.removeProductDHOMPort(java.lang.String)')
2026-08-28 23:43:31.817	hob	hob.lau.PaneLaunch	init():452	INFO	DHOM-server (/Users/erwinpalma/hob_jportal) started with port 0
2026-08-28 23:43:32.061	hob	hob.tools.CHM	getResourceAsStream():401	WARNING	CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/images/contpaqi-comer.png	1001
2026-08-28 23:43:32.301	hob	hob.tools.CHM	getResourceAsStream():401	WARNING	CHM - getResourceAsStream(): Could not open URL=https://54.156.237.41:443/public/lib/hob/images/contpaqi-comer.png	1001
2026-08-28 23:43:32.332	hob	hob.lau.PaneLaunch	autoRunSessions():1020	INFO	Sessions available in the launcher: 5
Product information: HOBLink JWT 4.1.1146
dsd_fdselector_native.create(): m_install_and_load_jnilib() has failed!
2026-08-28 23:43:41.477	hob	hob.tools.CHM	getResourceBundle():666	INFO	Loaded resources hob.hltc.JHLTCres01_es (español)
Error: Failed to read cached RDP options (java.io.FileNotFoundException: /Users/erwinpalma/hob_jportal/registry.xml (No such file or directory))
2026-08-28 23:43:41.618	hob	hob.tools.C_jvmsupport15	get_http_proxies():60	INFO	No HTTP Proxy detected
2026-08-28 23:43:41.740	hob	hob.ssl.hssldpro	HSSL_PrivExtInit()	INFO	HOBLink Secure SSL Software Module, Version 3.2 1.28, Rev. 9.0, 22.02.2018
2026-08-28 23:43:41.740	hob	hob.ssl.hssldpro	HSSL_PrivExtInit()	INFO	SECDRBG: Seed ok
2026-08-28 23:43:42.191	hob	hob.comm.sec	SSLConnect():595	INFO	Server Certificate: 10.0.10.145
hob.cuc.c_jssocks.doSocksHandshaking: Web Secure Proxy authentication failed (code=7)
Error: Failed to read cached RDP options (java.io.FileNotFoundException: /Users/erwinpalma/hob_jportal/registry.xml (No such file or directory))
2026-08-28 23:43:48.019	hob	hob.tools.C_jvmsupport15	get_http_proxies():60	INFO	No HTTP Proxy detected
2026-08-28 23:43:48.138	hob	hob.ssl.hssldpro	HSSL_PrivExtInit()	INFO	HOBLink Secure SSL Software Module, Version 3.2 1.28, Rev. 9.0, 22.02.2018
2026-08-28 23:43:48.138	hob	hob.ssl.hssldpro	HSSL_PrivExtInit()	INFO	SECDRBG: Seed ok
2026-08-28 23:43:48.600	hob	hob.comm.sec	SSLConnect():595	INFO	Server Certificate: 10.0.10.145
Supported Multimedia API's:
   1: c_multimediaapi_jsnd
get_kbdfile: str_db=JHLTCkeyspanish ds_urlwebsrv=null
c_keyboard_awt(): best matching is language=spanish, osname=Mac OS X, osversion=10.9.5, jvmvendor=Oracle Corporation, jvmversion=1.8.0_74, subname=
Unable to disable composition mode - Can't adjust composition mode on Mac OS X.
DRDYNVC warning: unsupported server version 3
  ```
</details>

## Script de lanzamiento

```bash
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
JAVAMAINCLASS="hob.lau2.JLaunchApplication"
#JAVAMAINCLASS="hob.lau.JLaunch"


XML_FILE="lib/hob/props/startup.xml"

HOST=$(xmllint --xpath 'string(/root/SrvListWSP/__0/host)' $XML_FILE)
PORT=$(xmllint --xpath 'string(/root/SrvListWSP/__0/port)' $XML_FILE)
URL="https://"$HOST:$PORT

APPARGS="-a102 -sstartup.xml -l$URL/public/lib  -urdvpn\demo -rY "

if [ ! -d www ]; then
    mkdir www
fi
if [ ! -d lib/sslpublic ]; then
    mkdir lib/sslpublic
fi

# curl --insecure -s $URL/public/lib/rel102.gif --output www/rel102.gif > /dev/null && \
curl --insecure -s $URL/public/lib/sslpublic/hclient.cdb --output lib/sslpublic/hclient.cdb > /dev/null && \
curl --insecure -s $URL/public/lib/sslpublic/hclient.cfg --output lib/sslpublic/hclient.cfg > /dev/null && \
curl --insecure -s $URL/public/lib/sslpublic/hclient.pwd --output lib/sslpublic/hclient.pwd > /dev/null

$JAVA $JAVAARGS -cp $CLASSPATH $JAVAMAINCLASS $APPARGS 

exit
```

## Que se espera.

Que el aplicativo genere los archivos escenciales para su buen funcionamiento.