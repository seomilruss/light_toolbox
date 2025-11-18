@echo off
title winSys_info
echo 윈도 버전 및 정보 확인
REM sss
echo(
:: 운영체제 정보 출력
echo(
:: 운영체제 이름
setlocal enabledelayedexpansion
for /f "tokens=2 delims==" %%i in (
        'wmic os get Caption /value'
) do (
    set OSName=%%i
    echo 운영체제 이름: !OSName!
)
echo(
:: 시스템 비트 출력
if defined ProgramFiles(x86) (
    echo 시스템 비트 : 64 비트 운영체제
) else (
    echo 시스템 비트 : 32 비트 운영체제
)
echo(
:: 운영체제 버전
echo ▼ 운영체제 버전
ver
echo(
pause

