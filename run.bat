@echo off
del db.json
copy hiya.jpg themes\iceman\source\img\hiya.jpg /y
copy theme_config.yml themes\iceman\_config.yml /y
copy introduction.ejs themes\iceman\layout\_widget\introduction.ejs /y
call hexo server -d
