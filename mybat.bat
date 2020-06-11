@echo off
set directory_path=vinita 
cd %directory_path%
md music images videos
FOR %%I in (*) DO (
if "%%~xI"==".jpg" move %%I images
if "%%~xI"==".png" move %%I images
if "%%~xI"==".mp3" move %%I music
if "%%~xI"==".flac" move %%I music
if "%%~xI"==".avi" move %%I videos
if "%%~xI"==".mov" move %%I videos
if "%%~xI"==".log" del %%I 
)