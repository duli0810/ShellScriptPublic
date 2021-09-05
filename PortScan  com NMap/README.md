# Script - PortScan automátizado com NMap

### Passo a passo do script de Port Scan ####

Acesse o Blog e veja o passo a passo: ["ShellScript - PortScan automátizado com NMap"](https://acesso8.blogspot.com/2021/05/portscan-automatizado-com-nmap.html)

O Script irá verificar as portas abertas dos servidores listados no arquivo "ip.txt" automáticamente, gerando um arquivo "IP".txt para cada IP listado com o resultado das portas abertas.
 
#

Segue: 

1 - Instale o NMap na sua distribuição Linux, neste exemplo estou utilizando o CentOS, mas segue para demais:
    
    yum install nmap         =>  Linux baseadas em RHEL
    
    sudo apt install nmap    =>  Debian e derivados

2 - Crie o diretório "Script"

    mkdir Script
    
3 - Acesse o diretório "Script"

    cd Script
    
4 - Crie o diretório "PortScan" ( Neste diretório estará o resultado do scan )    

    mkdir PortScan

 5 - Crie o arquivo "ip" e adicione o (os) IP (s) a serem scaneados: 
 
    vim ip.txt
    
    <digite o (os) IP (s)>
    
    :wq!
⚠️ IMPORTANTE: No arquivo "ip.txt" colocará os ips dos servidores a serem scaniado, um abaixo do outro;     
    
6 - Download do Script "PortScanByNMap.sh"

    wget -c https://raw.githubusercontent.com/duli0810/ShellScriptPublic/main/PortScan%20%20com%20NMap/PortScanByNMap.sh

7 - Torne o Script "PortScanByNMap.sh" executável:

    chmod a+x ./PortScanByNMap.sh
    
8 - Verifique o home do Usuario atual onde o script foi salvo:

    pwd
    
9  - No script "PortScanByNMap.sh" edite home do Usuario. Faça a leitura dos comentários (#)

#Informe o home do Usuario Ex.: /root ( para root ) ou /home/acesso8 ( para um não SuperUsuario )

    vim PortScanByNMap.sh

10 - Crie uma tarefa no crontab

    crontab -e
    
*No meu exemplo o script irá rodar todos os dias a 00:00  
    
    0 0 * * * <Informe o home do Usuario>/Script/PortScanByNMap.sh
   
👉 No Contrab a ordem é:  Minutos / Horas / Dias do mês / Mês / Dias da semana  e o "*" significa Todos     


⌛ Após a execução do contrab, basta acessar o diretório "PortScan" e verificar o resultado

#
E pronto! Feito o scan diário dos seus servidores!
#

<ul align="center"> 
  <p><b>Siga-me nas Redes Socias:</b>.</p>

  <p>👇👇👇</p>
</ul>  
  
 ##
<div align="center"> 
  <a href = "https://acesso8.blogspot.com/"><img src="https://i.imgur.com/T01dNPP.png" target="_blank"></a>
  <a href="http://www.youtube.com/channel/UCh6CzOE6aWxy_5RYG4To88g?sub_confirmation=1" target="_blank"><img src="https://i.imgur.com/Hp8VxZO.png" target="_blank"></a>
  <a href="https://twitter.com/8Acesso" target="_blank"><img src="https://i.imgur.com/NQZ8fjf.png" target="_blank"></a>
  <a href="https://www.linkedin.com/in/eduardo-rodrigues-da-silva-78895a25/" target="_blank"><img src="https://i.imgur.com/FRMLFvm.png" target="_blank"></a>
</div>
