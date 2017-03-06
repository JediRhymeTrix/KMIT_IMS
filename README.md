# KMIT_IMS Project
-- an Inventory management System for KMIT.
 
INSTRUCTIONS:

 - Copy the IMS folder from 'htdocs' into the 'htdocs' folder in your XAMPP directory.
 - Before opening index.html, go to phpmyadmin and create a new database and name it "test" (make sure to delete or rename any other DBs with the same name).
 - Navigate to the 'import' tab and click on 'Choose File' then select the test.sql file inside the data/test directory in the project_IMS folder.
 - Leave all options as default and click on 'Go' and wait for the DB to be imported.
 - Once the DB 'test' is imported, the application can be used by opening "http://localhost/IMS/index.html" in the browser with XAMPP running.


To access test accounts, use:

	Stock Room Staff: 
			email: stockguy@kmit.in	
			passwd: stockguy

	Network Engineer: 
			email: sysadmin@kmit.in	
			passwd: sysadmin

	Management:
			email: mgmnt@kmit.in
			passwd: mgmnt

NOTES:

 - Ignore table names such as 'systemsinfs6', 'systemsinfs6parts', 'systemsinalllabs', etc. I've kept the old names from the demo because of laziness. We can change these later.
 - 'systemsinalllabs' has the untouched dump from the excel sheet they gave us. There are a lot of inconsistencies due to which, I had to sanitize some of the fields and copy the data into 'systemsinfs6'.
 - 'systemsinfs6', for all intents and purposes, contains info about systems from all labs, not just FS6.
 - 'systemsinfs6parts' causes redundancy, but it doesn't affect functioning and moreover, it is easier to read part names from it. I tried to use foreign keys from 'systemsinfs6', but the repetition of system numbers in the data they gave use made this really hard. So, let's just roll with it for now.
 - There is a performance issue caused due to a third-party script used for ajax page requests. If the page loading is slow at any time, wait for the orange loading bar to complete or just refresh the page.
 - I'm working on a fix for the aformentioned issue. (UPDATE: partially fixed. 'partially' is intentional.)
 - In the system list, avoid all systems where the system number has a forward slash. Both JS and PHP are treating those strings as URLs and there isn't much we can do about it. (due to the lack of a 'raw string' format like in Python)
 - For the long-term thing, we will need to clean up all the data manually and ask them to establish a proper standard for recording the data like system number, peripheral's make, model, etc. The data they have given us is all over the place and frankly, useless in its current form.
 - The above reason is why we can only use generic part names like 'Monitor', 'Keyboard', 'Processor', etc. in the stockroom side for now. Once the data is made consistent and they start recording things like 'socket type', we can include all of the proper details.
 - For testing 'maintenance view' in sysadmin/closed requests, either use request#48 or create a new request. Sending existing requests to 'closed' won't word because CPU numbers are read only when a new request is submitted.
 - Movement is incomplete. Management can initiate a movement request, which gets fed to the DB, but sysadmin's side needs to be built.
