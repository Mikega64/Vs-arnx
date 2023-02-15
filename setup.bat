@echo off
title FNF Libreries Setup
echo Asegurate tener Haxe 4.1.5 instalado, y que este se encuentre en la ruta C:\HaxeToolkit
echo Si no es asi, puede que el programa no funcione.
pause >nul
echo Tambien recomendamos que ejecutes este programa como administrador para evitar inconvenientes.
pause >nul
title FNF Setup - Instalando librerias
echo Instalando librerias haxelib...
haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib install flixel-addons
haxelib install flixel-ui
haxelib install hscript
haxelib install linc_luajit
haxelib install newgrounds
haxelib run lime setup
haxelib install flixel-tools
title FNF Setup
cls
haxelib run flixel-tools setup
cls
echo Asegurate tener git instalado. Puedes descargarlo en la pagina oficial git-scm.com
pause >nul
title FNF Setup - Instalando librerias
haxelib git polymod https://github.com/PabloelproxD210/Polymod
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git flixel-addons https://github.com/HaxeFlixel/flixel-addons
cls
goto UserActions2

:UserActions2
cls
title FNF Funkin Master
set /p menu2="Quieres que cree el archivo APIStuff.hx automaticamente?. [y/n]"
       if %menu2%==y goto APIStuffYes
       if %menu2%==n goto KadeEngine
       cls
       
:APIStuffYes
echo Asegurate de haber guardado este programa en tu carpeta con el codigo fuente de FNF
echo Si no lo haces puede que esta opcion no funcione.
pause >nul
rem Stores the APIStuff.hx contents automatically
cd source
(
echo package;
echo class APIStuff
echo {
echo         public static var API:String = "";
echo         public static var EncKey:String = "";
echo }
)>APIStuff.hx
cd ..
goto KadeEngine

:KadeEngine
title FNF KADE ENGINE Setup
cls
set /p menu3="Esta usando Kade Engine para su mod?. [y/n]"
       if %menu3%==y goto KadeEngineLibs
       if %menu3%==n exit
       cls

:KadeEngineLibs
title FNF Kade Engine Setup - Instalando librerias
echo Estamos instalando las librerias necesarias para el correcto funcionamiento de Kade Engine.
haxelib install actuate
haxelib git extension-web https://github.com/KadeDev/extension-webm
haxelib git extension-webm https://github.com/GrowtopiaFli/extension-webm
lime rebuild extension-webm windows
echo Hemos terminado, puedes cerrar tu programa ya mismo.
pause >nul
exit
