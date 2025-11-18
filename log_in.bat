@echo off
title 로그인

:: ※ 주의 입력중 비밀번호가 화면에 노출됨
:: 순수 배치파일의 한계_대신 보안을 위해 로그인 검증 이후 화면을 즉시 지움
:: 파워쉘, VBS로 보안을 강화할 수 있으나 코드로 스파게티를 만들고 싶지 않음

set "u_id=onair"
set "u_pwd=1q2w3e4r!@#"

echo 다음을 입력해주세요.
set /p input_id=ID(를 입력해주세요) :
echo ※ 주의 입력중 비밀번호가 화면에 노출됨

set /p input_pwd=P/D(를 입력해주세요) : 

if "%input_id%"=="%u_id%" (
    if "%input_pwd%"=="%u_pwd%" (
        cls
        echo 로그인 성공!
    ) else (
        cls
        echo 비밀번호 불일치
    )
) else (
    echo 아이디가 불일치
)

pause