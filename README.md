My Shell Config
=============
Simple configurations for Bash. These settings have been made for themselves. But it can be useful to someone else. You can clone the repository and to further develop its own version. This set of files can be core for your configuration.

## Overview
Working with the server through the terminal we are deprived of the comfort of desktop systems. It is therefore important to set up a bash console yourself as comfortable as possible. But the server may be more than one. And sometimes you need to go to a different server. So that every time you do not configure the terminal manually, I have created for themselves a set of basic configurations.

This configuration I use on all my dedicated servers. I recomended to use screen. Why screen and what is the `.screenrc`? Suppose you want to run a program persistently (even if a terminal window closes, for example). For that, you might use the nohup command. But what if you want to start a command-line session on one computer and then go home and resume that session? For something like that, you’ll want to use screen. Screen is also really handy because you can have multiple shells running in one terminal window.

## Features
Install configurations for:
 - screen
 - bash
 - git

## Installation

Clone the project to a `myshellconfig` folder in your home directory:

```bash
$ cd
$ git clone https://github.com/i0z/myshellconfig.git
$ ./myshellconfig/install user
```

For root user clone the project in your root directory and run:

```bash
$ su
$ cd
$ git clone https://github.com/i0z/myshellconfig.git
$ ./myshellconfig/install root
```

After installation on your file system will see two links to the files in the directory test:
```
.screenrc -> myshellconfig/.screenrc
.gitconfig -> myshellconfig/.gitconfig
```

I did not replace the original `.bashrc` in your home directory. I add a link to my version to the end of your configuration file. You can see in `install` script this rows:

```bash
>> ~/.bashrc
```

Now edit `.gitconfig` or delete this file and create new with your configurations.

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

# Updating

Assuming you followed the default installation instructions and cloned this repo to `~/myshellconfig`:

```bash
cd ~/myshellconfig
gitup
```

## License
```
Free 4 all!
```
