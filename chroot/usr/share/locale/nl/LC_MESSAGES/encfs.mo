��    z      �  �   �      H
     I
  ]   i
  .   �
  1   �
  1   (  (   Z  "   �  '   �  -   �  �   �  R   �      �              (  *   ;  )   f     �     �  B   �  >        A  S   U  P  �     �  )     2   9  -   l     �  �   �  U   �  S   �     *     I  6   `     �     �     �  /   �  .     #   ?     c  j     <   �  (   '  )   P  *   z  )   �  /   �  .   �  (   .     W  .   j  3   �  +   �  &   �        #   >     b     t     �  #   �  (   �  #   �  (   
  #   3     W  �   l  �     2   �      !  *   B  �   m  �   5     �  �   �     l     �  l   �        5   &  :   \  ?   �  �  �  :   g  .   �  9   �  ?      0   K   9   |      �   *   �   4   �   %   3!  8   Y!  ;   �!  $   �!  '   �!  *   "  *   F"     q"  @   y"  '   �"     �"     �"  '   #  '   <#  5   d#  !   �#  M   �#  !   
$     ,$  \   J$     �$     �$     �$  {   �$     `%     q%  +   �%  4   �%  �  �%  #   �'  m   	(  >   w(  V   �(  L   )  :   Z)  %   �)  )   �)  9   �)  �   *  j   �*  "   :+  P  ]+     �,     �,  1   �,  1   -     C-     ]-  @   v-  B   �-     �-  k   .  �  z.     0  *   0  3   D0  :   x0     �0  �   �0  l   �1  h   2  .   2     �2  8   �2     �2  "   3  !   23     T3  G   o3  4   �3     �3  n   
4  X   y4  2   �4  ,   5  ;   25  :   n5  4   �5  >   �5  :   6     X6  -   e6  1   �6  )   �6  $   �6     7  !   07     R7     g7     w7  #   �7  '   �7  +   �7  %   8  0   -8     ^8  �   w8  �   C9  ;   :  !   S:  D   u:  �   �:  �   x;     <  �   <     �<     �<  �   =  *   �=  5   �=  9   >  =   A>  �  >  U   @  2   t@  8   �@  j   �@  5   KA  A   �A     �A  9   �A  8   B  E   NB  N   �B  p   �B  0   TC  4   �C  4   �C  2   �C  	   "D  A   ,D  0   nD  )   �D     �D  *   �D  *   E  7   ?E  *   wE  U   �E  .   �E     'F  X   =F     �F     �F     �F  �   �F     lG     |G  :   �G  8   �G            ,           V      <      .      r   j   4   l   ;              6   -   q   L   J   ^      >      x   w   #           W   h       =   ]          X       n      8                    b   `   $   G   t      v   Q       5      g          '       S      +   k   M      y       R   
   :   D   A   0   Z   f       E       a   	   *   &          p              I       %   C   z          e   ?   P       T   9      K   c           \   !   U      [   2   B   /              H                  "   i   O          s   3   Y       F   _       o       (   7       1                  u       N      @   m              )   d      -- change password for volume   -- change password for volume, taking password from standard input.
	No prompts are issued.   -- decodes name and prints plaintext version   -- decodes the file and cats it to standard out   -- decrypts a volume and writes results to path   -- encodes a filename and print result   -- print version number and exit   -- show information (Default command)   -- show undecodable filenames in the volume   --extpass=program	Use external program for password prompt

Example, to mount at ~/crypt with raw storage in ~/.crypt :
    encfs ~/.crypt ~/crypt

   --public		act as a typical multi-user filesystem
			(encfs must be run as root)
   --reverse		reverse encryption
   -v, --verbose		verbose: output encfs debug messages
  -i, --idle=MINUTES	Auto unmount after period of inactivity
  --anykey		Do not verify correct key is being used
  --forcedecode		decode data even if an error is detected
			(for filesystems using MAC block headers)
  (NOT supported)
  (using %i:%i:%i)
  -- Supports block sizes of %i to %i bytes  -- Supports key lengths of %i to %i bits  -- block size %i bytes  -- key length %i bits %s (root dir)
  -- displays information about the filesystem, or 
 -------------------------- WARNING --------------------------
 8 byte block cipher A really old EncFS filesystem was found. 
It is not supported in this EncFS build.
 Add random bytes to each block header?
This adds a performance penalty, but ensures that blocks
have different authentication codes.  Note that you can
have the same benefits by enabling per-file initialization
vectors, which does not come with as great of performance
penalty. 
Select a number of bytes, from 0 (no random bytes) to 8:  Block Size: %i bytes Block Size: %i bytes + %i byte MAC header Block Size: %i bytes, including %i byte MAC header Block encoding, hides file name size somewhat Build: encfs version %s Common Options:
  -H			show optional FUSE Mount Options
  -s			disable multithreaded operation
  -f			run in foreground (don't spawn daemon).
			Error messages will be sent to stderr
			instead of syslog.
 Config subversion %i found, but this version of encfs only supports up to version %i. Configuration finished.  The filesystem to be created has
the following properties: Creating new encrypted volume. Directory not created. Each file contains 8 byte header with unique IV data.
 EncFS Password:  Enter current Encfs password
 Enter new Encfs password
 Enter the number corresponding to your choice:  Error decoding volume key, password incorrect
 Error saving modified config file.
 Example: 
%s info ~/.crypt
 External chained IV disabled, as both 'IV chaining'
and 'unique IV' features are required for this option. Failure generating new volume key! Please report this error. File data IV is chained to filename IV.
 Filename encoding: "%s", version %i:%i:%i Filenames encoded using IV chaining mode.
 Filesystem cipher: "%s", version %i:%i:%i For more information, see the man page encfs(1) Found %i invalid file. Found %i invalid files. Found config file %s, but failed to load In directory %s: 
 Incorrect number of arguments for command "%s" Internal error: Caught exception from main loop: %s Internal error: Caught unexpected exception Internal error: failed to exec program Internal error: fork() failed Internal error: socketpair() failed Invalid password
 Invalid selection. Key Size: %i bits MAC comparison failure in block %li MAC comparison failure, refusing to read Manual configuration mode selected. Missing one or more arguments, aborting. Name coding interface not supported New Encfs Password:  Note: requested single-threaded mode, but an idle
timeout was specified.  The filesystem will operate
single-threaded, but threads will still be used to
implement idle checking. Now you will need to enter a password for your filesystem.
You will need to remember this password, as there is absolutely
no recovery mechanism.  However, the password can be changed
later using encfsctl.

 Paranoia configuration not supported for --reverse Paranoia configuration selected. Passwords did not match, please try again
 Please choose from one of the following options:
 enter "x" for expert configuration mode,
 enter "p" for pre-configured paranoia mode,
 anything else, or an empty line will select standard mode.
?>  Please select a key size in bits.  The cipher you have chosen
supports sizes from %i to %i bits in increments of %i bits.
For example:  Remount failed Select a block size in bytes.  The cipher you have chosen
supports sizes from %i to %i bytes in increments of %i.
Or just hit enter for the default (%i bytes)
 Selected algorithm "%s" Selected key size:  Sorry, unable to locate cipher for predefined configuration...
Falling through to Manual configuration mode. Standard configuration selected. Stream encoding, keeps filenames as short as possible The configuration loaded is not compatible with --reverse
 The directory "%s" does not exist. Should it be created? (y,n)  The external initialization-vector chaining option has been
enabled.  This option disables the use of hard links on the
filesystem. Without hard links, some programs may not work.
The programs 'mutt' and 'procmail' are known to fail.  For
more information, please see the encfs mailing list.
If you would like to choose another configuration setting,
please press CTRL-C now to abort and start over. The filename encoding interface requested is not available The following cipher algorithms are available: The following filename encoding algorithms are available: The raw directory may not be a subdirectory of the mount point. The requested cipher interface is not available
 The requested filename coding interface is not available
 Unable to create directory:  Unable to find cipher %s, version %i:%i:%i Unable to find nameio interface %s, version %i:%i:%i Unable to find specified cipher "%s"
 Unable to initialize encrypted filesystem - check path.
 Unable to instanciate cipher %s, key size %i, block size %i Unable to load or parse config file
 Unable to locate mount point, aborting. Unable to locate root directory, aborting. Unmounting filesystem %s due to inactivity Usage:
 Usage: %s [options] rootDir mountPoint [-- [FUSE Mount Options]] Using filesystem block size of %i bytes Using key size of %i bits Verify Encfs Password:  Version 3 configuration; created by %s
 Version 4 configuration; created by %s
 Version 5 configuration; created by %s (revision %i)
 Volume Key successfully updated.
 When specifying daemon mode, you must use absolute paths (beginning with '/') Zero length password not allowed
 directory %s does not exist.
 encfs [options] rootDir mountPoint -- [FUSE Mount Options]
valid FUSE Mount Options follow:
 encfs version %s encfsctl version %s filesystem block size:  fuse failed.  Common problems:
 - fuse kernel module not installed (modprobe fuse)
 - invalid options -- see usage message
 getopt error: %i invalid command: "%s" option '--public' ignored for non-root user truncate failure: read %i bytes, partial block of %i Project-Id-Version: Encrypted Filesystem for Linux
Report-Msgid-Bugs-To: vgough@pobox.com
POT-Creation-Date: 2010-11-18 00:12-0800
PO-Revision-Date: 2008-03-03 10:58+0000
Last-Translator: Joram Pereira <joramrp@gmail.com>
Language-Team: Dutch <nl@li.org>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2010-06-17 04:44+0000
X-Generator: Launchpad (build Unknown)
X-Rosetta-Version: 0.1
   --verander wachtwoord voor schijf   --verander wachtwoord voor schijf, neem het wachtwoord van de standaard invoer
	Er zal niks gevraagd worden   -- decodeert de naam en geeft de versie weer in platte tekst   -- decodeer een bestand en geef het resultaat terug op het standaard uitvoerapparaat   -- decodeert een volume en schrijft de resultaten weg naar een bestandspad   -- codeert een bestandsnaam en geeft het resultaat terug   -- toont het versie nummer en stopt   -- toon informatie (Standaard commando)   -- toont niet decodeerbare bestandsnamen op deze schijf   --extpass=programma	Gebruik een extern programma voor het vragen van het password
Voorbeeld, om ~/crypt te mounten met ruwe opslag in ~/.crypt :
    encfs ~/.crypt ~/crypt

   --public		act als een typisch bestandssysteem voor meerdere gebruikers
			(encfs moet als root draaien)
   --reverse		omgekeerde encryptie
   -v, --verbose		verbose: geeft encfs debug berichten
  -i, --idle=MINUTEN	Automatisch unmounten nadat een bepaalde tijd geen activiteit is geweest
  --anykey		Verifieer de gebruikte sleutel niet
  --forcedecode		Decodeer de data zelfs wanneer er een fout wordt geconstanteerd
			(voor bestandssystemen die MAC block headers gebruiken)
  (NIET ondersteund)
  (%i:%i:%i wordt gebruikt)
  -- Ondersteunt blok groottes van %i tot %i bytes  -- Ondersteunt sleutellengtes van %i tot %i bits  -- blok grootte %i bytes  --sleutellengte %i bits %s (hoofdmap)
  --toont informatie over het bestandssysteem of 
 -------------------------- WAARSCHUWING -------------------------
 8 byte blok sleutel Er werd een erg oud EncFS bestandsysteem aangetroffen. 
Het wordt door deze EncFS versie niet ondersteund!
 Voeg willekeurige bytes toe aan de header van ieder blok?
Dit leidt tot een verminderde performance van het systeem, maar ieder blok
heeft hierdoor verschillende authenticatie codes. P.s je kunt
dezelfde voordelen bereiden door per-bestands initialisatie 
vectoren te activeren, wat een kleinere performance vermindering geeft. 
Kies het aantal random bytes, van 0 (geen random bytes) tot 8:  Blokgrootte: %i bytes Blokgrootte: %i bytes + %i byte MAC header Blokgrootte: %i bytes, inclusief %i byte MAC header Blok codering, verbergt grootte van bestandsnaam enigszins Build: encfs versie %s Algemene opties:
  -H			toon optionele FUSE Mount opties
  -s			schakel multithread modus uit
  -f			raai op de voorgrond (niet als daemon).
			Foutmeldingen zullen naar stderr gestuurd worden
			in plaats van naar syslog
 Configuratiebestand van sub-versie %i gevonden, maar deze versie van encfs ondersteunt alleen tot versie %i. De configuratie is afgelopen. Het bestandssysteem dat wordt aangemaakt 
heeft de volgende eigenschappen: Een nieuw versleuteld volume wordt aangemaakt. Map niet aangemaakt. Elk bestand bevat een 8 byte header met unieke IV data.
 EncFS wachtwoord:  Geef huidig wachtwoord voor Encfs
 Geef nieuw wachtwoord voor Encfs
 Typ het gekozen getal in:  De volume key kan niet gedecodeerd worden, het wachtwoord is incorrect
 Fout bij opslaan van aangepast configuratiebestand.
 Voorbeeld: 
%s info ~/.crypt
 Externe chained IV uitgeschakeld, omdat 'IV chaining'
en 'unique IV' eigenschappen nodig zijn voor deze optie. Aanmaken van nieuwe volumesleutel is mislukt! U wordt verzocht deze fout te rapporteren. Bestand data IV is gekoppeld aan bestandsnaam IV.
 Bestandsnaam codering: "%s", versie %i:%i:%i Bestandsnamen die gecodeerd zijn met een IV koppelmethode.
 Bestandssysteem versleutelalgoritme: "%s", versie %i:%i:%i Voor meer informatie, zie de man pagina van encfs(1) %i ongeldig bestand gevonden. %i ongeldige bestanden gevonden. configuratiebestand %s gevonden, maar kon het niet inlezen In map %s: 
 Verkeerd aantal argumenten voor commando "%s" Interne fout: Caught exception from main loop: %s Interne fout: Caught unexpected exception Interne fout: failed to exec program Interne fout: fork() failed Interne fout: socketpair() failed Ongeldig wachtwoord
 Ongeldige keuze Sleutelgrootte: %i bits MAC vergelijkings fout in block %li MAC vergelijkings fout, lezen geweigerd De handmatige configuratie is geselecteerd. Mis een of meerdere argumenten, stop. De naamcoderingsinterface wordt niet ondersteund Nieuw EncFS wachtwoord:  Note: single-threaded mode is aangevraagd, maar een idle 
timeout is gespecificeerd. Het bestandssysteem zal 
single-treaded werken, maar threads zullen gebruikt
worden om idle checking te implementeren. Voer nu een wachtwoord in voor uw bestandsyssteem.
Dit wachtwoord moet u onthouden, omdat dit later absoluut 
niet meer opgevraagd kan worden. Het wachtwoord kan
echter later wel veranderd worden met encfsctl.

 Paranoia-configuratie wordt niet ondersteund voor --reverse De paranoia mode is geselecteerd. De wachtwoorden komen niet overeen, probeer het alstublieft opnieuw
 Kies de volgende optie:
 kies "x" voor de expert configuratie mode, 
 kies "p" voor de voorgeconfigureerde paranoia mode.
 Iedere andere keuze of een lege regel kiest de standaard mode.
?>  Kies een sleutelgrootte in bits. Het door jou gekozen algoritme
ondersteunt groottes van %i tot %i bits in stappen van %i bits.
Bijvoorbeeld:  Opnieuw mounten mislukt Kies een blok grootte in bytes. Het algoritme dat je gekozen hebt
ondersteunt groottes van %i tot %i bytes in stappen van %i.
Of druk op de enter toets voor de standdaard waarde (%i bytes).
 Gekozen algoritme "%s" kies een sleutel grootte:  Sorry, het versleutelalgoritme voor de vooraf gedefinieerde configuratie kan niet gevonden worden...
De handmatige configuratie mode wordt opgestart. De standaard configuratie is geselecteerd. Stream codering, houdt bestandsnamen zo kort mogelijk De geladen configuratie is niet compatibel met --reverse
 De map "%s" bestaat niet. Moet deze aangemaakt worden? (y,n)  De externe initialisatie-vector ketting optie is 
aangezet. Deze optie schakelt harde koppelingen op het bestandssysteem uit.
Zonder harde koppelingen, kunnen sommige programma's niet werken.
De programma's 'mutt' en 'procmail' werken zeker niet. Voor
meer informatie kunt u naar de encfs mailing lijst gaan.
Als je een andere configuratie optie wilt kiezen 
druk op CNTL-C nu op te stoppen en opnieuw te beginnen. De gevraagde interface voor het versleutelen van de bestandsnaam is niet beschikbaar. De volgende versleutelalgoritmen zijn beschikbaar: De volgende versleutel algoritmen kunnen gekozen worden: De directory waarin de versleutelde data wordt gopgeslagen, mag geen subdirectory van het koppelpunt zijn. De gevraagde versleutelinterface is niet beschikbaar
 De gevraagde bestandnaam versleutelinterface is niet beschikbaar
 Kon map niet aanmaken:  Versleutelalgoritme %s, versie %i:%i:%i is niet gevonden. De nameio interface %s, versie %i:%i:%i is niet gevonden Het gespecificeerde versleutelalgoritme"%s" kon niet gevonden worden
 Kon het versleutelde bestandssysteem niet initialiseren - controleer het pad.
 Het is niet mogelijk om versleutelalgoritme %s, sleutelgrootte %i en blok grootte %i voor dit geval te gebruiken Kan configuratiebestand niet laden of verwerken
 Het aankoppelpunt kan niet gevonden worden, gestopt. De root directory kan niet gevonden worden, gestopt. Ontkoppel bestandssysteem %s vanwege inactiviteit. Gebruik:
 Gebruik: %s [opties] rootDir mountPlaats [-- [FUSE Mount Opties]] Gebuik bestandssysteem blok grootte van %i bytes Sleutel groote van %i bits wordt gebruikt EncFS wachtwoord ter controle:  Versie 3 configuratie; aangemaakt door %s
 Versie 4 configuratie; aangemaakt door %s
 Versie 5 configuratie; aangemaakt door %s (revisie %i)
 Volumesleutel werd met succes bijgewerkt.
 Wanneer je daemon mode aangeeft, moet je absolute paden gebruiken (beginnend met '/') Wachtwoord van 0 karakters is niet toegestaan
 Map %s bestaat niet.
 encfs [opties] rootDir mountPoint -- [FUSE Mount Opties]
valide FUSE Mount Opties volg:
 encfs versie %s encfsctl versie %s bestandssysteem blok grootte:  fuse is mislukt. Meest voorkomende problemen:
 - fuse kernel module is niet geinstalleerd (modprobe fuse)
 - ongeldige opties -- zie usage bericht
 getopt fout: %i ongeldig commando: "%s" optie '--public' is genegeerd voor een niet-root gebruiker Afbreek fout: %i bytes gelezen, gedeeltelijk blok van %i 