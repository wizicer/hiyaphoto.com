@echo off
copy theme_config.yml themes\iceman\_config.yml /y
copy introduction.ejs themes\iceman\layout\_widget\introduction.ejs /y
call hexo generate
rem call hexo o -d
call hexo deploy
rd .deploy /s /q
pause finished.
