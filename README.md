# SMath Studio-0.99.7030
A docker image based on Stable SMath Studio 0.99.7030

Smath Studio is a tiny, powerful, free mathematical program with WYSIWYG editor and complete units of measurements support. For more details on SMath Studio 0.99.7030 please refer the following link

https://en.smath.com/forum/

First I must be thankful to the following gentalman for providing their valuable resources and support to build my docker repository on Andrey Ivashov's SMath Studio-0.99.7030

Andrey Ivashov - Owner of Studio-0.99.7030

Kyle Anderson - Owner of solarkennedy/wine-x11-novnc-docker ( I have forked his ripository to buid my repository )

Nicolas SAPA - A main contributer to  solarkennedy/wine-x11-novnc-docker

Usage :-

To create a smath container (name smath) using bkjaya1952/smathstudio

Refer:- https://hub.docker.com/repository/docker/bkjaya1952/smath-studio

On the Ubuntu terminal

<code>sudo docker create -t -p 8008:8080 --name smath bkjaya1952/smath-studio</code>

<code>sudo docker start smath<code>

<code>xdg-open http://localhost:8008</code>

Then the desktop will appear on the web browser

On the desktop, right click the mouse to get the fluxbox menu

<img src="https://raw.githubusercontent.com/bkjaya2020/smathstudio/master/menu1.png" alt="https://raw.githubusercontent.com/bkjaya2020/smathstudio/master/menu1.png" width="625" height="520">

<img src="https://raw.githubusercontent.com/bkjaya2020/smathstudio/master/menu2.png" alt="https://raw.githubusercontent.com/bkjaya2020/smathstudio/master/menu2.png" width="625" height="520">

To get the SMath Studio panel

On the menu go to sub menus and ckick Applications>Shells>Bash

There is an enother option

On The menu go to sub menus and click Applications>Programming>Monodoc(http)



<img src="https://raw.githubusercontent.com/bkjaya2020/smathstudio/master/Screenshot%20from%202020-02-16%2010-25-36.png" alt="https://raw.githubusercontent.com/bkjaya2020/smathstudio/master/Screenshot%20from%202020-02-16%2010-25-36.png" width="625" height="520">

How to change the timezone

After quitting the ivms4200

On the terminal enter

<code>vim /etc/timezone</code>

Then the timezone file is opened

Go to the top line of the file , press insert key on your key board and enter your timezone ( ie Asia/Colombo)

Then press the Esc key and Shift :x to save & quit the file


