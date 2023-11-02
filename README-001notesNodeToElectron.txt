

Electron Notes 001  

This is some important notes on 
how the electron packager installs and makes the application. 

There are essentially two styles of packaging an installable program using the electron tool.  
there is apparently a portable , and stand alone style app, 
that initiates the executable file within the folder it is created in . 

this allows the client to just download and run a program as a stand alone program 
by itself. 

----

the other method , is creating a installation file. This creates a local installable file , 
that installs the program on the specified device , that 
that program is designed for. 

-----------------------------------------------------------------------------------------------------

for a stand alone application , 


the package.json needs to be like this ,  

{
  "name": "win0zxp--electron2",
  "version": "1.0.0",
  "description": "",
  "main": "init.js",
  "scripts": {
    "start": "electron .",
    "build": "electron-packager ."
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "electron": "^25.1.0",
    "electron-packager": "^17.1.1"
  }
}



as a electron , packager , 

then , the init.js  , needs to simply create a window and load the code . 
- 
this code should be contained in the init.js file . 
-
const electron = require('electron')
const { app, BrowserWindow } = require('electron')

const createWindow = () => {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
    icon: ""
  })

  win.loadFile('index.html')
}

app.whenReady().then(() => {
  createWindow()
})

-  

Once those steps are completed , and the previous steps have been 
set up ( from the electron build READme )

like  this  ,  

Setps. 
1. - use 
-npm init - y
in the terminal , 
and go through all the lines 


2. npm install electron --save


3.   go to the electron docs page and get ther intialization 
code from "  writing your first electron app. " 
----- the main.js ,on the page , 
---- in to your 
init.js file.    ------ or just copy the code here . 


4.  In the package-json file ,     Make SURE , after all of the JavaScript code is copied into the .init file , that the main entry point is set to the init.js file , 
like so. 
--------------------------
  "description": "",
  "main": "init.js",
  "scripts": {  "start": "electron .",
   
    "build": "electron-packager ." }
    -------------------------------------------


.5 Modify the package.json file 
scripts , to contain    
---------------------------------------------------------
"scripts": {
                                  --- this will set the command for npm start  
    "start": "electron ."
  },---------------------------------------------------------

-------------------------------------------------------------------

.... npm start will launch (not package )
 the application .
 
6.  Time to build the package . 
 - npm run build  - 
 
 packages everything in a local file ,
 in a local folder . 
 
 --- click the .exe to run it locally. 




=================================================================================
--------------------------------------------------------------------
That is how you build a , portable .exe file , 

Now , we will continue to either dismantle , 
re build , 
or re figure the code , to run a local installer package , 
for the code and its dependancies. 












































