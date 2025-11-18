@echo off
REM ▼ 사용자의 값을 입력받는 user input num (전역변수) 선언
set u_input_num=

echo 1. msn 날씨
echo 2. msn 날씨_지도
echo 3. 기상청 날씨 누리
echo 4. 웨더 뉴스
echo 0. 종료

set /p u_input_num=원하는 기능[번호](을/를) 입력해주세요:

:: [설정 금지]크롬 경로 설정
set "chrome_path=C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist "%chrome_path%" (
    set "chrome_path=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
)

:: [설정 금지]파이어폭스 경로 설정
set "firefox_path=C:\Program Files\Mozilla Firefox\firefox.exe"
if not exist "%firefox_path%" (
    set "firefox_path=C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
)

REM ▼ chrome
if "%u_input_num%"=="1" (
    :: msn 날씨
    start "" "%chrome_path%" https://www.msn.com/ko-kr/weather/forecast/
)
if "%u_input_num%"=="2" (
    :: msn 날씨_지도
    start "" "%chrome_path%" https://www.msn.com/ko-kr/weather/maps/precipitation/
)
if "%u_input_num%"=="3" (
    :: 기상청 날씨 누리
    start "" "%chrome_path%" https://www.weather.go.kr/w/index.do
)
if "%u_input_num%"=="4" (
    :: 웨더 뉴스
    start "" "%chrome_path%" https://weathernews.com/weather/
)
if "%u_input_num%"=="0" (
    :: 종료
    exit
)

pause