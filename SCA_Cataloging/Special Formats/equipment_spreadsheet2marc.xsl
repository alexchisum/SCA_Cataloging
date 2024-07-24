<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:marc="http://www.loc.gov/MARC21/slim"
    xmlns:mads="http://www.loc.gov/mads/v2" xmlns:fsul="http://www.lib.fsu.edu"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="fsul xs xsl xd"
    xmlns:etd="http://www.ndltd.org/standards/metadata/etdms/1.0/"
    xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:oasis="http://www.niso.org/standards/z39-96/ns/oasis-exchange/table">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*" xml:space="preserve"/>
    
    <xsl:template name="MARC_Template" match="/root">
        <!--Container for multiple MARC records-->
        <marc:collection xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://www.loc.gov/MARC21/slim http://www.loc.gov/standards/marcxml/schema/MARC21slim.xsd">
            <xsl:for-each select="row">
                
                <!-- List of variables to be used in the transformation. Each corresponds to a row from the SCA spreadsheet -->
                <xsl:variable name="IID" select="IID"/>
                <xsl:variable name="field035_1" select="field035_1"/>
                <xsl:variable name="field035_2" select="field035_2"/>
                <xsl:variable name="field035_3" select="field035_3"/>
                <xsl:variable name="field035_4" select="field035_4"/>
                <xsl:variable name="field035_5" select="field035_5"/>
                <xsl:variable name="field035_6" select="field035_6"/>
                <xsl:variable name="field035_7" select="field035_7"/>
                <xsl:variable name="field035_8" select="field035_8"/>
                <xsl:variable name="field035_9" select="field035_9"/>
                <xsl:variable name="field035_10" select="field035_10"/>
                <xsl:variable name="Title" select="Title"/>
                <xsl:variable name="Copy_Number" select="Copy_Number"/>
                <xsl:variable name="Location" select="PLACE"/>
                <xsl:variable name="Service_Tag" select="Service_Tag"/>
                <xsl:variable name="Cost" select="COST"/>
                <xsl:variable name="Loan_Period" select="Loan_Period"/>
                <xsl:variable name="Provider" select="Provider"/>
                
                <!-- Here begins the tempate for the MARC record -->
                <marc:record>
                    <!--  Leader and control fields<-->
                    <marc:leader>
                        <xsl:text>     nrm  22     M  4500</xsl:text>
                    </marc:leader>
                   
                   
                    <!-- The date in the 008 field is grabbed from a field in the spreadsheet that is separate from the publication date. 
                        This is to account for "uuuu" dates. -->
                    <marc:controlfield tag="008">
                        <xsl:text>      suuuu    xx nnn            rnzxx d</xsl:text>
                    </marc:controlfield>
                    
                    <marc:datafield tag="040" ind1=" " ind2=" ">
                        <marc:subfield code="a">FDA</marc:subfield>
                        <marc:subfield code="b">eng</marc:subfield>
                        <marc:subfield code="c">FDA</marc:subfield>
                    </marc:datafield>
                    
                    
                    <!-- This template allows for a large number of 035 fields, each of which corresponds to one row on the spreadsheet. 
                        This allows for individual rows on the spreadsheet to be included on the same bib.  -->
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_1 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_1)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_2 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_2)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_3 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_3)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_4 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_4)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_5 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_5)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_6 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_6)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_7 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_7)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_8 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_8)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_9 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_9)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_10 != ''">
                                    <xsl:value-of select="concat('(FSUFLOR)', $field035_10)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    
                    <!-- This field is used to populate the barcode field in item records
                    with the resource's unique ID -->
                    <marc:datafield tag="049" ind1=" " ind2=" ">
                        <marc:subfield code="l">
                            <xsl:value-of select="$IID"/>
                        </marc:subfield>
                    </marc:datafield>
                    
                    
                    <!-- This portion of the template applies the previous 245 field variables
                    and constructs the 245 itself -->
                    <marc:datafield tag="245" ind1="0" ind2="0">
                        <marc:subfield code="a">
                            <xsl:value-of select="$Title"/>
                        </marc:subfield>
                    </marc:datafield>
                    
                    
                    <!-- Any other notes left on the spreadsheet are included here -->
                    <marc:datafield tag="500" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Provider != ''">
                                    <xsl:value-of select="concat('Provider: ',$Provider)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    
                    <!-- Any other notes left on the spreadsheet are included here -->
                    <marc:datafield tag="991" ind1=" " ind2=" ">
                        <marc:subfield code="a">Equipment.</marc:subfield>
                        <marc:subfield code="9">LOCAL</marc:subfield>
                    </marc:datafield>
                    
                    <!-- The 949 field is used to construct Holding and Item records.
                    Duplicate records make use of the Copy_Number field, whereas the Description
                    and Chronology fields are used to differentiate different items in a set -->
                    <marc:datafield tag="949" ind1=" " ind2=" ">
                        <marc:subfield code="a">FTaSU</marc:subfield>
                        <marc:subfield code="b">FSUFL</marc:subfield>
                        <marc:subfield code="c">
                            <xsl:value-of select="$Location"/>
                        </marc:subfield>
                        <marc:subfield code="p">
                            <xsl:choose>
                                <xsl:when test="$Cost != ''">
                                    <xsl:value-of select="$Cost"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="q">
                            <xsl:choose>
                                <xsl:when test="$Service_Tag != ''">
                                    <xsl:value-of select="concat('Service tag: ', $Service_Tag)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="y">
                            <xsl:choose>
                                <xsl:when test="$Loan_Period != ''">
                                    <xsl:value-of select="$Loan_Period"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="z">
                            <xsl:choose>
                                <xsl:when test="$Copy_Number != ''">
                                    <xsl:value-of select="$Copy_Number"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="9">LOCAL</marc:subfield>
                    </marc:datafield>
                   
                </marc:record>
                
                
                
                
            </xsl:for-each>
        </marc:collection>
    </xsl:template>
</xsl:stylesheet>