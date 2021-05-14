# Script - PortScan automátizado com NMap

### Passo a passo do script de Port Scan ####


O Script irá verificar as portas abertas dos servidores listados no arquivo "ip.txt". 

IMPORTANTE: 
            - No arquivo "ip.txt" colocará os ips dos servidores a serem scaniado, uma abaixo do outro;  

Segue: 

1 - Instale o NMap na sua distribuição Linux, neste exemplo estou utilizando o CentOS, mas segue para demais:
    
    yum install nmap         =>  Linux baseadas em RHEL
    
    sudo apt install nmap   =>  Debian e derivados


2 - Edite o script com os repositórios para Script "PortScanByNMap.sh", o arquivo "ip.txt" e do Log ( resultado do Scan ). 
OBS.: Para este Script foi criado dois diretório um chamado "Script" e o outro de "PortScan" dentro /home/<perfil>/ . Dentro do diretório Script foi posto o script "PortScanByNMap.sh" mais o arquivo "ip.txt" , o diretório "PortScan" servira para receber os logs ( resultado do Scan ). 

3 - Torne o Script "PortScanByNMap.sh" executável:

    chmod a+x /home/<perfil>/Script/PortScanByNMap.sh

4 - Crie uma tarefa no crontab

    crontab -e
    
*No meu exemplo o script irá rodar todos os dias a 00:00  
    
    0 0 * * * /home/<perfil>/Script/PortScanByNMap.sh

E pronto! Feito o scan diário dos seus servidores!


Acesse o Blog e veja o passo a passo: 
https://acesso8.blogspot.com/2021/05/portscan-automatizado-com-nmap.html
