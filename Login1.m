function actualPassword=Login1(username,password,opt,optInput)
host = 'localhost';
hostusername = 'root';
hostpassword = '';
%Database Name
databasename = 'anpr';
 
%JDBC Parameters
jdbcString = sprintf('jdbc:mysql://%s/%s', host, databasename);
jdbcDriver = 'com.mysql.jdbc.Driver';
 

 
%DB connection Object
dbConn = database(databasename, hostusername, hostpassword, jdbcDriver, jdbcString);
 
%DB connection checking
dbStatus = isopen(dbConn);
if (dbStatus==0)
    msg = sprintf('Failed To Establish Connection.\nReason: %s', dbConn.Message);
    msgbox(msg);
    return
else 
    disp(username);
    disp(password);
    if isempty(username)
        actualPassword= 'Username Field is empty'; 
    elseif isempty(password)
        actualPassword= 'Password Field is empty'; 
    elseif isempty(optInput)
        actualPassword= 'OTP Field is empty'; 
    else
    selectquery=strcat('Select password from login where username=''',username,'''');
    disp(selectquery);
    curs=exec(dbConn,selectquery);
    curs=fetch(curs);
    actualPassword=curs.Data;
    disp(actualPassword);
    if (strcmp(actualPassword,password))
        disp(opt);
        disp(optInput);
        if (opt==optInput)
        disp('successfuly asinged');
        actualPassword='';
        GUI
        else
           disp('failed');
            actualPassword= 'Error in OPT'; 
        end
        
    else
        disp('Access is failed');
        actualPassword= 'Error in username / password';
    end
    end 
end
end