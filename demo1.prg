#include "minigui.ch"

#xcommand WITH <oObject> DO => Self := <oObject>
#xcommand ENDWITH           => Self := NIL

Memvar Self

PROCEDURE Main

	DEFINE WINDOW Form_1 ;
		AT 0,0 ;
		WIDTH 400 ;
		HEIGHT 400 ;
		TITLE 'MiniGUI ODBC Demo' ;
		MAIN  

		DEFINE MAIN MENU
			DEFINE POPUP 'File'
				MENUITEM 'Test' ACTION Test()
				SEPARATOR
				MENUITEM 'Exit'	ACTION Form_1.Release
			END POPUP
		END MENU

	END WINDOW

	ACTIVATE WINDOW Form_1

RETURN


Function TEST	
	//LOCAL cConStr := "Driver={PostgreSQL ANSI(x64)};Server=localhost;Port=5432;Database=mcg_db;Uid=postgres;Pwd=odoo;"	//2025-07-09 error!!!
	//LOCAL cConStr := "Driver={PostgreSQL ANSI};Server=localhost;Port=5432;Database=mcg_db;Uid=postgres;Pwd=odoo;"			//ok!
	LOCAL cConStr := "Driver={PostgreSQL ANSI};Server=localhost;Port=5432;Database=mcg_db;Uid=odoo;Pwd=odoo;"				//ok!
	
   LOCAL dsFunctions := TODBC():New( cConStr )

	Str:='SELECT AbsenceTypeCode FROM tblAbsenceType'
	dsFunctions:Setsql(Str)
	if !dsFunctions:Open()
		msgstop("Can't connect to database")
	else
		//MsgInfo("OK")
	endif
 

   WITH dsFunctions DO

      ::SetSQL( "SELECT * FROM tblabsencetype" )
      if ::Open()

		/////
         // Put data in fields array
         ::LoadData( ::nRecNo )

         *MsgInfo( ::FieldByName( "result" ):Value )

         *::Skip()
		 *
         MsgInfo ( ::FieldByName( "AbsenceTypeCode" ):Value )
		 
         ::GoTo( 1 )
		 
         MsgInfo ( ::FieldByName( "AbsenceTypeCode" ):Value )
		 
         ::Prior()
		 
         MsgInfo ( ::FieldByName( "AbsenceTypeCode" ):Value )
		 
         ::First()
		 
         MsgInfo ( ::FieldByName( "AbsenceTypeCode" ):Value )
		 
         ::Last()
		 
         MsgInfo ( ::FieldByName( "AbsenceTypeCode" ):Value )

         ::Close()
		/////
      endif

   ENDWITH

   dsFunctions:Destroy()

Return NIL

