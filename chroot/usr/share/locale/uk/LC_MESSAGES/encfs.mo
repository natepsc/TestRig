��    v      �  �   |      �	     �	  ]   
  .   o
  1   �
  1   �
  (     "   +  '   N  -   v     �     �  *   �  )   �          6  B   M  >   �  0   �        S     P  h     �  )   �  2   �  -   +     Y  U   q  S   �          :  6   Q     �     �     �  /   �  .     #   0     T  <   p  (   �  )   �  *      )   +  /   U  .   �  (   �     �  .   �  3     +   S  &        �  #   �     �     �       #     (   C  #   l  (   �  4   �  #   �       �   '  �   �  2   �      �  *   �  �   (  �   �     x  �   �     '     ?  l   S      �  5   �  :     ?   R  �  �  :   "  .   ]  9   �  ?   �  0     9   7  K   q     �  *   �  4     %   :  8   `  ;   �  $   �  '   �  *   "  *   M     x  @   �  '   �     �        '      '   C   5   k   !   �   M   �   !   !     3!  \   Q!     �!     �!  {   �!     V"     g"  +   }"  4   �"    �"  5   �$  �   %  W   �%  L   &  o   h&  K   �&  <   $'  T   a'  h   �'  #   (  %   C(  Q   i(  Q   �(  '   )  +   5)  �   a)  A   �)  R   $*  1   w*  �   �*  !  4+  $   V-  G   {-  [   �-  h   .  #   �.  �   �.  �   3/  J   �/  !   0  l   90     �0  )   �0  -   �0  F   1  a   Z1  f   �1  %   #2  �   I2  b   �2  K   L3  \   �3  E   �3  b   ;4  �   �4  y   ?5     �5  O   �5  k   6  V   �6  9   �6  8   7  >   P7     �7  "   �7  "   �7  9   �7  D   .8  0   s8  a   �8  y   9  M   �9     �9  A  �9  �  0;  N   �<  F   =  I   Z=  ;  �=  �   �>  +   �?    �?  $   A  .   *A  �   YA  J   B  w   SB  U   �B  >   !C    `C  Y   bF  U   �F  J   G  [   ]G  7   �G  g   �G  �   YH  0   �H  C   I  S   PI  .   �I  �   �I  o   kJ  N   �J  g   *K  c   �K  h   �K     _L  [   zL  u   �L  J   LM  +   �M  B   �M  D   N  Y   KN  G   �N  �   �N  6   �O  (   �O  |   �O     bP  9   }P  �   �P     |Q  #   �Q  e   �Q  e    R                       %   T   9   <               4      0                 E   ?      +   /   "       #                         I      $   b           k   .   7          Y      	   `              >   p       U      
   n   ]   i   @       O       o           s   (             *          e   h            g   W   D   [      5   2   X   c   A   H   :      u           3           \   v   K   '   C   N   m      8      Q   ^           P       M   d   B           -      ;      j      1   6   _   &   l           q   V       J       S   ,   L   !   f             G   r       R   F   t   )   Z   a   =      -- change password for volume   -- change password for volume, taking password from standard input.
	No prompts are issued.   -- decodes name and prints plaintext version   -- decodes the file and cats it to standard out   -- decrypts a volume and writes results to path   -- encodes a filename and print result   -- print version number and exit   -- show information (Default command)   -- show undecodable filenames in the volume  (NOT supported)
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
Select a number of bytes, from 0 (no random bytes) to 8:  Block Size: %i bytes Block Size: %i bytes + %i byte MAC header Block Size: %i bytes, including %i byte MAC header Block encoding, hides file name size somewhat Build: encfs version %s Config subversion %i found, but this version of encfs only supports up to version %i. Configuration finished.  The filesystem to be created has
the following properties: Creating new encrypted volume. Directory not created. Each file contains 8 byte header with unique IV data.
 EncFS Password:  Enter current Encfs password
 Enter new Encfs password
 Enter the number corresponding to your choice:  Error decoding volume key, password incorrect
 Error saving modified config file.
 Example: 
%s info ~/.crypt
 Failure generating new volume key! Please report this error. File data IV is chained to filename IV.
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
 encfsctl version %s filesystem block size:  fuse failed.  Common problems:
 - fuse kernel module not installed (modprobe fuse)
 - invalid options -- see usage message
 getopt error: %i invalid command: "%s" option '--public' ignored for non-root user truncate failure: read %i bytes, partial block of %i Project-Id-Version: encfs
Report-Msgid-Bugs-To: vgough@pobox.com
POT-Creation-Date: 2010-11-18 00:12-0800
PO-Revision-Date: 2009-10-08 23:19+0000
Last-Translator: atany <Unknown>
Language-Team: Ukrainian <uk@li.org>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Launchpad-Export-Date: 2010-06-17 04:44+0000
X-Generator: Launchpad (build Unknown)
   --змінити пароль для розділу   --змінити пароль для розділу, узяти пароль зі стандартнного вводу.
	Ніяких підказок немає.   --розшифровує ім'я та виводить у вигляді тексту   --розшифровує файл та виводить результат   --розшифовує розділ та записує результат по вказаному шляху   --розшифровує ім'я та виводить результат   --показати номер версії та вийти   --показати інформацію (Команда по-замовченню)   --показати імена файлів у розділі, що не розшифровуються  (НЕ підтримується)
  (використовує %i:%i:%i)
  -- Підтримується розмір блоку від %i до %i байт  -- Підтримується довжина ключа від %i до %i біт  -- розмір блоку %i байт  -- довжина ключа %i біт(а) %s (коренева директорія)
  --показує інформацію про файлову систему або 
 -------------------------- УВАГА --------------------------
 --reverse специфікація не використовує unique/chained IV 8-ми байтовий блоковий шифр Знайдена стара файлова система EncFS. 
Вона не підтримується цією версією EncFS.
 Додати випадкові байти в кожен заголовок блоку?
Дана опція зменшить швидкодію системи, але гарантує
різноманітні коди аутентифікації. Також ви можете 
ввімкнути ініціалізацію векторів на кожен файл, що не призведе
до великої втрати швидкодії. 
Введіть кількість байт від 0 (не випадковий байт) до 8:  Розмір блоку: %i байт Розмір блоку: %i байт + %i біт MAC заголовку Розмір блоку: %i байт, включаючи %i байт MAC заголовку Блокова дешифровка частково приховує розмір імені файлу Зборка: encfs версії %s Конфігураційне порушення %i знайдено, але версія encfs підтримує тільки до %i Конфігурація завершена. Файлова система була створена
з наступними властивостями: Створення нового зашифрованого розділу. Папка не створена. Кожен файл містить 8 байт заголовку з унікальними IV даними.
 Пароль EncFS:  Введіть Ваш Encfs пароль
 Введіть новий Encfs пароль
 Введіть номер. котрий є Вашим вибором:  Помилка дешифрування ключа розділа. Невірний пароль
 Помилка збереження модифікованого файла конфігурації.
 Наприклад: 
%s info ~/.cryp
 Помилка генерації нового ключа для розділу! Будь ласка повідомте про помилку програми. Файл даних IV пов'язаний з іменем файлу IV. (бред якийсь)
 Дешифрування імені файлу: "%s", версії %i:%i:%i Файлові імена зашифровані з використанням IV моду.
 Шифр файлової системи: "%s", версія %i:%i:%i Для додаткової інформації зверніться до довідки encfs(1) Знайдено %i зіпсований файл. Знайдено %i зіпсованих файлів. Знайдено %i зіпсованих файлів. Знайдено конфігураційний файл "%s", але його завантажити не вдалося У теці %s 
 Некоректне число аргументів для команди "%s" Внутрішня помилка: Виникло виключення з головного циклу: %s Внутрішня помилка: Непередбачуване виключення Внутрішня помилка: failed to exec program Внутрішня помилка: помилка fork() Внутрішня помилка: помилка socketpair() Невірний пароль
 Помилка при виборі Розмір ключе: %i біт Помилка MAC порівняння у блоці %li Помилка MAC порівнянн. Відміна читання Обрана ручна конфігурація Неправильний один або декілька аргументів. Зупинено. При використанні монтування через демон необхідно вказати пароль Ім'я кодового інтерфейсу не підтримується Новий пароль Encfs:  Примітка: запущений однопоточний режим, але не вказано
час простою. Файлова система буде працювати в
однопоточному режимі, а потоки будуть здійснювати
перевірку часу простою. Зараз ви маєте ввести пароль для вашої файлової системи.
Ви повинні запам'ятати цей пароль, тому, що ви більше не
будете мати змоги відновити його. У будь якому випадку
пароль може бути змінений пізніше за допомогою encfsctl.

 Режим таємності не підтримується для --reverse Обраний режим максимальної таємності. Паролі не співпадають, спробуйте ще раз
 Оберіть одну із наступних опцій:
 натисніть "x" для режиму експерта,
 натисніть "p" для режиму максимальної таємності,
 або іншу букву чи пусту лінію для стандартного режиму.
?>  Будь ласка виберіть розмір ключа в бітах. Шифр, котрий Ви обрали
підтримує розміри від %i до %i біт в зростанні %i біт.
Наприклад:  Помилка перейменування Оберіть розмір блоку в байтах. Обраний вами шифр
підтримує розмір від %i до %i байта з кроком у %i байт.
Або натисніть Enter для вибору по замовченню (%i байт)
 Обраний алгоритм "%s" Оберіть розмір символів:  Неможливо підібрати шифр для обраної конфігурації...
Повернення до режиму ручної конфігурації. Обраний режим стандартної конфігурації. Шифрування потоку зберігає імена файлів короткими по можливості Завантажена конфігурація не допустима з --reverse
 Папки "%s" не існує. Створити її? (y,n)  Опція поверхневої ініціалізації векторного зв'язування ввімкнута.
Ця опція забороняє використання жорстких посилань до файлової системи.
Без жорстких посилань деякі програми не будуть працювати.
Також не будуть працювати такі програми, як 'mutt' та 'procmail'.
Для більш детальної інформації читайте списки розсилань encfs.
Якщо ви бажаєте обрати інші налаштування конфігурації
будь-ласка натисність CTRL+C і розпочніть спочатку. Інтерфейс дешифрування імен файлів не доступний Наступні алгоритми шифрування зараз доступні: Доступні наступні алгоритми шифрування: Папка не може бути підкаталогом точки монтування. Інтерфейс шифру не доступний.
 Даний інтерфейс кодування файлового імені не доступний
 Дана версія EncFS не підтримує файлові системи, що були створені до 2004-08-13 Неможливо створити папку:  Неможливо знайти шифр  %s, версії %i:%i:%i Неможливо знайти nameio інтерфейс %s, версії %i:%i:%i Неможливо знайти шифр "%s"
 Неможливо інітиалізувати зашифровану файлову систему - перевірка місцеположення
 Неможливо встановите шифр %s, розмір ключа %i та розмір блоку %i Неможливо прочитати конфігураційний файл
 Неможливо знайти точку монтування. Аварійне завершення. Неможливо знайти кореневу папку. Аварійне завершення. Розмонтування файлової системи %s через її бездіяльність Використання:
 Використовується: %s [options] rootDir mountPoint [-- [FUSE Mount Options]] Використовується розмір блоку файлової системи рівний %i байтам Використання ключа. розмір якого %i біт(а) Підтвердіть пароль EncFS:  Конфігурація 3-ої версії; створена %s
 Конфігурація 4-ої версії. створеної %s
 Конфігурація 5 версії; створена %s (виправлення %i)
 Регулятор гучності успішно оновлений.
 Коли запускається у режимі демона, необхідно вказати повний шлях (починається з '/') Пароль довжиною 0 не можливий
 директорія %s не існує
 encfs [options] rootDir mountPoint -- [FUSE Mount Options]
Доступні наступн опції монтування:
 версія  	encfsctl %s розмір блоку файлової системи:  fuse помилка. Можливі помилки:
 - fuse kernel модуль не встановлений (modprobe fuse)
 - невірна опція -- перегляньте довідку
 помилка getopt: %i невірна команда: "%s" опція '--public' ігнорується для всіх користувачів окрім root помилка відсікання: прочитано %i байтів, частина блоку %i 