<h2>📫 004-Harbour-MiniGUI-openConnection-ODBC-PgSQL</h2>


 💞️💞️💞️<span class="font-weight-bold">Prepare | Download | Action</span>💞️💞️💞️
 <br>
<br>
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
download:<br>
<span class="font-weight-bold">Current version Harbour+MiniGUI: </span>
<i>	
<a href="https://www.hmgextended.com/download.html">https://www.hmgextended.com/download.html</a>
</i>
<br>
<span class="font-weight-bold">Borland C++ Compiler version 5.8: </span>
<i>	
<a href="https://www.hmgextended.com/files/MISC/bcc582.zip">https://www.hmgextended.com/files/MISC/bcc582.zip</a>
</i>
<br>
<span class="font-weight-bold">database server for windows at: </span>
<i>	
<a href="https://www.enterprisedb.com/downloads/postgres-postgresql-downloads">https://www.enterprisedb.com/downloads/postgres-postgresql-downloads</a>
</i>
<br>
<span class="font-weight-bold">PgSQL ODBC Connector at: </span>
<i>	
<a href="https://www.postgresql.org/ftp/odbc/versions.old/msi/">https://www.postgresql.org/ftp/odbc/versions.old/msi/</a>
</i>
<br>
<pre>
-1-
install Harbour+MiniGUI at: c:\MiniGUI
if exist c:\MiniGUI --> rename first to c:\MiniGUI-old


-2-
extract Borland C++ Compiler version 5.8 (bcc582.zip)
to c:\Borland\BCC58


-3-
install database server at: c:\PostgreSQL\17
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


-4-
install PgSQL ODBC Connector
psqlodbc_16_00_0000.zip --> i use this file!
installed in your PC


-5-
create user for odoo, run:
goto window Terminal or goto directory: c:\PostgreSQL\17\bin\

createuser -U postgres -P -s -e odoo
Enter password for new role: odoo
Enter it again: odoo
Password: odoo

-6-
ceate empty database:
goto window Terminal or goto directory: c:\PostgreSQL\17\bin\

createdb -U postgres -O odoo -E UTF8 mcg_db
createdb -U postgres -O odoo -E UTF8 laravel

password: odoo (optional for demo)


-7-
Create table and insert data:
goto window Terminal or goto directory: c:\PostgreSQL\17\bin\

psql -U postgres -d mcg_db -f tblAbsenceType.sql

Password for user postgres: odoo


or you can use PgAdmin:
-goto directory and run: c:\PostgreSQL\17\pgAdmin 4\runtime\pgAdmin4.exe
-select mcg_db database
-click Query Tool
-open with your editor file: tblAbsenceType.sql
-copy and paste to pgAdmin 4 - Query
-click Execute Script (F5)


-8-
compile.bat
run demo1.exe

</pre>

other reference: 
.\PostgreSQL
<br><br>
 
 
 Thanks you. 

 👋 👀 🌱 💞️ 📫 