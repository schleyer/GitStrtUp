       class-id. Main as "STARTPROG.Main".
       environment division.
       configuration section.
       repository.
      
       static.
  
       method-id. "Main" 
           custom-attribute is type "System.STAThreadAttribute".
       local-storage section.
       01 CALL-PROG      PIC X(20) VALUE SPACES.
       01 mainForm type "STARTPROG.Form1".
       procedure division.
       
      *    set mainForm to new "STARTPROG.Form1"()
      *    invoke type "System.Windows.Forms.Application"::"Run"(mainForm)
           ACCEPT CALL-PROG FROM COMMAND-LINE.
           IF CALL-PROG NOT = SPACES
              CALL CALL-PROG.
           STOP RUN.
      *    goback.
       
       end method "Main".
  
       end static.
       end class Main.
