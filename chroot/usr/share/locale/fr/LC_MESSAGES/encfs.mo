��    }        �   �      �
     �
  ]   �
  .     1   6  1   h  (   �  "   �  '   �  -     �   <  R   �      &    G     V     h  *   {  )   �     �     �  B   �  >   B     �  S   �  P  �     :  )   O  2   y  -   �     �  �   �  U   �  S        j     �  6   �     �     �       /      .   P  #        �  j   �  <   *  (   g  )   �  *   �  )   �  /     .   ?  (   n     �  .   �  3   �  +     &   9     `  #   ~     �     �     �  #   �  (   �  #   &  (   J  #   s     �  �   �  �   ^  2   .      a  *   �  �   �  �   u     �  �        �     �  l   �      E  5   f  :   �  R   �  ?   *  �  j  :   �  .   5   9   d   ?   �   0   �   9   !  K   I!     �!  *   �!  4   �!  %   "  8   8"  ;   q"  $   �"  '   �"  *   �"  *   %#     P#  @   X#  '   �#     �#     �#  '   �#  '   $  5   C$  5   y$  !   �$  M   �$  !   %     A%  \   _%     �%     �%     �%  {   �%     u&     �&  +   �&  4   �&    �&  +   )  r   .)  /   �)  $   �)  9   �)  5   0*  #   f*  4   �*  ;   �*  �   �*  q   �+  #   (,  ^  L,     �-     �-  3   �-  3   .     A.     ^.  V   ~.  D   �.  !   /  r   </  �  �/     N1  5   i1  >   �1  H   �1     '2    @2  o   H3  p   �3  '   )4     Q4  N   i4     �4  &   �4  '   �4  0   5  A   N5  L   �5     �5  �   �5  Y   �6  F   �6  3   $7  @   X7  :   �7  >   �7  :   8  C   N8     �8  2   �8  9   �8  %   9  4   @9  "   u9  (   �9     �9     �9     �9  *   :  +   1:  +   ]:  /   �:  1   �:     �:  �   	;    �;  F   �<  *   B=  <   m=  �   �=  �   �>     @?  �   V?     @      4@  �   U@  &   �@  I   
A  G   TA  i   �A  ?   B  �  FB  E   �C  :   $D  J   _D  Q   �D  :   �D  G   7E  a   E  &   �E  C   F  =   LF  @   �F  X   �F  i   $G  A   �G  5   �G  7   H  =   >H     |H  M   �H  D   �H  +   I  "   DI  .   gI  .   �I  =   �I  =   J  -   AJ  b   oJ  -   �J       K  �   !K     �K     �K  (   �K  �   �K     �L     �L  6   �L  ;   �L        R   C       
   y       n          -              m   k   a   }      D   L   d   J   @   /   W   K   h   1   !   o   T      S   v   0      F                  ?       e       .       ,       p       A   Y   ;      {       &   	       $          =       "   4      `   i   #      G   B   )       5   q   2   %   3   s   b           g   8   O   H      X   Z            j                       '   ]   <      ^   |          r      u           z   \       c   9       t   E   M          *                          P   >           :      +   (   l   V             _           U   6   w   N       I   [           7   Q       x       f         -- change password for volume   -- change password for volume, taking password from standard input.
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
 The default here is Yes.
Any response that does not begin with 'n' will mean Yes:  The directory "%s" does not exist. Should it be created? (y,n)  The external initialization-vector chaining option has been
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
 Version 6 configuration; created by %s (revision %i)
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
PO-Revision-Date: 2009-04-04 19:25+0000
Last-Translator: Pierre Slamich <pierre.slamich@gmail.com>
Language-Team: French <fr@li.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
X-Launchpad-Export-Date: 2010-06-17 04:44+0000
X-Generator: Launchpad (build Unknown)
X-Rosetta-Version: 0.1
   -- changer le mot de passe pour le volume   -- changer le mot de passe pour le volume, en le lisant sur l'entrée standard.
	 Aucune invite n'est affichée.   -- décode le nom et affiche la version texte   -- décode un fivhier et l'affiche   -- déchiffre un nom de fichier et affiche le résultat   -- encode un nom de fichier et affiche le résultat   -- afficher la version et quitter   -- montrer les informations (Commande par défaut)   -- montrer les noms de fichiers non décodables du volume   --extpass=programme	Utilise un programme externe pour la demande du mot de passe

Par exemple, pour monter sur ~/crypt avec un stockage raw dans ~/.crypt :
    encfs ~/.crypt ~/crypt

   --public		agit comme un système de fichiers multi-utilisateurs classique
			(encfs doit être lancé en root)
   --reverse		 chiffrement inversé
   -v, --verbose		verbose : affiche les messages de déboguage de encfs
  -i, --idle=MINUTES	Auto-démontage après une période d'inactivité
  --anykey		Ne pas vérifier si une clé correcte est utilisée
  --forcedecode		Décode les données même si une erreur est détectée
			(pour les systèmes de fichier utilisant les en-têtes de bloc MAC)
  (NON supporté)
  (utilisation de %i:%i:%i)
  -- Supporte des tailles de bloc de %i à %i octets  -- Supporte des longueurs de clé de %i à %i bits  -- taille de bloc %i octets  -- longueur de la clé %i bits %s (répertoire racine)
  -- affiche des informations sur le système de fichier, ou 
 -------------------------- AVERTISSEMENT --------------------------
 chiffrement par blocs de 8 octets Un système de fichier EncFS vraiment ancien à été trouvé. 
Cette version d'EncFS ne la prends pas en charge.
 Ajouter des octets aléatoires à chaque en-tête de bloc ?
Cela pénalisera les performances, mais garantira que les blocs
ont différents codes d'authentification. Notez que vous
pouvez obtenir le même bénéfice en activant les vecteurs
d'initialisation par fichier, qui n'apportent pas une
dégradation de perfomance aussi importante. 
Sélectionnez un nombre d'octets, de 0 (pas d'octets
aléatoires) à 8 :  Taille de bloc : %i octets Taille de bloc : %i octets + %i octets d'en-tête MAC Taille de bloc : %i octets, y compris %i octets d'en-tête MAC Encodage par bloc, dissimule quelque peu la longueur des noms de fichier Build : encfs version %s Options courantes :
  -H			montre les options de montage optionnelles de FUSE
  -s			désactive les opérations multithreadées
  -f			s'exécute en avant-plan (n'engendre pas de démon).
			Les messages d'erreur seront envoyés vers stderr
			au lieu de syslog.
 Sous-version de configuration %i trouvée, mais cette version d'EncFS ne supporte que les versions jusqu'à %i. Configuration terminée. Le système de fichiers sur le
point d'être créé a les caractéristiques suivantes : Création d'un nouveau volume chiffré. Répertoire non créé. Chaque fichier comprend un en-tête de 8 octets avec des données IV uniques.
 Mot de passe EncFS :  Entrez le mot de passe actuel d'Encfs
 Entrez le nouveau mot de passe d'Encfs
 Entrez le nombre correspondant à votre choix :  Erreur au décodage de la clé de volume, mot de passe incorrect
 Erreur lors de la sauvegarde des modifications du fichier de configuration.
 Exemple : 
%s info ~/.crypt
 Chaînage IV externe désactivé, vu que les fonctionnalités
'chaînage IV' et 'IV unique' sont toutes deux requises pour
cette option. Échec à la génération d'une nouvelle clé de volume ! Merci de signaler cette erreur. L'IV des données du fichier est chaînée à l'IV du nom de fichier.
 Encodage du nom de fichier : "%s", version %i:%i:%i Nom de fichiers chiffrés en utilisant le mode de chaînage IV.
 Chiffrement de système de fichiers "%s", version %i:%i:%i Pour plus d'informations, consultez la page de manuel encfs(1) %i fichier invalide trouvé %i fichiers invalides trouvés Fichier de configuration %s trouvé, mais son chargement a échoué Dans le répertoire %s : 
 Nombre d'arguments incorrect pour la commande "%s" Erreur interne : exception dans la boucle principale : %s Erreur interne : exception inattendue Erreur interne : impossible d'exécuter un programme Erreur interne : fork() a échoué Erreur interne : socketpair() a échoué Mot de passe invalide
 Sélection invalide. Taille de clé : %i bits Échec de comparaison MAC dans le bloc %li Échec de comparaison MAC, refus de lecture Mode de configuration manuel sélectionné. Il manque un ou plusieurs paramètres, abandon. L'interface de codage de nom n'est pas supportée Nouveau mot de passe EncFS :  Note : le mode mono-thread a été requis, mais un délai
d'inactivité a été indiqué.  Le système de fichiers sera
géré en mono-thread, mais des threads seront tout de même
utilisés pour la détection d'inactivité. Vous allez maintenant devoir entrer un mot de passe
pour votre système de fichiers.
Vous allez devoir absolument vous souvenir de ce mot de passe,
car il n'y a aucun mécanisme de secours.
Cependant, le mot de passe pourra être changé plus tard
en utilisant encfsctl.

 La configuration paranoïaque est incompatible avec l'option --reverse Configuration paranoïaque sélectionnée. Les mots de passe ne correspondent pas, essayez à nouveau.
 Veuillez choisir au moins une des options suivantes :
 entrez "x" pour le mode de configuration expert,
 entrez "p" pour un mode pré-configuré paranoïaque,
 n'importe quoi d'autre ou une ligne vide sélectionnera le mode standard.
?>  Veuillez sélectionner une taille de clé en bits.
Le chiffrement que vous avez choisi supporte des
tailles de %i à %i bits par incréments de %i bits.
Par exemple :  le montage a échoué Sélectionnez une taille de bloc en octets. L'algorithme choisi
supporte des tailles de %i à %i octets par incréments de %i.
Ou pressez juste Entrée pour la valeur par défaut (%i octets)
 Algorithme sélectionné "%s" Taille de clé sélectionnée :  Désolé, impossible de localiser l'algorithme de
chiffrement pour la configuration pré-définie...
Passage au mode de configuration manuel. Configuration standard sélectionnée. Encodage de flux, conserve les noms de fichiers aussi courts que possible La configuration chargée n'est pas compatible avec l'option --reverse
 La réponse par défaut est Oui.
Toute réponse ne commençant pas par 'n' sera considérée comme Oui :  Le répertoire "%s" n'existe pas. Doit-il être créé ? (y/n)  Le vecteur d'initialisation externe a été activé.
Cette option n'autorise pas l'usage de liens durs dans le système de fichiers.
Sans liens durs, quelques programmes peuvent ne pas fonctionner.
Les programmes «mutt» et «procmail» sont connus pour échouer.
Pour plus d'information, reportez-vous à la liste de discussion d'encfs.
Pour choisir une autre configuration, pressez CTRL-C et recommencez. L'interface d'encodage de nom de fichier requise n'est pas disponible Les algorithmes de chiffrement suivants sont disponibles : Les algorithmes d'encodage de noms de fichiers suivants sont disponibles : Le répertoire chiffré ne peut pas être un sous répertoire du point de montage L'interface de chiffrement demandée n'est pas disponible
 L'interface de codage du nom de fichier demandée n'est pas disponible
 Cette version de EncFS ne peut manipuler des systèmes de fichiers créés avant le 13 août 2004 Impossible de créer le répertoire :  Impossible de trouver le module de chiffrement %s, version %i:%i:%i Impossible de trouver l'interface nameio %s, version %i:%i:%i Impossible de trouver l'algorithme de chiffrement indiqué "%s"
 Impossible d'initialiser le système de fichier crypté - vérifiez le chemin d'accès.
 Impossible d'instancier le module de chiffrement %s, avec une taille de clé %i, et une taille de bloc %i Impossible de lire ou d'interpréter le fichier de configuration
 Impossible de localiser le point de montage, abandon. Impossible de localiser le répertoire racine, abandon. Démontage du système de fichier %s pour cause d'inactivité Usage :
 Usage : %s [options] répRacine pointDeMontage [-- [Options de montage FUSE]] Utilisation d'une taille de bloc du système de fichier de %i octets Utilisation d'une taille de clé de %i bits Vérifiez le mot de passe EncFS :  Configuration de la version 3; créée par %s
 Configuration de la version 4; créée par %s
 Configuration de la version 5; créée par %s (révision %i)
 Configuration de la version 6; créée par %s (révision %i)
 La clé de volume a bien été mise à jour.
 Quand le mode démon est spécifié, vous devez utiliser des chemins absolus (commençant par '/') Mot de passe de longueur zéro non autorisé
 Le répertoire %s n'existe pas.
 Utilisation : %s [options] répRacine pointDeMontage -- [Options de montage FUSE]
les options de montage valides de FUSE sont les suivantes :
 encfs version %s encfsctl version %s taille de bloc du système de fichier :  fuse a échoué. Problèmes courants :
 - le module du noyau fuse n'est pas installé (modprobe fuse)
 - options invalides -- voyez le message d'usage
 erreur getopt : %i commande invalide : "%s" option '--public' ignorée pour l'utilisateur non-root échec de la troncature : %i octets lus, bloc partiel de %i 