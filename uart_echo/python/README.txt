Ustawienie �rodowiska do uruchomienia programu:

Opcja 1) Najszybsza, ale mo�e nie zadzia�a� na niekt�rych komputerach
Uruchom konsol� cmd.exe JAKO ADMINISTRATOR
Uruchom w niej skrypt prepare.bat

Opcja 2) R�czna
1) Zainstaluj Pythona 2 w najnowszej wersji. Wersja 2.7.9 dost�pna na https://www.python.org/downloads/release/python-279/ Domy�lny katalog instalacji to C:/Python27
2) Dodaj C:/Python27 do zmiennej �rodowiskowej PATH
3) Zainstaluj PyQt4 dla Pythona 2. http://www.riverbankcomputing.com/software/pyqt/download
4) Zainstaluj PIP, manad�er pakiet�w pythona. https://pip.pypa.io/en/latest/installing.html Instalacja wymaga �ci�gni�cia skryptu get-pip.py i uruchomienia go.
5) Dodaj C:\Python27\Scripts do zmiennej �rodowiskowej PATH
6) W konsolu cmd.exe wpisz 'pip install pyserial'

Po przygotowaniu �rodowiska, mo�na ju� uruchomi� program ze �r�de� klikaj�c 2 razy na skrypt main.py

Aby skompilowa� program do pliku exe, nale�y:
1) Zainstalowa� py2exe, http://sourceforge.net/projects/py2exe/files/py2exe/0.6.9/ dla pythona 2
2) W konsoli cmd.exe, przej�� do katalogu z programem i wpisa� 'python setup.py py2exe'
3) Program zostanie zbudowany w katalogu dist. Nale�y dystrybuowa� wszystkie pliki z tego katalogu, a nie wy��cznie .exe

//
python2-pyqt4
python2-pyserial