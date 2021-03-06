CREATE OR REPLACE PROCEDURE UPD_LOGIN (
    USRNM IN LOGIN.USERNAME%TYPE,
    PSSWD IN LOGIN.PASSWORD%TYPE,
    U_ROLE IN LOGIN.USER_ROLE%TYPE)
AS
BEGIN
    UPDATE LOGIN 
    SET USERNAME = USRNM, PASSWORD = PSSWD,USER_ROLE = U_ROLE   
    WHERE USRNM = USERNAME;
    COMMIT;
END;

DECLARE
    USRNM LOGIN.USERNAME%TYPE;
    PSSWD LOGIN.PASSWORD%TYPE;
    U_ROLE LOGIN.USER_ROLE%TYPE;
    
BEGIN
    USRNM := 'jcross';
    PSSWD := 'password2';
    U_ROLE := 'not user';
    UPD_LOGIN(USRNM, PSSWD,  U_ROLE);
END;