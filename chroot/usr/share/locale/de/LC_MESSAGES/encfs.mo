��    }        �   �      �
     �
  ]   �
  .     1   6  1   h  (   �  "   �  '   �  -     �   <  R   �      &    G     V     h  *   {  )   �     �     �  B   �  >   B  0   �     �  S   �  P       k  )   �  2   �  -   �       �   #  U   �  S   G     �     �  6   �               7  /   Q  .   �  #   �     �  j   �  <   [  (   �  )   �  *   �  )     /   @  .   p  (   �     �  .   �  3   
  +   >  &   j     �  #   �     �     �     �  #   
  (   .  #   W  (   {  4   �  #   �     �  �     �   �  2   �      �  *   �  �     �   �     c  �   r          *  l   >      �  5   �  :     ?   =  �  }  :      .   H   9   w   ?   �   0   �   9   "!  K   \!     �!  *   �!  4   �!  %   %"  8   K"  ;   �"  $   �"  '   �"  *   #  *   8#     c#  @   k#  '   �#     �#     �#  '   $  '   .$  5   V$  !   �$  M   �$  !   �$     %  \   <%     �%     �%     �%  {   �%     R&     c&  +   y&  4   �&    �&  '   �(  {   )  :   �)  L   �)  R   *  >   f*  (   �*  .   �*  G   �*  �   E+  l   �+  )   E,  !  o,     �-     �-  3   �-  7   �-     *.  #   D.  M   h.  >   �.  9   �.     //  l   C/  �  �/     21  -   H1  0   v1  <   �1     �1  �   �1  i   �2  W   Y3  2   �3     �3  @   �3     @4  "   Q4     t4  '   �4  F   �4  ;   5     >5  v   [5  V   �5  /   )6  ,   Y6  9   �6  +   �6  3   �6  =    7  G   ^7     �7  2   �7  4   �7  ,   #8  9   P8  &   �8  ,   �8     �8     �8     9  !   "9  &   D9      k9  +   �9  Z   �9  >   :     R:  �   i:  �   C;  =   <     X<  ?   q<  �   �<  �   o=  "   >  �   6>     ?     $?  q   A?     �?  )   �?  >   �?  E   5@  �  {@  D   B  :   JB  Q   �B  V   �B  E   .C  W   tC  _   �C  *   ,D  -   WD  ;   �D  C   �D  L   E  K   RE  A   �E  1   �E  8   F  9   KF     �F  M   �F  .   �F  %   G     5G  )   RG  )   |G  7   �G  0   �G  Q   H  &   aH      �H  ^   �H     I     I     -I  �   HI     �I     �I  :   J  8   GJ           E       
   y   !   o   D      .              n   l   b   }      F   N   e   L   A   0   X   M   i   2   "   p   W      U   v   1      H                  @       f       /       -               B   Z   <      {       '   	       %          >       #   5      a   j   $      I   C   *       6   T   3   &   4   s   c           h   9   Q   J      Y   [            k                       (   ^   =      _   |          r                  z   ]       d   :       t   G   O          +                          R   ?           ;       ,   )   m   u             `       q   V   7   w   P       K   \           8   S       x       g         -- change password for volume   -- change password for volume, taking password from standard input.
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
 --reverse specified, not using unique/chained IV 8 byte block cipher A really old EncFS filesystem was found. 
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
 Invalid selection. Key Size: %i bits MAC comparison failure in block %li MAC comparison failure, refusing to read Manual configuration mode selected. Missing one or more arguments, aborting. Must set password program when using mount-on-demand Name coding interface not supported New Encfs Password:  Note: requested single-threaded mode, but an idle
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
 This version of EncFS doesn't support filesystems created before 2004-08-13 Unable to create directory:  Unable to find cipher %s, version %i:%i:%i Unable to find nameio interface %s, version %i:%i:%i Unable to find specified cipher "%s"
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
PO-Revision-Date: 2008-03-02 11:16+0000
Last-Translator: Keruskerfuerst <armin_mohring@web.de>
Language-Team: German (Germany) <de_DE@li.org>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2010-06-17 04:44+0000
X-Generator: Launchpad (build Unknown)
X-Rosetta-Version: 0.1
   -- Passwort für Datenträger ändern   -- Passwort für Speichermedium ändern (wird von der Standardeingabe gelesen).
		Es erscheint keine Eingabeaufforderung.   -- entschlüsselt den Namen und gibt die Textversion aus   -- entschlüsselt die Datei und gibt den Inhalt an der Standardausgabe aus   -- einen Datenträger entschlüsseln und das Ergebnis unter dem Pfad abspeichern   -- einen Dateinamen verschlüsseln und das Ergebnis ausgeben   -- Versionsnummer ausgeben und beenden   -- Informationen anzeigen (Standardkommando)   -- Nicht entschlüsselbare Dateinamen auf dem Speichermedium anzeigen   --extpass=PROGRAMM	Benutzer PROGRAMM für die Passworteingabe

Beispiel, binde den Roh-Speicher ~/.cryp in ~/crypt ein:
encfs ~/.crypt ~/crypt

   --public		verhält sich wie ein typisches Multi-User Dateisystem
			(encfs muss als Benutzer root laufen)
   --reverse		umgekehrte Verschlüsselung
   -v, --verbose		verbose: Gib encfs debug Nachrichten aus
  -i, --idle=MINUTEN	Nach MINUTEN automatisch ausbinden (umount)
  --anykey		Pürfe nicht die gültigkeit eines Schlüssels
  --forcedecode		Decodiere Daten trotz eines Fehlers
			(für Dateisysteme die MAC block headers benutzen)
  (NICHT unterstützt)
  (verwende %i:%i:%i)
  unterstützte Blockgröße zwischen %i und %i Bits  unterstützte Schlüssellänge zwischen %i und %i Bits  -- Blockgröße %i Bytes  --Schlüssellänge beträgt %i Bit %s (Wurzelverzeichnis)
  -- zeige Informationen über das Dateisystem, oder 
 -------------------------- WARNUNG --------------------------
 --reverse angegeben, unique/chained IV wird nicht benutzt 8-Byte-Blockchiffre Ein sehr altes EncFS Dateisystem wurde gefunden, 
das in dieser EncFS Version nicht mehr unterstützt wird.
 Sollen jedem Block-Vorspann Zufallsbytes hinzugefügt werden?
Das wird die Leistung veringern, aber sicherstellen, dass die
Blöcke unterschiedliche Sicherheitscodes verwenden. Sie können das selbe
Resultat mit geringeren Leistungseinbußen erzielen, indem Sie die dateispezifischen Initialisierungsvektoren aktivieren.
Auswahl der Anzahl der Bytes, von 0 (Keine Zufallsbytes) bis 8:  Blockgröße: %i Byte Blockgrösse: %i Bytes + %i Byte MAC-Vorspann Blockgröße: %i Byte, enthält %i Byte MAC-Kopf Blockverschlüsselung, versteckt die Dateinamengröße etwas Build: encfs Version %s Gemeinsame Optionen:
  -H			Anzeige optionaler FUSE Montageoptionen
  -s			Abschalten der multithreaded Operationen
  -f			Im Fordergrund laufen (Kein Dämon abspalten).
			Fehler an die Standardausgabe statt an das
			Systemprotokoll senden
 Konfiguration für Unterversion %i gefunden. Diese EncFS-Version unterstützt aber höchstens Version %i. Konfiguration abgeschlossen. Das angelegte Dateisystem hat die
folgenden Eigenschaften: Neuer verschlüsselter Datenträger wird erstellt. Kein Verzeichnis angelegt. Jede Datei enthält acht Byte Vorspann mit einmaligen IV Daten.
 EncFS-Passwort:  Aktuelles EncFS-Passwort eingeben
 Neues EncFS-Passwort eingeben
 Geben Sie die Nummer Ihrer Auswahl an:  Fehler beim Entschlüsseln des Datenträgers! Das Passwort ist falsch
 Fehler beim Speichern der geänderten Konfigurationsdatei.
 Beispiel: 
%s info ~/.crypt
 Externe IV Verkettung abgeschaltet, da 'IV Verkettung'
und 'einmalige IV' Merkmale für diese Option benötigt werden. Fehler beim Erzeugen des neuen Dateisystemschlüssels! Bitte melden Sie diesen Fehler. Dateidaten IV sind mit Dateiname IV verkettet.
 Dateinamenskodierung: "%s", Version %i:%i:%i Dateinamensverschlüsselung benutzt IV Verkettungsmodus.
 Dateisystem Chiffre: "%s", Version %i:%i:%i Für weitere Informationen, siehe man-Page encfs(1) %i ungültige Datei gefunden. %i ungültige Dateien gefunden. Konfigurationsdatei %s wurde gefunden, konnte aber nicht geladen werden Im Verzeichnis %s: 
 Falsche Anzahl von Argumenten für den Befehl "%s" Interner Fehler: Ausnahmefehler im Hauptprogramm: %s Interner Fehler: Unerwarteter Ausnahmefehler Interner Fehler: Ausführung des Programms fehlgeschlagen Interner Fehler: fork() fehlgeschlagen Interner Fehler: socketpair() fehlgeschlagen Ungültiges Passwort
 Ungültige Auswahl. Schlüssellänge: %i Bits MAC Vergleichsfehler im Block %li MAC Vergleichsfehler, verweigere Lesen Manuelle Konfiguration gewählt. Ein oder mehrere Argumente fehlen, Abbruch. Passwort Programm muss gesetzt werden, wenn Dateisystem bei Bedarf eingehängt werden soll Schnittstelle zur Kodierung des Dateinamens nicht unterstützt Neues EncFS-Passwort:  Hinweis: Single-Thread-Modus wurde angefordert, aber es wurde ein
Leerlauftimeout angegeben. Das Dateisystem wird im
Single-Thread-Modus arbeiten, aber Threads werden weiterhin zur
Überprüfung auf Leerlauf verwendet Nun wird ein Kennwort für das Dateisystem benötigt.
Da es keinen Mechanismus zur Wiederhestellung gibt, müssen Sie
sich an das Kennwort erinnern! Das Kennwort kann mit encfsctl
nächträglich geändert werden.

 Paranoia Konfiguration wird für --reverse nicht unterstützt Paranoia-Modus gewählt. Die Passwörter stimmen nicht überein, bitte erneut versuchen
 Bitte wählen Sie eine der folgenden Optionen:
 "x" für den Expertenmodus,
 "p" für den vorkonfigurierten Paranoia-Modus,
 etwas anderes oder eine Leerzeile wählt den Standard-Modus.
?>  Bitte wählen Sie eine Schlüssellänge in Bit. Die von Ihnen gewählte Verschlüsselung
unterstützt Längen von %i bis %i Bit in %i Bit Schritten.
Zum Beispiel:  Erneutes einhängen fehlgeschlagen Wählen Sie eine Blockgröße (in Byte) aus. Der ausgewählte Algorithmus
unterstützt Größen von %i bis %i Byte in Schritten von je %i Byte.
Oder drücken Sie Enter, um die Vorgabe (%i Byte) zu übernehmen
 Gewählter Algorithmus "%s" Gewählte Schlüssellänge:  Keine Verschlüsselungsmethode für die gewählte Voreinstellung vorhanden...
Wechsel zu manuellen Einstellungen. Standard-Modus gewählt. Stromchiffre, möglichst kurze Dateinamen Die geladene Konfiguration ist mit --reverse nicht kompatibel
 Das Verzeichnis "%s" existiert nicht. Soll es angelegt werden? (j,n)  Die Option 'externe Vektorverkettung bei der Initialisierung' wurde aktiviert.
Diese Option verhindert die Nutzung von Hardlinks. Ohne Hardlinks
können manche Programme nicht arbeiten, wie zum Beispiel 'mutt'
oder 'procmail'. Mehr Informationen dazu finden Sie in der encfs-
Mailingliste. Wenn Sie eine andere Einstellung wählen wollen, drücken
Sie CTRL-C (STRG-C) und starten Sie von vorn. Die Schnittstelle zur Kodierung des Dateinamens ist nicht verfügbar Die folgenden Verschlüsselungsalgorithmen sind verfügbar Die folgenden Verschlüsselungsalgorithmen für Dateinamen stehen zur Verfügung: Das Roh-Verzeichnis scheint kein Unterverzeichnis des verwendeten Mountpunktes zu sein Die angeforderte Verschlüsselungsschnittstelle ist nicht verfügbar
 Die angeforderderte Schnittstelle zur Datennamenverschlüsselung ist
nicht verfügbar.
 Diese Version von EncFS unterstützt keine Dateisysteme, die vor dem 13.08.2004 angelegt wurden Verzeichnis konnte nicht angelegt werden:  Kann Ziffer %s nicht finden, Version %i:%i:%i Kann nameio-Schnittstelle %s nicht finden, Version %i:%i:%i Konnte das angegebene Verschlüsselungsverfahren "%s" nicht finden
 Verschlüsseltes Dateisystem kann nicht initialisiert werden - prüfe Pfad.
 Kann keine Chiffre für %s erstellen. Schlüsselgrösse %i, Blockgrösse %i Konfigurationsdatei kann nicht geladen oder interpretiert werden
 Mountpunkt konnte nicht gefunden werden, Abbruch. Wurzelverzeichnis konnte nicht gefunden werden, Abbruch. Das Dateisystem %s wird aufgrund Inaktivität ausgehängt Verwendung:
 Aufruf: %s [Optionen] Wurzelverzeichnis Mountpunkt [-- [FUSE Mount Optionen]] Verwende Dateisystem-Blockgröße von %i Bytes Verwenden Schlüssellänge von %i Bit EncFS-Passwort bestätigen:  Version 3 Konfiguration; erstellt von %s
 Version 4 Konfiguration; erstellt von %s
 Version 5 Konfiguration; erstellt von %s (Revision %i)
 Dateisystemschlüssel erfolgreich aktualisiert.
 Für den Daemon-Modus müssen absolute Pfade (beginnend mit '/') angegeben werden Ein leeres Passwort ist nicht erlaubt
 Verzeichnis %s existiert nicht.
 encfs [Optionen] Quellverzeichnis Zielverzeichnis -- [FUSE-Optionen]
Mögliche FUSE-Optionen:
 encfs Version %s encfsctl-Version %s Dateisystem-Blockgröße:  fuse ist fehlgeschlagen. Häufige Ursachen:
 - das fuse Kernelmodul ist nicht geladen (modprobe fuse)
 - ungültige Optionen -- siehe Aufruf-Übersicht
 getopt Fehler: %i Ungültiger Befehl: "%s" die Option '--public' wurde ignoriert, sie sind nicht root Abschneiden gescheitert: lese %i Bytes, Teilblock von %i 