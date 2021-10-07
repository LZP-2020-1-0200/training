@echo off
REM finds windows timestamps of files in current directory and subdirectories
REM use at your own risk
REM works on XP and 10 and probably some other versions
setlocal enabledelayedexpansion
for /R %%J in (*.*) do (
  SET s=%%J
  SET kmd="wmic datafile where name="!s:\=\\!" get creationdate | findstr /brc:[0-9]"
  for /f %%K in ('!kmd!') do echo %%J	%%K
)
