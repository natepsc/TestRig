��    f      L  �   |      �     �  ]   �  .   	  (   N	  "   w	  '   �	  -   �	  R   �	    C
     R     d  *   w  )   �     �     �  B   �  >   >     }  S   �     �  )   �  2   $  -   W     �  �   �  S   k     �     �     �          $  /   >  .   n  #   �     �  <   �  )     /   D  .   t  (   �     �  .   �  3     +   B  &   n     �  #   �     �     �     �  #     (   2  #   [  (     #   �     �  �   �      �  *   �  �   �  �   �  �   M     �       l         �  5   �  ?   �  :     .   X  9   �  0   �  9   �     ,  *   I  4   t  %   �  8   �  ;     $   D  '   i  *   �     �  @   �  '        -     G  '   _  '   �  5   �  !   �  !        )  \   G     �     �     �  {   �     ]     n  +   �  �  �     �  k   �  6   1  6   h  %   �  /   �  B   �     8     �      �!     �!  1   �!  5   ""      X"      y"  S   �"  @   �"     /#  u   K#     �#  6   �#  ?   $  M   S$     �$  �   �$  \   �%     	&     (&     @&  "   P&     s&  0   �&  9   �&  :   �&     7'  A   S'  5   �'  <   �'  D   (  I   M(     �(  4   �(  8   �(  ,   )  /   F)     v)  !   �)     �)     �)     �)  )   �)  1   *  +   O*  *   {*  1   �*     �*  �   �*  %   �+  4   ,  �   7,  �   -  �   �-     k.     �.  �   �.  #   ,/  T   P/  9   �/  S   �/  5   30  =   i0  >   �0  Z   �0     A1  1   _1  <   �1  /   �1  M   �1  J   L2  >   �2  2   �2  2   	3     <3  ]   K3  C   �3  "   �3     4  +   ,4  +   X4  9   �4  )   �4  -   �4     5  �   25     �5     �5  (   �5  �   
6     �6     �6  O   �6        >          3   B      !   F          Q   ?   &          G   $          V   )   P   :   W   J   *   
   '            ^         <   [   U   /   E      X           -   +   e                      \   S       H          I             b       %   D   `   R   5          8      O                  "   K   Z   7   ;          _   C   	   @   N               .   1              T                      Y   A                 ]       2                            d   (   L   f   6   9   a       c   =   0   M   ,   4      #      -- change password for volume   -- change password for volume, taking password from standard input.
	No prompts are issued.   -- decodes name and prints plaintext version   -- encodes a filename and print result   -- print version number and exit   -- show information (Default command)   -- show undecodable filenames in the volume   --public		act as a typical multi-user filesystem
			(encfs must be run as root)
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
 Block Size: %i bytes Block Size: %i bytes + %i byte MAC header Block Size: %i bytes, including %i byte MAC header Block encoding, hides file name size somewhat Build: encfs version %s Common Options:
  -H			show optional FUSE Mount Options
  -s			disable multithreaded operation
  -f			run in foreground (don't spawn daemon).
			Error messages will be sent to stderr
			instead of syslog.
 Configuration finished.  The filesystem to be created has
the following properties: Creating new encrypted volume. Directory not created. EncFS Password:  Enter current Encfs password
 Enter new Encfs password
 Enter the number corresponding to your choice:  Error decoding volume key, password incorrect
 Error saving modified config file.
 Example: 
%s info ~/.crypt
 Failure generating new volume key! Please report this error. Filesystem cipher: "%s", version %i:%i:%i For more information, see the man page encfs(1) Found %i invalid file. Found %i invalid files. Found config file %s, but failed to load In directory %s: 
 Incorrect number of arguments for command "%s" Internal error: Caught exception from main loop: %s Internal error: Caught unexpected exception Internal error: failed to exec program Internal error: fork() failed Internal error: socketpair() failed Invalid password
 Invalid selection. Key Size: %i bits MAC comparison failure in block %li MAC comparison failure, refusing to read Manual configuration mode selected. Missing one or more arguments, aborting. Name coding interface not supported New Encfs Password:  Now you will need to enter a password for your filesystem.
You will need to remember this password, as there is absolutely
no recovery mechanism.  However, the password can be changed
later using encfsctl.

 Paranoia configuration selected. Passwords did not match, please try again
 Please choose from one of the following options:
 enter "x" for expert configuration mode,
 enter "p" for pre-configured paranoia mode,
 anything else, or an empty line will select standard mode.
?>  Please select a key size in bits.  The cipher you have chosen
supports sizes from %i to %i bits in increments of %i bits.
For example:  Select a block size in bytes.  The cipher you have chosen
supports sizes from %i to %i bytes in increments of %i.
Or just hit enter for the default (%i bytes)
 Selected algorithm "%s" Selected key size:  Sorry, unable to locate cipher for predefined configuration...
Falling through to Manual configuration mode. Standard configuration selected. Stream encoding, keeps filenames as short as possible The directory "%s" does not exist. Should it be created? (y,n)  The filename encoding interface requested is not available The following cipher algorithms are available: The following filename encoding algorithms are available: The requested cipher interface is not available
 The requested filename coding interface is not available
 Unable to create directory:  Unable to find cipher %s, version %i:%i:%i Unable to find nameio interface %s, version %i:%i:%i Unable to find specified cipher "%s"
 Unable to initialize encrypted filesystem - check path.
 Unable to instanciate cipher %s, key size %i, block size %i Unable to load or parse config file
 Unable to locate mount point, aborting. Unable to locate root directory, aborting. Usage:
 Usage: %s [options] rootDir mountPoint [-- [FUSE Mount Options]] Using filesystem block size of %i bytes Using key size of %i bits Verify Encfs Password:  Version 3 configuration; created by %s
 Version 4 configuration; created by %s
 Version 5 configuration; created by %s (revision %i)
 Volume Key successfully updated.
 Zero length password not allowed
 directory %s does not exist.
 encfs [options] rootDir mountPoint -- [FUSE Mount Options]
valid FUSE Mount Options follow:
 encfs version %s encfsctl version %s filesystem block size:  fuse failed.  Common problems:
 - fuse kernel module not installed (modprobe fuse)
 - invalid options -- see usage message
 getopt error: %i invalid command: "%s" option '--public' ignored for non-root user Project-Id-Version: encfs
Report-Msgid-Bugs-To: vgough@pobox.com
POT-Creation-Date: 2010-11-18 00:12-0800
PO-Revision-Date: 2005-11-12 00:45+0000
Last-Translator: Valient Gough <valient@gmail.com>
Language-Team: Portuguese (Portugal) <pt_PT@li.org>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2010-06-17 04:44+0000
X-Generator: Launchpad (build Unknown)
X-Rosetta-Version: 0.1
   -- mude a senha da partição   -- mudar de senha para volume, a usar a palavra-passe do standard input.
	Não serão efectuados pedidos.   -- descodifica nome e imprime a versão textualmente   -- codifica um nome de ficheiro e mostra o resultado   -- imprime número de versão e sai   -- mostrar informação (Comando de omissão)   -- mostra nomes de ficheiros não descodificáveis na partição   --public		age como um típico sistema de ficheiros multi-utilizadores
			(encfs tem que ser executado como super-utilizador)
   -v, --verbose		verbose: emite messagens de debug do encfs
  -i, --idle=MINUTOS	Automaticamente desmonta após período de inactividade
  --anykey		descodifica os dados mesmo que algum erro seja detectado
			(para sistemas de ficheiros que usem cabeçalhos de bloco MAC)
  (NÃO suportodo)
  (a usar %i:%i:%i)
  -- Suporta blocos de tamanho entre %i a %i bytes  -- Suporta chaves de comprimentos entre %i a %i bits  -- tamanho de bloco de %i bytes  -- comprimento de chave %i bits %s (directoria raiz)
  -- apresenta informação sobre o sistema de ficheiros, ou 
 -------------------------- ATENÇÃO --------------------------
 cifra com blocos de 8 bytes Uma versão bastante antigo do sistema de ficheiros EncFS foi encontrada. 
Não é suportada nessa versão de EncFS.
 Tamanho de bloco: %i bytes Tamanho de bloco: %i bytes + %i byte de cabeçalho MAC Tamanho de bloco: %i bytes, incluindo %i byte de cabeçalho MAC Codificação de bloco. esconde o tamanho do nome do ficheiro de alguma forma Criação: encfs versão %s Opções comuns:
  -H			mostrar opções opcionais de montegem de FUSE
  -s			desactivar operações multithreaded
  -f			correr em primeiro plano (não gera daemon)
			Mensagens de erro serão enviadas para o stderr
			invés do syslog.
 Configuração concluida. O sistema de ficheiros a ser criado tem
as seguintes propriedades: A criar um novo volume cifrado Directoria não criada. senha de EncFS  Introduza a senha actual de Encfs
 Introduza a nova senha Encfs
 Insira o número correspondente à sua escolha:  Erro ao descodificar a chave do volume, senha incorrecta
 Erro ao guardar o ficheiro de configurações modificado.
 Exemplo: 
%s info ~/.crypt
 Falha ao gerar nova chave de volume! Por favor reporte esse erro. cifra do sistema de ficheiros: "%s", versão %i:%i:%i Para mais informação, consulte as páginas de man encfs(1) Encontrado %i ficheiro inválido Encontrados %i ficheiros inválidos Ficheiro de configuração %s encontrado, mas foi impossível carregá-lo Na directoria %s: 
 Número incorrecto de argumentos para o comando "%s" Erro interno: Apanhada excepção do ciclo principal: %s Erro interno: excepção inesperada apanhada Erro interno: falha ao tentar exectuar programa Erro interno: fork() falhado Erro interno: socketpair() falhou Senha inválida
 Selecção inválida. obter tamanho: %i bits falha na comparação do MAC no bloco %li falha na comparação do MAC, a recusar a leitura Modo de configuração manual seleccionado. Falta de um ou mais argumentos, a abortar. Interface de codificação de nome não suportado Nova senha de Encfs  Agora, terá que inserir a palavra-passe para o seu sistema de ficheiros.
Terá que se recordar dessa palavra-passe, pois não há
mecanismo de recuperação. No entanto, a palavra-passe pode ser alterada
posteriormente usando encfsctl.

 Seleccionada configuração paranoica As senhas não coincidem, por favor tente novamente
 Por favor seleccione uma das seguintes opções:
 prima "x" para o modo de configuração avançado,
 prima "p" para o modo pré-condigurado paranoico,
 outro, ou uma linha em branco irá seleccionar o modo padrão.
?>  Por favor, seleccione um tamanho de chave em bits. A cifra que seleccionou
suporta tamanhos de %i até %i bits em incrementos de %i bits.
Por exemplo:  Selecciona um tamanho de bloco em bytes. A cifra que escolheu
suporta tamanhos de %i até %i butes em incrementos de %i.
Ou simplesmente carregue em enter para o valor de omissão (%i bytes)
 Algoritmo seleccionado "%s" Tamanho da chave seleccionada:  Desculpe, foi impossível localizar a cifra para a configuração pré-definida...
A regressar para o modo de configuração manual. Seleccionada configuração padrão fluxo de codificação, mantenho os nomes de ficheiro tão pequenos quanto possível A directoria "%s" não existe. Deverá ser criada? (y,n)  O interface de codificação do nome de ficheiro requisitado não está disponível Os seguintes algorítmos de cifra estão disponíveis Os seguintes algoritmos de codificação estão disponíveis: O interface da cifra requisitado não se encontra disponível
 O interface de codificação do nome de ficheiro requisitado não se encontra disponível
 Incapaz de criar directoria:  Incapaz de localizar a cifra %s, versão %i:%i:%i Incapaz de localizar o interface nameio %s, versão %i:%i:%i Incapaz de localizar a cifra especificada "%s"
 Incapaz de inicializar o sistema de ficheiros cifrado - verifique o caminho.
 Incapaz de instanciar a cifra %s, tamanho de chave %i, tamanho de bloco %i Incapaz de carregar ou analizar o ficheiro de configurações
 Incapaz de localizar ponto de montagem, a abortar. Incapaz de localizar a directoria raiz, a abortar. Utilização:
 Utilização: %s [opções] directoria-raiz ponto-de-montagem [--[Opções de montagem FUSE]] A utilizar blocos do Sistema de ficheiros com o tamanho de %i bytes A usar chave de tamanho de %i bits Verifique a senha de Encfs  Configuração da versão 3; criada por %s
 Configuração da versão 4; criada por %s
 Confuguração da versão 5; criada por %s (revisão %i)
 Chave de volume actualizada com sucesso.
 Senhas com tamanho zero não são permitidas
 directoria %s não existe.
 encfs [opções] directoria-raiz pontos-de-montagem -- [Opções de montagem FUSE]
as seguintes opções de montegem FUSE são válidas:
 encfs versão %s encfsctl versão %s tamanho de bloco do sistema de ficheiro  fuse falhou. Problemas comuns:
 - módulo de kernel fuse não instalado (modprobe fuse)
 - opções inválidas -- veja a mensagem de utilização
 erro getopt: %i Comando inválido: "%s" opção '--public' ignorada para utilizadores que não sejam super-utilizadores 