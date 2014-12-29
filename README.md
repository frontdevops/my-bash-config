My Shell Config
=============

Simple configurations for Bash

# Features
Install configurations for:
 - screen
 - bash
 - git

# Installation

Clone the project to a `myshellconfig` folder in your home directory:

```
$ cd
$ git clone https://github.com/i0z/myshellconfig.git
$ ./myshellconfig/install user
```

For root user clone the project in your root directory and run:

```
$ su
$ cd
$ git clone https://github.com/i0z/myshellconfig.git
$ ./myshellconfig/install root
```

_WARNING!_ If you not trust me, don't do it. You can manually edit your `.bashrc` and set configuration.
Or not to touch anything and leave everything as is. It's your choice.

![bash](https://img-fotki.yandex.ru/get/15594/9330072.e/0_1281cb_98213924_orig.png)

# Git prompt with displaying branch

Working with Git and its great branching/merging features is amazing.
Constantly switching branches can be confusing though as you have to run `git status` to see which branch you're currently on. The solution to this is to have your terminal prompt display the current
branch.

If you `cd` to a Git working directory, you will see the current Git branch
name displayed in your terminal prompt. When you're not in a Git working
directory, your prompt works like normal.

![Git Branch in Prompt](https://img-fotki.yandex.ru/get/15491/9330072.e/0_1281ca_8facf7b1_XL.png)

The new prompt will take effect beginning in your next session.
This usually means logging out completely.
To enable it in your current session, you can simply run `. ~/.bashrc` or create new window in screen (Ctrl+A C).
