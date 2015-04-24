@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
mkdir C:\Python27
choco install python2
choco install pyqt4
C:\Python27\Scripts\pip2.exe install pyserial