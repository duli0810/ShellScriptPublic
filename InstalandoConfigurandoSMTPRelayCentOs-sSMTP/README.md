# Instalando e Configurando SMTP Relay no CentOs - sSMTP

### Passo a passo do script de Port Scan ####

⭐ Acesse o Blog : ["Acesso 8 "](https://acesso8.blogspot.com)

⭐ Acesse o Canal do YouTube : ["Acesso 8 - YouTube"](http://www.youtube.com/channel/UCh6CzOE6aWxy_5RYG4To88g?sub_confirmation=1)

O Procedimento demostra como instalar e configurar o SMTP Relay no CentOs através do sSMPT, usuaremos o um GMail para realizar o envio dos e-mail.

*Com SMTP Relay, podemos integra-lo a uma aplicação ou script, como forma de envio de alertas, relatório e etc...*

⚠️ Atenção: *Caso apresente erro no funcionamento deste procedimento, provavelmente é a falta do  "EPEL repository", para isso instale:*

    yum install epel-release

## Instalando e Configurando sSMTP 

Segue: 

1 - Instalando o "mail command" ( Conjunto de utilitários e daemons para processamento de e-mails )
    
    yum install mailx -y
        
2 - Instalando o sSMTP ( O sSMTP é um MTA simples, que envia e-mails para servidor SMTP )

💡 IMPORTANTE: MTA (Mail Transfer Agent ) => Agente responsavél por enviar e-mails. 

    yum install ssmtp -y
    
3 - Editando o Conf. do sSMTP 

    vim /etc/ssmtp/ssmtp.conf
 
 *Insirá as informações abaixo no .conf*
 
    TLS_CA_File=/etc/pki/tls/certs/ca-bundle.crt
    FromLineOverride=YES
    root=<seu_e-mail@gmail.com>
    mailhub=smtp.gmail.com:587
    AuthUser=<seu_e-mail@gmail.com>
    AuthPass=<sua_senha_do_e-mail>
    UseTLS=YES
    UseSTARTTLS=YES
    
4 - Tornar o sSMPT o MTA padrão    

    mv /usr/sbin/sendmail /usr/sbin/sendmail.bck
    
    ln -s /usr/sbin/ssmtp /usr/sbin/sendmail

## GMail "Permitir aplicativos menos seguros" 

1 - Acesse sua conta do Gmail 
    
    
2 - Acesse Link abaixo e ative a opção

    https://www.google.com/settings/security/lesssecureapps

3 - Acesse Link abaixo e clique em Continuar.

    https://accounts.google.com/DisplayUnlockCaptcha
    
## Enviando e-mail de Teste

    echo "<corpo do e-mail>" | mail -s "<assunto>" <e-mail_destinatário>
    
🔎 Para ver processo sendo executado durante o envio do e-mail, basta acrescentar "-v":

    echo "<corpo do e-mail>" | mail -v -s "<assunto>" <e-mail_destinatário>
    

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
