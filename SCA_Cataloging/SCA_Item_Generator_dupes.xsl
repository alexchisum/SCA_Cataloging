<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:marc="http://www.loc.gov/MARC21/slim"
    xmlns:mads="http://www.loc.gov/mads/v2" xmlns:fsul="http://www.lib.fsu.edu"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="fsul xs xsl xd mads etd xlink dcterms oasis marc mods"
    xmlns:etd="http://www.ndltd.org/standards/metadata/etdms/1.0/"
    xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:oasis="http://www.niso.org/standards/z39-96/ns/oasis-exchange/table">

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*" xml:space="preserve"/>
    
    <!-- This XSLT is used to convert spreadsheet item data to a 949 field and then insert the 949 field
    into MARC records downloaded from Alma. The MARC records can then be re-uploaded to Alma in order to 
    Generate inventory. In order to run this script successfully, you must have an Excel spreadsheet
    and a set of bibs from Alma in MARC XML format. The script should be executed on the Excel document. -->
    
    <!-- This variable refers to the location of the set of bibs downloaded from Alma. The location 
        needs to be updated with each batch. -->
    <xsl:variable name="bib_set"
        select="document('file:/C:/Users/achisum.FSU/OneDrive%20-%20Florida%20State%20University/Documents/GitHub/SCA_Cataloging/SCA_Cataloging/Item_Generator/Working_Files/Bibs/SmallBooks_NoItems_Dupes.xml')/collection/record/."/>

    <!-- This template matches the MMS IDs in the Excel doc to the MMS IDs in the bib file -->
    <xsl:template match="root">
        <xsl:for-each select="row">
            <xsl:variable name="excel_MMS">
                <xsl:value-of select="MMS_ID"/>
            </xsl:variable>
            <xsl:variable name="bib">
                <xsl:for-each select="$excel_MMS">
                    <xsl:for-each select= "$bib_set[controlfield[@tag = 001] = current()]">
                        <xsl:copy-of select="."/>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:variable>
            <xsl:variable name="Location_Code">
                <xsl:value-of select="Location_Code"/>
            </xsl:variable>
            <xsl:variable name="Permanent_Call_Number">
                <xsl:value-of select="Permanent_Call_Number"/>
            </xsl:variable>
            <xsl:variable name="Item_Description">
                <xsl:value-of select="Item_Description"/>
            </xsl:variable>
            <xsl:variable name="Barcode">
                <xsl:value-of select="Barcode"/>
            </xsl:variable>
            <xsl:variable name="BOX_BARCODE">
                <xsl:value-of select="BOX_BARCODE"/>
            </xsl:variable>
            <xsl:variable name="Copy">
                <xsl:value-of select="Copy_Info"/>
            </xsl:variable>
            <xsl:variable name="Tray__">
                <xsl:value-of select="Tray__"/>
            </xsl:variable>
            <xsl:variable name="Enum_A">
                <xsl:value-of select="Enumeration_A"/>
            </xsl:variable>
            <xsl:variable name="LCCN_A">
                <xsl:value-of select="LCCN_A"/>
            </xsl:variable>
            <xsl:variable name="LCCN_B">
                <xsl:value-of select="LCCN_B"/>
            </xsl:variable>
            <xsl:variable name="Tray_Array">
                <xsl:value-of select="Tray_Array"/>
            </xsl:variable>
            
            <!-- This portion of the template copies the bib when the MMS IDs match,
            then inserts the 949 field with item data. This process will create duplicate bibs in 
            instances where there is more than one item record. On ingest into Alma, multiple item 
            records will be created and duplicate bibs will be deleted. -->
            <xsl:copy-of select="$bib"/>
            <datafield tag="949" ind1=" " ind2=" ">
                <subfield code="a">FTaSU</subfield>
                <subfield code="b">FSUSP</subfield>
                <subfield code="c">
                    <xsl:value-of select="$Location_Code"/>
                </subfield>
                <subfield code="f">
                    <xsl:value-of select="$Barcode"/>
                </subfield>
                <subfield code="g">
                    <xsl:value-of select="$Item_Description"/>
                </subfield>
                <subfield code="h">
                    <xsl:value-of select="$Tray__"/>
                </subfield>
                <subfield code="i">
                    <xsl:value-of select="$Copy"/>
                </subfield>
                <subfield code="j">
                    <xsl:value-of select="$BOX_BARCODE"/>
                </subfield>
                <subfield code="k">
                    <xsl:value-of select="$Enum_A"/>
                </subfield>
                <subfield code="l">
                    <xsl:value-of select="$LCCN_A"/>
                </subfield>
                <subfield code="m">
                    <xsl:value-of select="$LCCN_B"/>
                </subfield>
                <subfield code="n">
                    <xsl:value-of select="$Tray_Array"/>
                </subfield>
                <subfield code="x">
                    <xsl:text>END OF RECORD</xsl:text>
                </subfield>
            </datafield>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>
