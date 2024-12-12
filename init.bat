@echo off
:: Mostrar mensaje de inicio
echo -------------------------------------------------
echo Iniciando la instalación del proyecto Ingeso...
echo -------------------------------------------------

:: Cambiar al directorio del frontend
cd FrontIngeso\cliente

:: Instalar las dependencias del frontend
echo Instalando dependencias del Frontend...
npm install

:: Limpiar e instalar dependencias según package-lock.json
echo Verificando dependencias (npm ci)...
npm ci

:: Construir el proyecto Next.js
echo Construyendo el proyecto Next.js...
npx next build

:: Regresar al directorio raíz
cd..\..

:: Cambiar al directorio del backend
cd BackIngeso\server

:: Instalar las dependencias del backend
echo Instalando dependencias del Backend...
npm install

:: Regresar al directorio raíz
cd..\..

:: Mostrar mensaje de finalización
echo -------------------------------------------------
echo El programa ha sido instalado correctamente.
echo Ahora puedes ejecutar el sistema utilizando start.bat
echo -------------------------------------------------
pause
