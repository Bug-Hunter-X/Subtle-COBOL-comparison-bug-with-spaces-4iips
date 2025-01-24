MOVE SPACES TO WS-CUSTOMER-NAME.

IF WS-CUSTOMER-NAME IS "" 
    DISPLAY "Customer name is missing!" 
ELSE
    DISPLAY "Customer name is: " WS-CUSTOMER-NAME
END-IF.

*  Alternatively, you can use the INSPECT verb to remove leading/trailing spaces before comparison:
INSPECT WS-CUSTOMER-NAME REPLACING LEADING SPACES BY SIZE 1
INSPECT WS-CUSTOMER-NAME REPLACING TRAILING SPACES BY SIZE 1
IF WS-CUSTOMER-NAME = "" 
    DISPLAY "Customer name is missing!" 
ELSE
    DISPLAY "Customer name is: " WS-CUSTOMER-NAME
END-IF.