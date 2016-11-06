@echo off
echo "Buatan Saiful Amin Parodi Kediri"
::Search User
for /f "tokens=3" %%a in ('reg query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\SessionData\1 /v LoggedOnUserName') do (
set "user=%%a")
set "user=%user:.\=%"
echo/%user%


::Search User
::Silahkan Ganti Tempat File adb.exe
cd C:\Users\%user%\AppData\Local\Android\sdk\platform-tools
::Silahkan Ganti Tempat File adb.exe
::set /p Input=Masukkan IP dan Port Kamu:"192.168.1.11:5555"

::adb connect %Input%;

adb connect 192.168.43.1:5555

echo "Sukses Koneksi sukses [saiful.kediri@yahoo.com]"
timeout /t 50 /nobreak
