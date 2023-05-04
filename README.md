# SCA_Cataloging
Uses an XSLT program to generate MARC records from archival spreadsheets


A spreadsheet of archival metadata is received from Special Collections and Archives.

OpenRefine is used to edit the metadata and transform it into a format that matches the XSLT tempate.

The spreadsheet is then pulled into Oxygen XML editor. 

sca_spreadsheet2marc.xsl transforms the spreadsheet metadata into MARCXML. 

strip_indicator_placeholders.xsl is then used to remove the underscore used to strip any null fields.
