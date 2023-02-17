# Shell Template

shell脚本模板说明

需要清楚在常见的系统中有多种shell解释器，以ubuntu20.04为例

```shell
 cat /etc/shells
# /etc/shells: valid login shells
/bin/sh
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/bin/dash
/usr/bin/dash
/usr/bin/fish

```


可以使用man分别查看使用手册,以sh和bash为例

`man sh` 
> dash — command interpreter (shell)
> dash is the standard command interpreter for the system.  The current version of dash is in the process of being changed to conform with the POSIX 1003.2 and 1003.2a specifications for the shell.  This version has many features which make it appear similar in some respects to the Korn shell, but it is not a Korn shell clone (see ksh(1)).  Only features designated by  POSIX, plus a few Berkeley extensions, are being incorporated into this shell.  This man page is not intended to be a tutorial or a complete specification of the shell.


 `man bash`

>bash - GNU Bourne-Again SHell
>     Bash is an sh-compatible command language interpreter that executes commands read from the standard input or from a file.  Bash also incorporates useful features from the Korn and C shells (ksh and csh).
Bash  is  intended to be a conformant implementation of the Shell and Utilities portion of the IEEE POSIX specification (IEEE Standard 1003.1).  Bash can be configured to be  POSIX-conformant by default.



看起来sh 和 bash并无大不同之处，但在语法上有一定的差别


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



