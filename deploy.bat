@echo off
copy theme_config.yml themes\iceman\_config.yml /y
copy introduction.ejs themes\iceman\layout\_widget\introduction.ejs /y
call hexo generate
call hexo o -d
rd .deploy /s /q
pause finished.
