��    �        �         �
     �
  ]   �
  .   O  1   ~  1   �  (   �  "     '   .  -   V  �   �  R         n    �     �     �  *   �  )   �          0  B   G  >   �  0   �     �  S     P  b     �  )   �  2   �  -   %     S  �   k  U   9  S   �     �       6        P     a       /   �  .   �  #   �       j   8  <   �  (   �  )   	  )   3  *   ]  )   �  /   �  .   �  (        :  .   M  3   |  +   �  &   �       #   !     E     W     j  #   |  (   �  #   �  (   �  4     #   K     o  �   �  �   6  2         9  *   Z  �   �  �   M     �  �   �     �     �  l   �        5   >  :   t  P   �  ?      �  @  :   �   .   !  9   :!  ?   t!  0   �!  9   �!  K   "     k"  *   �"  4   �"  %   �"  8   #  ;   G#  $   �#  '   �#  *   �#  *   �#     &$  @   .$  '   o$     �$     �$  '   �$  '   �$  5   %  5   O%  !   �%  M   �%  !   �%     &  \   5&     �&     �&     �&  {   �&     K'     \'  +   r'  4   �'  �  �'     �)  7   �)  .   �)  4   $*  .   Y*  +   �*     �*     �*  +   �*  �   +  Z   �+     ,    #,     6-     H-  (   a-  (   �-     �-     �-     �-  =   �-  >   3.     r.  R   �.  J  �.     "0  )   70  4   a0  9   �0     �0  �   �0  N   �1  =   2     E2     ^2  L   t2     �2     �2     �2  (   3  )   /3  1   Y3     �3  y   �3  3   "4  &   V4     }4  '   �4  $   �4  /   �4  /   5     J5  ,   d5     �5  "   �5  ,   �5  $   �5  !   6     ?6  !   [6     }6     �6     �6  !   �6      �6     �6  -   7  ;   F7     �7     �7  �   �7  �   n8  )   )9  !   S9  1   u9  �   �9  �   H:     �:  �   �:     �;     �;  X   �;     .<  *   G<  )   r<  X   �<  ,   �<  F  "=  *   i>     �>  '   �>  0   �>  (   ?  +   5?  G   a?     �?  ,   �?  5   �?  &   &@  8   M@  M   �@  %   �@  *   �@  *   %A  2   PA     �A  C   �A  (   �A     �A     B     .B     KB  &   kB  *   �B     �B  Q   �B     ,C     LC  ^   bC     �C     �C     �C  |    D     }D     �D  /   �D  6   �D     J   !   \   R   *      ^   
      .          v          s             x       y                   4      T   0      V      b   $   a             S   F   -   W   K         ;         9          1   (                  Y   u       C   h       t                 :   	       6                  ~       n   8       I   o   l   G   '   z      f   Z          ,   c   )   _   P   2       D   `   U       ]               |   m       {   "          [          <   7   g       B   p   5   3                   E   �   ?       j   O   &      q          d          k           #   =   M   i   @   A       N   r          }   %   Q   +      w   H   >       X   L   e       /      -- change password for volume   -- change password for volume, taking password from standard input.
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
 File holes passed through to ciphertext.
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
Any response that does not begin with 'y' will mean No:  The directory "%s" does not exist. Should it be created? (y,n)  The external initialization-vector chaining option has been
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
 getopt error: %i invalid command: "%s" option '--public' ignored for non-root user truncate failure: read %i bytes, partial block of %i Project-Id-Version: encfs
Report-Msgid-Bugs-To: vgough@pobox.com
POT-Creation-Date: 2010-11-18 00:12-0800
PO-Revision-Date: 2009-07-07 09:22+0000
Last-Translator: Careone <zzbusagain@yahoo.com.cn>
Language-Team: Simplified Chinese <zh_CN@li.org>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Launchpad-Export-Date: 2010-06-17 04:44+0000
X-Generator: Launchpad (build Unknown)
   --改变卷密码   --改变卷密码，从标准输入处接收密码。   --对名字解码并以纯文本形式显示   --对文件解码并将其显示在标准输出中   --解密一个卷并将结果写到路径上   --对一个文件名编码并显示结果   --打印版本号并退出   --显示信息(默认命令)   --显示卷中不能被解码的文件名   --extpass=program	使用外部程序提供口令提示

例如： 加载点为 ~/crypt 原始存储为 ~/.crypt :
    encfs ~/.crypt ~/crypt

   -public		象典型的多用户文件系统一样运行
			(encfs 必须由 root 运行)
   --reverse		反向加密
   -v, --verbose		详细输出: 输出 encfs 调试信息
  -i, --idle=MINUTES	指定时间没有活动就自动卸载
  --anykey		不验证所用密钥的正确性
  --forcedecode		即使发现错误仍然强制解码数据
			(如果文件系统采用了 MAC 文件块头)
  (NOT supported)
  (正在应用%i:%i:%i)
  --支持块大小范围：%i到%i字节  --可支持密钥长度从%i到%i比特  --块大小 %i 字节  --密钥长度 %i 比特 %s (根目录) 
 -------------------------- 警告 --------------------------
 指定 --reverse 参数，不要使用独特的／链接的 IV 8 字节快加密 一个非常老的EncFS文件系统被发现。 
此EncFS版本对它不支持。
 是否在每个文件块头部添加随机的字节？
这个选项会损害性能， 但是可以保证不同的文件块具有不同的认证编码。
注意采用按文件设定的初始向量具有同样的优点， 而对性能的影响
没有这么大。 
请选择加几个字节，从 0（不增加随机字节）到 8：  块大小：%i字节 块大小：%i字节+%i字节MAC头文件 块大小：%i字节，包括%i字节MAC头文件。 块编码，某种程度上隐藏文件名和文件大小 编译： encfs 版本 %s 通用选项:
  -H			显示可选的 FUSE Mount 选项
  -s			禁止多线程操作
  -f			在前台运行(不启动后台服务进程)。
			出错信息将被发送到 stderr 
			而不是送往 syslog.
 发现配置子版本 %i ，但此版本的 encfs 最高支持到版本 %i 。 设置完成。欲创建的文件系统将
有如下属性： 创建新的加密卷。 目录未被创建。 每个文件包含8个字节的文件头，其中包含独有的IV数据。
 EncFS密码：  输入当前的Encfs密码
 输入新的Encfs密码
 输入你的选择所相对应的数字  解码卷密钥出错， 错误的口令
 存储已修改的配置文件时发生错误。
 例如： 
%s info ~/.crypt
 已经禁用外部链接的IV， 因为这个选项要求同时具备 ‘IV 链接’ 
和 ‘唯一IV’ 两个特性。 生成新的卷密钥失败！请报告此错误。 文件数据IV链接到了文件名IV
 文件入口已通过密文。
 文件名编码："%s"，版本%i:%i:%i 文件名以IV链接模式编码。
 文件系统加密： “%s”, 版本 %i:%i:%i 更多信息，请参看man帮助文件encfs(1) 发现 %i 个无效文件 发现了配置文件%s，但未能够载入 位于目录%s中： 
 命令"%s"的声明数量不正确 内部错误：主循环：%s中发现例外 内部错误：发现未预料例外 内部错误：执行程序失败 内部错误：fork()失败 内部错误：socketpair()失败 无效的密码
 无效的选择 密钥大小：%i字节 MAC 比较在文件块 %li 失败 MAC 比较失败， 拒绝读取 已选择手动设置模式。 缺失一个或多个参数，正在中止。 使用 mount-on-demand 参数时必须设置密码的程序 不支持的名称编码界面 新的 Encfs 口令：  注意： 虽然要求运行于单线程模式，但是又指定了一个空闲超时。
文件系统将以单线程运行， 但是为了检测空闲状态会运行其他线程。 现在你需要为你的文件系统输入一个密码。
你一定要将此密码记住，因为是绝对没有恢复措施的。
但是，稍后你可以用encfsctl来改变密码。

 Paranoia 配置不支持 --reverse 参数 已选择预设的极端模式。 两次输入的口令不匹配，请再试一次
 请选择下面的其中一项：
 输入"x"进入专家配置模式，
 输入"p"进入预设置的极端模式，
 其它或空行，进入标准模式。
?>  请挑选使用多少比特长度的密钥。 你所选择的加密算法
支持的密钥长度为 %i 到 %i 比特，以 %i 比特递增。
例如：  重新挂载失败 挑选使用多少字节的文件块大小。 你所选择的加密算法
支持的大小从 %i 到 %i, 按照 %i 增量递增。
只要按 enter 就接受默认值 （ %i 字节）
 选中的算法"%s" 挑选密钥长度：  抱歉，无法找到预设配置中的加密算法...
只好进入手动设置模式。 已选择标准模式。 流编码，尽可能采用最短文件名 加载的配置不兼容--reverse 选项
 此处的默认设置是否。
所有不是以 'y' 开始的字符均被认为是否：  目录"%s" 不存在。要创建吗？(y,n)  外部初始化媒介链选项已启用。此选项禁用了文件系统上的硬链接。
没有了硬链接，一些程序会不能工作。
如“mutt“和“procmail“就是已知的例子。更多信息请参见encfs邮件列表。
如果你想要选择其他配置设置，请按CTRL+C以取消设置并重新开始。 所要求的文件名编码界面不可用 以下的加密算法可用： 以下的文件名编码算法可用： 原始目录不可以是加载点的子目录。 所要求的加密算法界面不可用
 所要求的文件名编码界面不可用
 此版本的 EncFS 不支持 2004－08－13 之前创建的文件系统 不能够创建目录：  无法找到加密算法 %s, 版本 %i:%i:%i 无法找到文件名编码界面 %s, 版本 %i:%i:%i 无法找到指定的加密算法"%s"
 不能够对加密的文件系统初始化-检查路径
 无法为加密算法 %s, 密钥长度 %i, 文件块大小 %i 创建实例。 不能够载入或解析配置文件
 未能够找到加载点，正在中止。 未能够找到根目录，正在中止。 文件系统 %s 处于空闲状态， 正在卸载 用法:
 用法： %s [options] rootDir mountPoint [-- [FUSE Mount Options]] 使用文件系统块大小为 %i 字节 使用密钥长度为%i比特 确认Encfs 口令：  版本3配置；由%s创建
 版本4配置；由%s所创建
 版本5配置；由%s创建(修订%i)
 第6版配置；由 %s 创建 (校订 %i)
 卷密钥已成功更新。
 要指定后台服务模式，你必须使用绝对路径（以 ‘/’ 开头） 不允许用零长度的密码
 目录%s不存在。
 encfs [options] rootDir mountPoint -- [FUSE Mount Options]
可用的 FUSE Mount 选项如下:
 encfs版本%s encfsctl version %s 文件系统的块大小：  fuse 失败。 常见的问题：
 - 没有安装 fuse 内核模块(modprobe fuse)
 - 错误的选项 -- 参考用法信息
 getopt 错误: %i 无效命令:"%s" 选项'--public'被忽略，您不是root用户 截断错误： 读入 %i 字节，部分 %i 被阻隔 