# project-folder-structure-generator
# 📁 Project Folder Structure Generator (Windows Batch Script)

This repository contains a Windows batch script (`create_project_structure.bat`) developed to automate the creation of standardized folder structures for research, consultancy, or data-driven projects. It saves time and ensures consistency across project documentation, code, and deliverables.

---

## 🛠 Features

- Prompts for:
  - Main directory path
  - Project name
  - Creator name
- Automatically generates a comprehensive folder hierarchy
- Includes nested subfolders for tools, data, outputs, and administration
- Generates a `README.txt` with folder structure and metadata (creator, timestamp, etc.)

---

## 📂 Folder Structure Created

```text
<ProjectName>/
├── 01_Ado
├── 02_Codes
├── 03_Data
│   ├── 01_Pilot
│   ├── 02_Raw
│   ├── 03_Clean
│   ├── 04_Codebook
│   ├── 05_Audios
│   ├── 06_Transcriptions
│   ├── 07_Videos
│   └── 08_Photos
├── 04_Tools
│   ├── 00_Draft
│   ├── 01_Xlsx
│   └── 02_Print
│       ├── 01_Bangla
│       ├── 02_English
│       └── 03_PDF
├── 05_Report
│   ├── 01_Inception
│   ├── 02_Study_Report
│   └── 03_Findings_PPTX
├── 06_Output
│   ├── 01_Tables
│   ├── 02_Graphs
│   └── 03_Results
├── 07_Admin
│   ├── 01_Budget
│   ├── 02_Proposals
│   ├── 03_Expense_Report
│   ├── 04_Invoices
│   ├── 05_Contracts
│   └── 06_Agreements
├── 08_Documents
│   ├── 01_Proposal
│   ├── 02_Previous_Tools
│   ├── 03_Project_Docs
│   ├── 04_Secondary_data
│   ├── 05_Literatures
│   └── 06_Reports
├── 09_Training
└── 10_Deliverables
