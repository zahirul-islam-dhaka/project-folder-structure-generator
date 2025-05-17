@echo off
:: Script created by: Md. Zahirul Islam
:: Contact: zahirul.islam.spa@gmail.com, Cell: +8801711792629
:: Description: This script creates a project folder structure with a README file that logs folder details and creator information.

set /p mainFolderPath=Enter the main folder path (e.g., C:\Users\RASEL\Downloads): 
set /p projectName=Enter Project Name: 
set /p creatorName=Enter Your Name: 
set "mainFolder=%mainFolderPath%\%projectName%"  
mkdir "%mainFolder%"
cd "%mainFolder%"

:: Create main folders
mkdir "01_Ado"
mkdir "02_Codes"
mkdir "03_Data"
mkdir "04_Tools"
mkdir "05_Report"
mkdir "06_Output"
mkdir "07_Admin"
mkdir "08_Documents"
mkdir "09_Training"
mkdir "10_Deliverables"

:: Navigate to the 03_Data folder to create subfolders
cd "03_Data"
mkdir "01_Pilot"
mkdir "02_Raw"
mkdir "03_Clean"
mkdir "04_Codebook"
mkdir "05_Audios"
mkdir "06_Transcriptions"
mkdir "07_Videos"
mkdir "08_Photos"

:: Navigate to 04_Tools to create nested subfolders
cd "%mainFolder%\04_Tools"
mkdir "00_Draft"
mkdir "01_Xlsx"
mkdir "02_Print"

:: Navigate to 02_Print to create nested subfolders
cd "02_Print"
mkdir "01_Bangla"
mkdir "02_English"
mkdir "03_PDF"

:: Navigate to 05_Report to create nested subfolders
cd "%mainFolder%\05_Report"
mkdir "01_Inception"
mkdir "02_Study_Report"
mkdir "03_Findings_PPTX"

:: Navigate to 06_Output to create nested subfolders
cd "%mainFolder%\06_Output"
mkdir "01_Tables"
mkdir "02_Graphs"
mkdir "03_Results"

:: Navigate to 07_Admin to create nested subfolders
cd "%mainFolder%\07_Admin"
mkdir "01_Budget"
mkdir "02_Proposals"
mkdir "03_Expense_Report"
mkdir "04_Invoices"
mkdir "05_Contracts"
mkdir "06_Agreements"

:: Navigate to 08_Documents to create nested subfolders
cd "%mainFolder%\08_Documents"
mkdir "01_Proposal"
mkdir "02_Previous_Tools"
mkdir "03_Project_Docs"
mkdir "04_Secondary_data"
mkdir "05_Literatures"
mkdir "06_Reports"

:: Go back to main folder to create README.txt
cd "%mainFolder%"

:: Get the current date in a formatted way (e.g., YYYY-MM-DD)
for /f "tokens=1-3 delims=/ " %%a in ('echo %date%') do set curDate=%%c-%%a-%%b

:: Get the current time in HH:MM format
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set curTime=%%a:%%b

:: Create the README.txt file with folder creation details
(
    echo Project Name: %projectName%
    echo Created By: %creatorName%
    echo Date Created: %curDate%
    echo Time Created: %curTime%
    echo.
    echo Folder Structure:
    echo %projectName%\
    echo ├── 01_Ado
    echo ├── 02_Codes
    echo ├── 03_Data
    echo │   ├── 01_Pilot
    echo │   ├── 02_Raw
    echo │   ├── 03_Clean
    echo │   ├── 04_Codebook
    echo │   ├── 05_Audios
    echo │   ├── 06_Transcriptions
    echo │   ├── 07_Videos
    echo │   └── 08_Photos
    echo ├── 04_Tools
    echo │   ├── 00_Draft
    echo │   ├── 01_Xlsx
    echo │   └── 02_Print
    echo │       ├── 01_Bangla
    echo │       ├── 02_English
    echo │       └── 03_PDF
    echo ├── 05_Report
    echo │   ├── 01_Inception
    echo │   ├── 02_Study_Report
    echo │   └── 03_Findings_PPTX
    echo ├── 06_Output
    echo │   ├── 01_Tables
    echo │   ├── 02_Graphs
    echo │   └── 03_Results
    echo ├── 07_Admin
    echo │   ├── 01_Budget
    echo │   ├── 02_Proposals
    echo │   ├── 03_Expense_Report
    echo │   ├── 04_Invoices
    echo │   ├── 05_Contracts
    echo │   └── 06_Agreements
    echo ├── 08_Documents
    echo │   ├── 01_Proposal
    echo │   ├── 02_Previous_Tools
    echo │   ├── 03_Project_Docs
    echo │   ├── 04_Secondary_data
    echo │   ├── 05_Literatures
    echo │   └── 06_Reports
    echo ├── 09_Training
    echo └── 10_Deliverables
) > README.txt

echo Folder structure for "%projectName%" created successfully in "%mainFolderPath%"!
pause
