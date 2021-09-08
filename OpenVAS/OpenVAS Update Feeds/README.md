# OpenVAS Update Feeds Automático

### Passo a passo para script do OpenVAS Update Feeds Automático ####

⭐ Acesse o Blog : ["Acesso 8 "](https://acesso8.blogspot.com)

⭐ Acesse o Canal do YouTube : ["YouTube Acesso 8"](http://www.youtube.com/channel/UCh6CzOE6aWxy_5RYG4To88g?sub_confirmation=1)

O Procedimento demostra como configurar o Script OpenVas_UpdateFeeds para realizar a atualizaçao dos Feeds do OpenVAS automaticamente. 

## Configurando o Script OpenVas_UpdateFeeds

Segue: 

1 - Crie o diretório "Script"

    mkdir Script

2 - Acesse o diretório "Script"

    cd Script

3 - Download do Script OpenVAS_UpdateFeeds.sh
    
    wget -c https://raw.githubusercontent.com/duli0810/ShellScriptPublic/main/OpenVAS/OpenVAS%20Update%20Feeds/OpenVAS_UpdateFeeds.sh

⚠️ Atenção: No Debian, o comando deve ser executado como usuário _gvm: sudo runuser -u _gvm - greenbone-nvt-sync 
         
   *Faça alteração no script do comando "sudo greenbone-nvt-sync" para:* 
         
     sudo runuser -u _gvm - greenbone-nvt-sync

7 - Torne o Script "OpenVAS_UpdateFeeds.sh" executável:

    chmod a+x ./OpenVAS_UpdateFeeds.sh
    
8 - Verifique o home do Usuario atual onde o script foi salvo:

    pwd
    
10 - Crie uma tarefa no crontab

    crontab -e
    
*No meu exemplo o script irá rodar todos os dias a 00:00  
    
    0 0 * * * <Informe o home do Usuario>/Script/OpenVAS_UpdateFeeds.sh
   
👉 No Contrab a ordem é:  Minutos / Horas / Dias do mês / Mês / Dias da semana  e o "*" significa Todos 

   

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
