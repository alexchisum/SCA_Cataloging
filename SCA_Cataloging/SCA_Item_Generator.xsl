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
    and a set of bibs from Alma in MARC XML format. The script shoudl be executed on the set of bibs. -->
    
    <!-- This variable refers to the location of the Excel spreadasheet containing item data received
    from SCA. The location needs to be updated with each batch. -->
    <xsl:variable name="excel_data"
        select="document('file:/C:/Users/achisum.FSU/OneDrive%20-%20Florida%20State%20University/Documents/GitHub/SCA_Cataloging/SCA_Cataloging/Item_Generator/Working_Files/Excel/SmallBooks_NoItems_NotDupes_Excel.xml')/root/row"/>


    <!-- This template copies the set of Alma bibs. -->
    <xsl:template match="node() | @*">
        <xsl:copy>
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- This template matches the MMS ID from the Alma bibs to the MMS ID of the Excel data,
    converts the Excel data to a 949 field, and inserts the 949 into the matching Alma bib. -->
    <xsl:template match="collection">
        <xsl:for-each select="record">
            <xsl:copy>
                <xsl:apply-templates select="node() | @*"/>
                <xsl:variable name="binary">
                    <xsl:for-each select=".">
                        <xsl:value-of select="controlfield[@tag = 001]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="Location_Code">
                    <xsl:for-each select="$binary">
                        <xsl:value-of
                            select="$excel_data[MMS_ID = current()]/*[(self::Location_Code)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="Item_Description">
                    <xsl:for-each select="$binary">
                        <xsl:value-of
                            select="$excel_data[MMS_ID = current()]/*[(self::Item_Description)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="Barcode">
                    <xsl:for-each select="$binary">
                        <xsl:value-of select="$excel_data[MMS_ID = current()]/*[(self::Barcode)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="BOX_BARCODE">
                    <xsl:for-each select="$binary">
                        <xsl:value-of
                            select="$excel_data[MMS_ID = current()]/*[(self::BOX_BARCODE)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="Tray__">
                    <xsl:for-each select="$binary">
                        <xsl:value-of select="$excel_data[MMS_ID = current()]/*[(self::Tray__)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="Copy">
                    <xsl:for-each select="$binary">
                        <xsl:value-of select="$excel_data[MMS_ID = current()]/*[(self::Copy_Info)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="Enum_A">
                    <xsl:for-each select="$binary">
                        <xsl:value-of select="$excel_data[MMS_ID = current()]/*[(self::Enumeration_A)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="LCCN_A">
                    <xsl:for-each select="$binary">
                        <xsl:value-of select="$excel_data[MMS_ID = current()]/*[(self::LCCN_A)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="LCCN_B">
                    <xsl:for-each select="$binary">
                        <xsl:value-of select="$excel_data[MMS_ID = current()]/*[(self::LCCN_B)]"/>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="Tray_Array">
                    <xsl:for-each select="$binary">
                        <xsl:value-of select="$excel_data[MMS_ID = current()]/*[(self::Tray_Array)]"/>
                    </xsl:for-each>
                </xsl:variable>

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
                </datafield>
            </xsl:copy>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
