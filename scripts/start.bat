@echo off
:: Mostrar mensaje de inicio
echo -------------------------------------------------
echo Iniciando el proyecto Tutores...
echo -------------------------------------------------

:: Iniciar los contenedores en segundo plano
docker-compose up -d --build

:: Mensaje indicando que el proyecto está corriendo
echo -------------------------------------------------
echo Proyecto Ingeso en ejecución.
echo Frontend: http://localhost:3000
echo Backend: http://localhost:3001
echo -------------------------------------------------
echo Presiona CTRL+C para detener el proyecto y cerrar los contenedores.

:: Mantener la ventana abierta hasta que se cierre manualmente
:loop
timeout /t 10 >nul
goto loop

:: Este código se ejecutará cuando se cierre la ventana
:cleanup
echo Deteniendo y limpiando contenedores...
docker-compose down
exit
