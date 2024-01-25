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
del logdow3c.txt
echo --------------------------------------------- >> C:\CCM_Atualiza\logdow3c.txt
echo Inicio do Download Data e Hora ! >> C:\CCM_Atualiza\logdow3c.txt
date /t >> C:\CCM_Atualiza\logdow3c.txt
time /t >> C:\CCM_Atualiza\logdow3c.txt
echo --------------------------------------------- >> C:\CCM_Atualiza\logdow3c.txt
c:\CCM_Atualiza\upgrad\Aria\aria2c https://distribuicao.blob.core.windows.net/dms/DVI/Versoes/v5.13/Pacote_Evolutivo/DVI_Pacote_Evolutivo_APOLLO_v5.13_3Camadas_Client.zip -d c:\CCM_Atualiza\upgrad\
c:\CCM_Atualiza\upgrad\Aria\aria2c https://distribuicao.blob.core.windows.net/dms/DVI/Versoes/v5.13/Pacote_Evolutivo/DVI_Pacote_Evolutivo_APOLLO_v5.13_3Camadas_Server.zip -d c:\CCM_Atualiza\upgrad\
cd upgrad
ren DVI_Pacote_Evolutivo_APOLLO_v5.13_3Camadas_Client.zip DVI_Atualizacoes_APOLLO_v5.13_3Camadas_Client.zip
ren DVI_Pacote_Evolutivo_APOLLO_v5.13_3Camadas_Server.zip DVI_Atualizacoes_APOLLO_v5.13_3Camadas_Server.zip
cd ..
echo --------------------------------------------- >> C:\CCM_Atualiza\logdow3c.txt
echo Fim do Download Data e Hora ! >> C:\CCM_Atualiza\logdow3c.txt
date /t >> C:\CCM_Atualiza\logdow3c.txt
time /t >> C:\CCM_Atualiza\logdow3c.txt
echo --------------------------------------------- >> C:\CCM_Atualiza\logdow3c.txt
cd ..
cd ..
cd ..
cd ..
cd C:\inetpub\wwwroot\
del Apollo_3Camadas_Client.zip
curl -O https://distribuicao.blob.core.windows.net/dms/DVI/Versoes/v5.13/Pacote_Evolutivo/DVI_Pacote_Evolutivo_APOLLO_v5.13_3Camadas_Client.zip
ren DVI_Pacote_Evolutivo_APOLLO_v5.13_3Camadas_Client.zip DVI_Atualizacoes_APOLLO_v5.13_3Camadas_Client.zip
ren DVI_Atualizacoes_APOLLO_v5.13_3Camadas_Client.zip Apollo_3Camadas_Client.zip
call c:\CCM_Atualiza\upgrad\01-LinxDMS.bat
ENDLOCAL
EXIT
