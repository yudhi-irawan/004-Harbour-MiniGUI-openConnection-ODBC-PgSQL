<h2>📫 004-Harbour-MiniGUI-openConnection-ODBC-PgSQL</h2>


 💞️💞️💞️<span class="font-weight-bold">Prepare | Download | Action</span>💞️💞️💞️
 <br>
<br>
-1-
<pre>
create directory: c:\git_repo\
goto: c:\git_repo\
run CMD
c:\git_repo\git clone https://github.com/yudhi-irawan/004-Harbour-MiniGUI-openConnection-ODBC-PgSQL.git
c:\git_repo\cd 004-Harbour-MiniGUI-openConnection-ODBC-PgSQL
dir

run vscode or your favourite editor
code .
open new terminal
</pre>
-2-
<span class="font-weight-bold">download harbour-MiniGUI at: </span>
<i>	
<a href="https://www.hmgextended.com/download.html">https://www.hmgextended.com/download.html</a>
<br>🌱🌱🌱<br>
</i>
-3-
<span class="font-weight-bold">download Borland C++ Compiler version 5.8: </span>
<i>	
<a href="https://www.hmgextended.com/files/MISC/bcc582.zip">https://www.hmgextended.com/files/MISC/bcc582.zip</a>
<br>🌱🌱🌱<br>
</i>
-4-
<span class="font-weight-bold">download database server for windows at: </span>
<i>	
<a href="https://www.enterprisedb.com/downloads/postgres-postgresql-downloads">https://www.enterprisedb.com/downloads/postgres-postgresql-downloads</a>
<br>🌱🌱🌱<br>
</i>
-5-
<span class="font-weight-bold">download PgSQL ODBC Connector at: </span>
<i>	
<a href="https://www.postgresql.org/ftp/odbc/versions.old/msi/">https://www.postgresql.org/ftp/odbc/versions.old/msi/</a>
<br>🌱🌱🌱<br>
</i>








<pre>
installation directory: c:\PostgreSQL\17

checked PostgreSQL Server
checked PgAdmin 4
unchecked Stack Builder
checked Command Line Tools

Password: odoo
Retype password: odoo
Port: 5432
Locale: DEFAULT
next

Add c:\PostgreSQL\17 to the PATH

goto window Terminal or goto directory: c:\PostgreSQL\17\bin\
create user for odoo, run:
createuser -U postgres -P -s -e odoo
Enter password for new role: odoo
Enter it again: odoo
Password: odoo

ceate empty database:
database-1: mcg_db
database-2: laravel

user: odoo (optional for demo)
pass: odoo (optional for demo)

Create table and insert data:
-goto directory and run: c:\PostgreSQL\17\pgAdmin 4\runtime\pgAdmin4.exe
-select mcg_db database
-click Query Tool
-open with your editor file: tblAbsenceType.sql
-copy and paste to pgAdmin 4 - Query
-click Execute Script (F5)
</pre>
<br>
<br>
<span class="font-weight-bold">This example requires PgSQL ODBC Connector at: </span>
<i>	
<a href="https://www.postgresql.org/ftp/odbc/versions.old/msi/">https://www.postgresql.org/ftp/odbc/versions.old/msi/</a>
<br>🌱🌱🌱<br>
</i>
<pre>
psqlodbc_16_00_0000.zip --> i use this file!
psqlodbc_16_00_0000-x64.zip

installed in your PC
</pre>
<br>
<br>
<span class="font-weight-bold">visit to: </span>
<i>	
<a href="https://www.hmgextended.com/download.html">https://www.hmgextended.com/download.html</a>
<br>🌱🌱🌱<br>
</i>
<pre>
download Current version Harbour+MiniGUI
--> hmg-25.06-setup.zip
install at: c:\MiniGUI
if exist c:\MiniGUI --> rename first to c:\MiniGUI-old

download Borland C++ Compiler version 5.8
--> bcc582.zip
install Borland at c:\Borland\BCC58

create directory: c:\git_repo\
goto: c:\git_repo\
run CMD
c:\git_repo\git clone https://github.com/yudhi-irawan/004-Harbour-MiniGUI-openConnection-ODBC-PgSQL.git
c:\git_repo\cd 004-Harbour-MiniGUI-openConnection-ODBC-PgSQL
dir

run vscode or your favourite editor
code .
open new terminal
compile.bat
run demo1.exe


other reference: 
.\PostgreSQL

</pre>


<br><br>
 
 
 Thanks you. 

 👋 👀 🌱 💞️ 📫 