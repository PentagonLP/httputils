# HTTPUtils
![projectstage](https://img.shields.io/badge/project%20stage-alpha-yellow)
![projectstage](https://img.shields.io/badge/version-1.0-yellow)
[![license](https://img.shields.io/github/license/PentagonLP/httputils)](https://github.com/PentagonLP/httputils/blob/main/LICENSE)
[![issues](https://img.shields.io/github/issues/PentagonLP/httputils)](https://github.com/PentagonLP/httputils/issues)<br>
[![contributors](https://img.shields.io/github/contributors/PentagonLP/httputils)](https://github.com/PentagonLP/httputils/graphs/contributors)
[![activity](https://img.shields.io/github/commit-activity/m/PentagonLP/httputils)](https://github.com/PentagonLP/httputils/commits/main)
[![lastcommit](https://img.shields.io/github/last-commit/PentagonLP/httputils)](https://github.com/PentagonLP/httputils/commits/main)<br>
![size](https://img.shields.io/github/languages/code-size/PentagonLP/httputils)
![files](https://img.shields.io/github/directory-file-count/PentagonLP/httputils)
![languages](https://img.shields.io/github/languages/count/PentagonLP/httputils)<br>

Library for the Minecraft mod **ComputerCraft/CC: Tweaked** including some additional HTTP Methodes  

## How to install 
HTTPUtils can be installed using the [ComputerCraft Package Tool](https://github.com/PentagonLP/ccpt) by using the following commands:

Install CCPT, only run if you havn't installed it yet:
```
pastebin run syAUmLaF
```
Install the library:
```
ccpt install httputils
```
The library will now be stored in "/lib/httputils". It depends on "fileutils", which will be installed automaticly with HTTPUtils.

## How to use

https://github.com/PentagonLP/httputils/blob/main/testing/testdata will be used in all examples:  
```lua
{
	greeting = "'ello"
}
```

### **1. Get table from URL**  
The function **gethttpdata([url])** returns the parsed table fetched from the given URL. If an error occures, the errormessage is printed in console and false is returned.

*Example:*  

Example code and output:
<br><img
    alt="missing image :("
    src="https://raw.githubusercontent.com/PentagonLP/httputils/main/img/getdata.png"
/><br>  

### **2. Download file from URL**  
The function **downloadfile([filepath],[url])** downloads a file from the given URL and stores it in the given filepath. If an error occures, the errormessage is printed in console and false is returned.

*Example:*  

Example code and output:
<br><img
    alt="missing image :("
    src="https://raw.githubusercontent.com/PentagonLP/httputils/main/img/downloadfile.png"
/><br>  

Content of *"test"*:
```lua
{
	greeting = "'ello"
}
```

### **3. Get Http result from URL**  
The function **gethttpresult([url])** returns the raw result fetched from the given URL. If an error occures, the errormessage is printed in console and false is returned. This is only a helper methode; It only differs from http.get([url]) because it does some additional error checking.

*Example:*  

Example code and output:
<br><img
    alt="missing image :("
    src="https://raw.githubusercontent.com/PentagonLP/httputils/main/img/getresult.png"
/><br>  

## Changelog
Nothing here yet, we are still on 1.0 :)

## Last words
First of all, thanks for reading! This library is not the biggest library ever, but it turned out to be really useful for one of my projects, and maybe it is for yours too :)  
If you find bugs, please create an issue so I can fix them.  
I'm still very new to Github, so feel free to point out things I could do better. Also, english is not my first language, so if you find any spelling/language-related mistakes, please do also create an issue.  
Have a nice day,  
PentagonLP
