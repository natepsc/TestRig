��            �         �
     �
  ]   �
  .   ?  1   n  1   �  (   �  "   �  '     -   F  �   t  R         ^         �     �  *   �  )   �             B   7  >   z  0   �     �  S   �  P  R     �  )   �  2   �  -        C  �   [  U   )  S        �     �  6   	     @     Q     o  /   �  .   �  #   �       j   (  <   �  (   �  )   �  *   #  )   N  /   x  .   �  (   �        .     3   B  +   v  &   �     �  #   �               0  #   B  (   f  #   �  (   �  4   �  #        5  �   J  �   �  2   �      �  *      �   K  �        �  �   �     J     b  l   v      �  5     :   :  P   u  R   �  ?     �  Y  :   �   .   $!  9   S!  ?   �!  0   �!  9   �!  K   8"     �"  *   �"  4   �"  %   #  8   '#  ;   `#  $   �#  '   �#  *   �#  *   $     ?$  @   G$  '   �$     �$     �$  '   �$  '   
%  5   2%  !   h%  M   �%  !   �%     �%  \   &     u&     �&     �&  {   �&     .'     ?'  +   U'  4   �'  /  �'  8   �)  �   *  N   �*  `   -+  v   �+  J   ,  9   P,  S   �,  Q   �,    0-  �   I.  3   /    K/  %   Y1  !   1  I   �1  E   �1  '   12  #   Y2  �   }2  N   �2  I   M3  1   �3  �   �3  a  r4  $   �6  I   �6  W   C7  k   �7  #   8  �  +8  �   �9  �   x:  H   ;  )   K;  }   u;     �;  1   <  -   :<  T   h<  ]   �<  Q   =      m=  �   �=  n   ->  I   �>  0   �>  f   ?  E   ~?  �   �?  �   I@  n   �@     WA  ]   uA  m   �A  T   AB  9   �B  0   �B  6   C     8C     WC  "   rC  5   �C  >   �C  5   
D  p   @D  k   �D  J   E     hE  ?  �E  b  �F  U   +H  ]   �H  O   �H  1  /I  �   aJ  2   -K    `K  (   iL  ,   �L  �   �L  ?   bM  r   �M  Y   N  �   oN  �   
O  P   �O  �  �O  W   �R  L   S  L   gS  e   �S  N   T  r   iT  �   �T  3   dU  ;   �U  L   �U  :   !V  �   \V  f   �V  t   SW  f   �W  h   /X  ^   �X     �X  k   Y  ^   }Y  <   �Y  '   Z  4   AZ  :   vZ  P   �Z  9   [  �   <[  2   �[  3   \  �   C\     �\     �\  9   ]  �   G]     '^  %   ?^  i   e^  W   �^     I   !   \   Q   *      ^   
      .          u          |             w       x                   3      S          U      b   $   a             R   E   -   V   J      ~   :         8          0   (                  Y   t       B   h       s                 9   	       5                  }       n   7       H   o   l   F   '   y      f   Z      [   ,   c   )   _   O   1       C   `   T       ]               {   m       z   "          W          ;   6   g       A   p   4   2                   D      >       j   N   &      q          d          k           #   <   L   i   ?   @       M   r              %   P   +      v   G   =       X   K   e       /      -- change password for volume   -- change password for volume, taking password from standard input.
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
 The default here is No.
Any response that does not begin with 'y' will mean No:  The default here is Yes.
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
 Volume Key successfully updated.
 When specifying daemon mode, you must use absolute paths (beginning with '/') Zero length password not allowed
 directory %s does not exist.
 encfs [options] rootDir mountPoint -- [FUSE Mount Options]
valid FUSE Mount Options follow:
 encfs version %s encfsctl version %s filesystem block size:  fuse failed.  Common problems:
 - fuse kernel module not installed (modprobe fuse)
 - invalid options -- see usage message
 getopt error: %i invalid command: "%s" option '--public' ignored for non-root user truncate failure: read %i bytes, partial block of %i Project-Id-Version: encfs
Report-Msgid-Bugs-To: vgough@pobox.com
POT-Creation-Date: 2010-11-18 00:12-0800
PO-Revision-Date: 2009-10-13 06:09+0000
Last-Translator: Pavel Belyaev <o4kareg@gmail.com>
Language-Team: Russian <ru@li.org>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Launchpad-Export-Date: 2010-06-17 04:44+0000
X-Generator: Launchpad (build Unknown)
X-Rosetta-Version: 0.1
   -- изменить пароль для раздела   -- изменить пароль для тома, ввести пароль со стандартного потока ввода.

	Не выдает подсказки для ввода.   -- декодирует имя и печатает отрытый текст   -- декодирует файл и выводит его в стандартный поток   -- расшифровывает том и записывает результат по указанному пути   -- шифрует имя файла и выводит результат   -- вывести номер версии и выйти   -- показать информацию (Команда по умолчанию)   -- показать недекодируемые файлы на разделе   --extpass=program	Использовать внешнюю программу для отображения приглашения на ввод пароля

К примеру, подмонтировать ~/crypt к хранилищу в ~/.crypt :
    encfs ~/.crypt ~/crypt

   --public		вести себя как типичная многопользовательская файловая система

			(encfs должна быть запущена с правами root)
   --reverse		обратное шифрование
   -v, --verbose		подробный режим: вывод отладочных сообщений encfs
  -i, --idle=MINUTES	Автоматически размонтировать после указанного промежутка времени
  --anykey		Не проверять ключ на использование
  --forcedecode		расшифровать данные, даже если ошибки обнаружены
			(для файловых систем использующих MAC заголовки)
  (НЕ поддерживается)
  (использует %i:%i:%i)
  -- Поддержка размера блока от %i до %i байт  -- Поддержка ключа длиной от %i до %i бит  -- размер блока %i байт  -- длина ключа %i бит %s (корневой каталог)
  -- отобразить информацию о файловой системе, или 
 ----------------------- ПРЕДУПРЕЖДЕНИЕ -----------------------

 --reverse указано, не использовать unique/chained IV 8-ми байтовый блоковый шифр Найдена слишком старая версия файловой системы EncFS. 
Она не поддерживается этой версией EncFS.
 Добавлять случайные байты в каждый заголовок блока?
Данная опция уменьшит производительность системы, но будет гарантировать различные коды аудентификации. Также можно включить инициализацию
векторов на каждый файл, что не приведет к 
большому уменьшению производительности. 
Введите количество байт от 0 (нет случайных байт) до 8:  Размер блока: %i байт Размер блока: %i байт + %i байт MAC заголовок Размер блока: %i байт, включая %i байт MAC заголовок Блочное кодирование, частично скрывает размер имени файла Сборка: encfs версия %s Общие опции:
  -H			показать необязательные опции монтирования FUSE
  -s			отключить мультипоточное выполнение
  -f			запустить в фоновом режиме (не порождать демона).
			Сообщения об ошибках будут посылаться на stderr
			вместо системного лога.
 Найдена %i версия конфигурационного файла, но эта версия поддерживается только с %i версии. Конфигурация завершена. Создана файловая система
с следующими свойствами: Создание нового зашифрованого раздела. Директория не создана. Каждый файл содержит 8-ми байтный заголовок с уникальными IV данными.
 Пароль EncFS:  Введите текущий Encfs пароль
 Введите новый Encfs пароль
 Введите номер соответствующий Вашему выбору:  Ошибка расшифровки ключа раздела, неверный пароль
 Ошибка сохранения конфигурационного файла.
 Пример: 
%s info ~/.crypt
 Наружные цепочки IV отключены, так как это требуют
обе опции 'IV цепочки' и 'IV уникальные'. Ошибка генерации ключа раздела! Сообщите нам об этой ошибке. Данные файла IV связаны с именем файла IV.
 Шифр файла: "%s", версия %i:%i:%i Файловые имена зашифрованя с использованием IV цепочек.
 Шифр файловой системы: "%s", версия %i:%i:%i Для дополнительной информации, обратитесь к страницам руководства encfs(1) Найден %i испорченный файл. Найдено %i испорченных файлов. Найдено %i испорченных файлов. Найдеи конфигурационный файл %s, но его невозможно загрузить В директории %s: 
 Неправильное количество аргументов для команды "%s" Внутренняя ошибка: Возникло исключение из главного цикла: %s Внутренняя ошибка: непредвиденное исключение Внутренняя ошибка: failed to exec program Внутренняя ошибка: fork() failed Внутренняя ошибка: socketpair() failed Неверный пароль
 Ошибка выбора. Размер ключа: %i бит Ошибка MAC сравнения в блоке %li Ошибка MAC сравнения, отмена чтения Выбрана ручная конфигурация. Отсутствуют один или более аргументов, аварийное завершение. При использовании mount-on-demand должен быть использован пароль Интерфейс именования не поддерживается. Новый пароль EncFS:  Заметка: запущен однопотоковый режим, но задано время простоя. Файловая система будет работать в однопотоковом режиме, но потоки будут осуществлять проверку времени простоя Введите пароль для доступа к файловой системе.
Запомните пароль, так как в случае утери его, 
будетневозможно востановить данные. Тем не менее
этот пароль можно изменить с помощью утилиты encfsctl.

 Конфигурация Paranoia для --reverse не поддерживается. Выбрана конфигурация с максимальной секретностью. Пароли не совпадают, заново введите пароль
 Выберите одну из следующих букв:
 введите "x" для режима эксперта,
 введите "p" для режима максимальной секретности,
 любой другая буква для выбора стандартного режима.
?>  Выберите размер ключа в битах. Выбранный шифр поддерживает размер ключа от %i до %i бит с шагом в %i бит.
К примеру:  Неудалось перемонтировать. Выберите размер блока в байтах. Используемый шифр поддерживает размер от %i до %i байт с шагом в %i байт.
Нажмите enter для выбора по умолчанию (%i байт)
 Выбранный алгоритм "%s" Выбранный размер ключа:  Нельзя подобрать шифр для выбранной конфигурации...
Возврат в режим ручной конфигурации. Выбрана стандартная конфигурация. Шифрование потока, сохраняет имена файлов как только возможно Загруженная конфигурация не сопоставима с --reverse
 Ответ по умолчанию - Нет
Любой ответ, который не начинается с 'y', будет означать "Нет":  Ответ по умолчанию - Да
Любой ответ, который не начинается с 'n', будет означать "Да":  Директория "%s" не существует. Создать ее? (y,n)  Опция наружной инициализации векторного связывания включена.
Эта опция запрещает использовать жесткие ссылки на файловой системе.
Без жестких ссылок некоторые программы не будут работать.
Не будут работать такие программы как 'mutt' и 'procmail'. 
Для более подробной информации читайте списки рассылки encfs.
Если вы желаете выбрать другие настройки
конфигурации то нажмите CTRL-C и начните все заново. Интерфейс шифрования файловых имен не доступен Доступны следующие алгоритмя шифрования: Доступны следующие алгоритмы зашифровки: Каталог не может быть подкаталогом точки монтирования. Интерфейс запрошенного шифра не доступен.
 Запрошенный интерфейс кодировки файлового имени не доступен.
 Данная версия EncFS не поддерживает файловые системы, созданные ранее 2004-08-13 Не могу создать директорию:  Не могу найти шифр %s, версии %i:%i:%i Не могу найти nameio интерфейс %s, версии %i:%i:%i Не могу найти выбранный шифр "%s"
 Нельзя инициализировать зашифрованную файловую систему. Проверте путь к ней.
 Не могу установить шифр %s, размер ключа %i, размер блока %i Невозможно загрузить или анализировать конфигурационный файл
 Не могу найти точку монтирования, аварийное завершение. Не могу найти корневую директорию, аварийное завершение. Размонтировка файловой системы %s из-за бездействия Применение:↵
 Использование: %s [options] rootDir mountPoint [-- [FUSE опции монтирования]] Используется блок файловой системы размером %i байт Используется ключ размером %i бит Повторите пароль EncFS:  Настройки версии 3 созданы %s
 Конфигурация 4 версии создана %s
 Конфигурация 5 версии создана %s (редакция %i)
 Ключ раздела успешно обновлен.
 Когда запускается в режиме демона, необходимо указывать полные пути (начинающиеся с '/') Пустые пароли не разрешены
 директория %s не существует.
 encfs [options] rootDir mountPoint -- [FUSE опции монтирования]
Доступны следующие опции монтирования:
 encfs версия %s encfsctl версия %s размер блока файловой системы:  ошибка fuse. Возможные проблемы:
 - модуль ядра fuse не установлен (modprobe fuse)
 - не правильные опции -- cм. справку по использованию
 ошибка getopt: %i неверная команда: "%s" опция '--public' игнорируется для всех пользователей кроме root Ошибка усечения: прочитано %i байт, часть блока %i 