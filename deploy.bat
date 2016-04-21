@echo off
del themes\iceman\source\img\favicon.ico
copy theme_resource\favicon.png themes\iceman\source\img\favicon.png /y
copy theme_resource\hiya.jpg themes\iceman\source\img\hiya.jpg /y
copy theme_resource\us.jpg themes\iceman\source\img\us.jpg /y
copy theme_resource\config.yml themes\iceman\_config.yml /y
copy theme_resource\introduction.ejs themes\iceman\layout\_widget\introduction.ejs /y
call hexo deploy
pause finished.
