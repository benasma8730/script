#ROBOCOPY Robust File and Folder Copy.
#/XO : eXclude Older - if destination file exists and is the same date
#/LOG:file : Output status to LOG file (overwrite existing log)
ROBOCOPY "C:\Users\benas.ma8730\Documents\Faiai\" "C:\Users\benas.ma8730\Documents\Failai_backup\" /XO /LOG+:C:\Users\benas.ma8730\Documents\Failai_backup\Backup.log