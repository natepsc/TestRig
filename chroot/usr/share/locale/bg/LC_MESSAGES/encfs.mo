��    8      �  O   �      �     �  .   �  (   (  "   Q  '   t  -   �  �   �    a  *   p     �     �  B   �  P    -   ^	  �   �	  S   Z
     �
     �
     �
     �
  /     #   >  /   b  .   �  (   �     �  .   �     ,  #   >     b  *   w  �   �     *     B  l   V      �  ?   �  .   $  9   S     �  8   �  $   �       @     '   Q     y     �  '   �  5   �  M   	     W  \   u     �     �     �  �    ,     @   9  =   z  4   �  U   �  <   C  �   �  �  t  >   >  .   }  .   �     �  �  [  u   3  e  �  �     4   �     �  :   	  .   D  >   s  p   �  ^   #  e   �  m   �     V   I   t       �   8   �      !  P   5!  �   �!  $   _"  +   �"  �   �"  ?   N#  h   �#  0   �#  b   ($  =   �$  �   �$  i   Q%     �%  �   �%  =   V&  :   �&  (   �&  \   �&  h   U'  �   �'  2   _(  �   �(     U)     p)  '   �)     "           .   %   /      ,   '   !   8   +                           7   6   4   	          *                                 #                1   $                       2       -                   (             3       )             0       &   
   5                                 -- change password for volume   -- decodes name and prints plaintext version   -- encodes a filename and print result   -- print version number and exit   -- show information (Default command)   -- show undecodable filenames in the volume   --extpass=program	Use external program for password prompt

Example, to mount at ~/crypt with raw storage in ~/.crypt :
    encfs ~/.crypt ~/crypt

   -v, --verbose		verbose: output encfs debug messages
  -i, --idle=MINUTES	Auto unmount after period of inactivity
  --anykey		Do not verify correct key is being used
  --forcedecode		decode data even if an error is detected
			(for filesystems using MAC block headers)
  -- Supports block sizes of %i to %i bytes  -- block size %i bytes  -- key length %i bits %s (root dir)
  -- displays information about the filesystem, or 
 Add random bytes to each block header?
This adds a performance penalty, but ensures that blocks
have different authentication codes.  Note that you can
have the same benefits by enabling per-file initialization
vectors, which does not come with as great of performance
penalty. 
Select a number of bytes, from 0 (no random bytes) to 8:  Block encoding, hides file name size somewhat Common Options:
  -H			show optional FUSE Mount Options
  -s			disable multithreaded operation
  -f			run in foreground (don't spawn daemon).
			Error messages will be sent to stderr
			instead of syslog.
 Configuration finished.  The filesystem to be created has
the following properties: Directory not created. EncFS Password:  Enter current Encfs password
 Enter new Encfs password
 Enter the number corresponding to your choice:  Error saving modified config file.
 For more information, see the man page encfs(1) Found %i invalid file. Found %i invalid files. Found config file %s, but failed to load In directory %s: 
 Incorrect number of arguments for command "%s" Invalid password
 Manual configuration mode selected. New Encfs Password:  Passwords did not match, please try again
 Please select a key size in bits.  The cipher you have chosen
supports sizes from %i to %i bits in increments of %i bits.
For example:  Selected algorithm "%s" Selected key size:  Sorry, unable to locate cipher for predefined configuration...
Falling through to Manual configuration mode. Standard configuration selected. The directory "%s" does not exist. Should it be created? (y,n)  The following cipher algorithms are available: The following filename encoding algorithms are available: Unable to create directory:  Unable to initialize encrypted filesystem - check path.
 Unable to load or parse config file
 Usage:
 Usage: %s [options] rootDir mountPoint [-- [FUSE Mount Options]] Using filesystem block size of %i bytes Using key size of %i bits Verify Encfs Password:  Version 4 configuration; created by %s
 Version 5 configuration; created by %s (revision %i)
 When specifying daemon mode, you must use absolute paths (beginning with '/') directory %s does not exist.
 encfs [options] rootDir mountPoint -- [FUSE Mount Options]
valid FUSE Mount Options follow:
 encfs version %s encfsctl version %s invalid command: "%s" Project-Id-Version: Encrypted Filesystem for Linux
Report-Msgid-Bugs-To: vgough@pobox.com
POT-Creation-Date: 2010-11-18 00:12-0800
PO-Revision-Date: 2010-03-19 07:21+0000
Last-Translator: Krasimir Chonov <mk2616@abv.bg>
Language-Team: Bulgarian <bg@li.org>
Language: bg
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2010-06-17 04:44+0000
X-Generator: Launchpad (build Unknown)
X-Rosetta-Version: 0.1
   -- смени паролата за дял   --декодира име и показва оригинала   -- кодира име и показва резултата   -- изписва версията и излиза   -- покажи информация (команда по подразбиране)   --покажи нечетимите имена в дяла   --extpass=program	Използвай външна програма за запитването за парола

Пример, за да монтирате в ~/crypt без никакви данни в ~/.crypt
    encfs ~/.crypt ~/crypt

   -v, --verbose		подробен: покажи подробни съобщения от encfs
  -i, --idle=МИНУТИ	Отмонтирай след период на неактивност
  --anykey		Не проверявай дали се използва правилен ключ
  --forcedecode		разкодирай дори и при открита грешка
			(За системи използващи блокови начала тип MAC)
  -- Поддържа размери от %i до %i байта  -- размер на блока %i байта  -- дължина на ключа %i бита %s (основна директория)
-- показва информация за файловата система или 
 Да добавя случаен брой байтове към всяко начало на блок?
Това намаля производителността, но осигурява блоковете
да имат различни кодове за автентикация. Забележете, че вие можете
да получите същите предимства чрез разрешаване инициализирането
на векторите за всеки файл, което не е съпътствано с толкова голям удар
върху производителността. 
Изберете брой байтове, от 0 (без случайни байтове) до 8:  Блоково кодиране, скрива размера на файловете в известна степен Чести опции:
  -H			покажи допълнителните FUSE опции
  -s			забрани многонишковото изпълнение
  -f			изпълнявай на преден фон (не ставай демон)
			Грешките ще се изписват на стандартния изход
			вместо в Syslog.
 Конфигурацията е завършена. Файловата система която ще бъде създадена е
със следните параметри: Директорията не е създадена. EncFS Парола  Въведете текущата парола за Encfs
 Въведете нова Еncfs парола
 Въведете номерът на вашият избор:  Грешка при записване на модифицирания конфигурационен файл.
 За повече информация вижте помощната страница encfs(1) Намерен %i невалиден файл. Намерени %i невалидни файлове. Намерен е конфигурационен файл %s, но не може да бъде зареден В директория %s: 
 Неправилен брой аргументи за команда "%s" Невалидна парола
 Избрано е ръчно конфигуриране. Нова EncFS Парола  Паролите не съвпадат, Моля опитайте отново.
 Моля изберете размер на ключа в битове. Избраният шифър
Поддържа размери от %i до %i бита със стъпка от %i  бита.
Например:  Избран алгоритъм "%s" Избран размер на ключа:  Не може да бъде открит шифърът за избраната конфигурация...
Моля конфигурирайте ръчно. Избрана е стандартна конфигурация Директорията "%s" не съществува. Да бъде ли създадена? (д,н)  Следните шифри са налични: Налични са следните алгоритми за кодиране на имената: Не може да се създаде директория:  Невъзможна инициализация на кодираната файлова система - проверете пътя.
 Не може да се зареди или обработи конфигурационният файл
 Употреба
 Използване: %s [опции] основна директория точка за монтиране [-- [Опции на FUSE]] Използваме блок с размери %i байта Използва се ключ с размер %i бита Потвърди EncFS Паролата  Четвърта версия на конфигурацията; направена от %s
 Пета версия на конфигурацията; направена от %s (ревизия %i)
 Когато използвате режим на демон, трябва да използвате абсолютни пътища (започващи с '/') директория %s не съществува
 encfs [опции] главна директория точка на монтиране -- [Опции за монтиране на FUSE]
Следват валидните опции на FUSE:
 версия на encfs %s версия на encfsctl %s Невалидна команда: "%s' 