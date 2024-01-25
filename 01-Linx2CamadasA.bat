@echo off
color 0a
echo ====================================================================
echo AGUARDE ENQUANTO BAIXA OS PACOTES !!!
echo AGUARDE.....................................
echo ====================================================================
c:
cd ..
cd ..
cd ..
cd ..
cd ..
cd CCM_Atualiza
del C:\CCM_Atualiza\progress.dat
echo 00 >> C:\CCM_Atualiza\progress.dat
del logdow2c.txt
echo --------------------------------------------- >> C:\CCM_Atualiza\logdow2c.txt
echo Inicio do Download Data e Hora ! >> C:\CCM_Atualiza\logdow2c.txt
date /t >> C:\CCM_Atualiza\logdow2c.txt
time /t >> C:\CCM_Atualiza\logdow2c.txt
echo --------------------------------------------- >> C:\CCM_Atualiza\logdow2c.txt
c:\CCM_Atualiza\upgrad\Aria\aria2c https://distribuicao.blob.core.windows.net/dms/DVI/Versoes/v5.13/Pacote_Evolutivo/DVI_Pacote_Evolutivo_APOLLO_v5.13.zip -d c:\CCM_Atualiza\upgrad\
cd upgrad 
ren DVI_Pacote_Evolutivo_APOLLO_v5.13.zip DVI_Atualizacoes_Apollo_v5.13.zip
cd ..
echo --------------------------------------------- >> C:\CCM_Atualiza\logdow2c.txt
echo Fim do Download Data e Hora ! >> C:\CCM_Atualiza\logdow2c.txt
date /t >> C:\CCM_Atualiza\logdow2c.txt
time /t >> C:\CCM_Atualiza\logdow2c.txt
echo --------------------------------------------- >> C:\CCM_Atualiza\logdow2c.txt
call c:\CCM_Atualiza\upgrad\01-Linx3Camadas.bat
ECHO.
ENDLOCAL
EXIT
