# Shell Template

shell脚本模板说明

需要清楚在常见的系统中有两种常见的shell解释器，以ubuntu18.04为例

```shell
$ ll /bin/sh
lrwxrwxrwx 1 root root 4 4月  16  2020 /bin/sh -> dash*
$ ll /bin/bash 
-rwxr-xr-x 1 root root 1113504 6月   7  2019 /bin/bash* 
$ file -h /bin/sh
/bin/sh: symbolic link to dash
$ file  /bin/sh
/bin/sh: symbolic link to dash
$ file  /bin/bash 
/bin/bash: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=12f73d7a8e226c663034529c8dd20efec22dde54, stripped
```

可以使用man分别查看使用手册

`man sh` 
> dash — command interpreter (shell)
> dash is the standard command interpreter for the system.  The current version of dash is in the process of being changed to conform with the POSIX 1003.2 and 1003.2a specifications for the shell.  This version has many features which make it appear similar in some respects to the Korn shell, but it is not a Korn shell clone (see ksh(1)).  Only features designated by  POSIX, plus a few Berkeley extensions, are being incorporated into this shell.  This man page is not intended to be a tutorial or a complete specification of the shell.


 `man bash`

>bash - GNU Bourne-Again SHell
>     Bash is an sh-compatible command language interpreter that executes commands read from the standard input or from a file.  Bash also incorporates useful features from the Korn and C shells (ksh and csh).
Bash  is  intended to be a conformant implementation of the Shell and Utilities portion of the IEEE POSIX specification (IEEE Standard 1003.1).  Bash can be configured to be  POSIX-conformant by default.



看起来sh 和 bash并无大不同之处，但也有一些必须了解的差别



`BASH_SOURCE[0]`与 `$0`

>       BASH_SOURCE
>                   An array variable whose members are the source filenames  where  the  corresponding
>                   shell  function  names in the FUNCNAME array variable are defined.  The shell func‐
>                   tion ${FUNCNAME[$i]} is defined in the  file  ${BASH_SOURCE[$i]}  and  called  from
>                   ${BASH_SOURCE[$i+1]}.

```shell
echo "BASH_SOURCE[0]: ${BASH_SOURCE[0]}"
echo "\$0: $0"
```



 

编程风格参考：

- shell style https://google.github.io/styleguide/shellguide.html



检查shell脚本错误和警告

- [ShellCheck project](https://www.shellcheck.net/)



