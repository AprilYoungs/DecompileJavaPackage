
#### A shell tool to unzip and decompile java jar,war package

requestments: java version "11.0.10" or later

### How to use it
1. `vim DecompileJar.sh` set the full path of fernflower.jar
```sh
# the full path of fernflower.jar
fernflower=fernflower.jar
```

2. run command line
```sh
 sh DecompileJar.sh <source> [<destionation>]

 # example 
 sh DecompileJar.sh fernflower.jar temp
```
* `<source>`: the jar file, which is required
* `<destionation>`: destination directory, optional, if not set, the code will decompile to a directory with the same name of the jar file 

### issues
If you meet this error
```sh
Error: A JNI error has occurred, please check your installation and try again
Exception in thread "main" java.lang.UnsupportedClassVersionError: org/jetbrains/java/decompiler/main/decompiler/ConsoleDecompiler has been compiled by a more recent version of the Java Runtime (class file version 55.0), this version of the Java Runtime only recognizes class file versions up to 52.0
	at java.lang.ClassLoader.defineClass1(Native Method)
	at java.lang.ClassLoader.defineClass(ClassLoader.java:756)
	at java.security.SecureClassLoader.defineClass(SecureClassLoader.java:142)
	at java.net.URLClassLoader.defineClass(URLClassLoader.java:468)
	at java.net.URLClassLoader.access$100(URLClassLoader.java:74)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:369)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:363)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:362)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:418)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:355)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:351)
	at sun.launcher.LauncherHelper.checkAndLoadMain(LauncherHelper.java:601)
```

Feel free to compile your own `fernflower.jar` from [source code](https://github.com/fesh0r/fernflower), it will fix it

---
Reference: [fesh0r/fernflower](https://github.com/fesh0r/fernflower)