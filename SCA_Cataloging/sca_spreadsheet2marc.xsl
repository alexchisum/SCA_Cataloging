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
                <xsl:variable name="field035_11" select="field035_11"/>
                <xsl:variable name="field035_12" select="field035_12"/>
                <xsl:variable name="field035_13" select="field035_13"/>
                <xsl:variable name="field035_14" select="field035_14"/>
                <xsl:variable name="field035_15" select="field035_15"/>
                <xsl:variable name="field035_16" select="field035_16"/>
                <xsl:variable name="field035_17" select="field035_17"/>
                <xsl:variable name="field035_18" select="field035_18"/>
                <xsl:variable name="field035_19" select="field035_19"/>
                <xsl:variable name="field035_20" select="field035_20"/>
                <xsl:variable name="field035_21" select="field035_21"/>
                <xsl:variable name="field035_22" select="field035_22"/>
                <xsl:variable name="field035_23" select="field035_23"/>
                <xsl:variable name="field035_24" select="field035_24"/>
                <xsl:variable name="field035_25" select="field035_25"/>
                <xsl:variable name="field035_26" select="field035_26"/>
                <xsl:variable name="field035_27" select="field035_27"/>
                <xsl:variable name="field035_28" select="field035_28"/>
                <xsl:variable name="field035_29" select="field035_29"/>
                <xsl:variable name="field035_30" select="field035_30"/>
                <xsl:variable name="field035_31" select="field035_31"/>
                <xsl:variable name="field035_32" select="field035_32"/>
                <xsl:variable name="field035_33" select="field035_33"/>
                <xsl:variable name="field035_34" select="field035_34"/>
                <xsl:variable name="field035_35" select="field035_35"/>
                <xsl:variable name="field035_36" select="field035_36"/>
                <xsl:variable name="field035_37" select="field035_37"/>
                <xsl:variable name="field035_38" select="field035_38"/>
                <xsl:variable name="field035_39" select="field035_39"/>
                <xsl:variable name="field035_40" select="field035_40"/>
                <xsl:variable name="field035_41" select="field035_41"/>
                <xsl:variable name="field035_42" select="field035_42"/>
                <xsl:variable name="field035_43" select="field035_43"/>
                <xsl:variable name="field035_44" select="field035_44"/>
                <xsl:variable name="field035_45" select="field035_45"/>
                <xsl:variable name="field035_46" select="field035_46"/>
                <xsl:variable name="field035_47" select="field035_47"/>
                <xsl:variable name="field035_48" select="field035_48"/>
                <xsl:variable name="field035_49" select="field035_49"/>
                <xsl:variable name="field035_50" select="field035_50"/>
                <xsl:variable name="field035_51" select="field035_51"/>
                <xsl:variable name="field035_52" select="field035_52"/>
                <xsl:variable name="field035_53" select="field035_53"/>
                <xsl:variable name="field035_54" select="field035_54"/>
                <xsl:variable name="field035_55" select="field035_55"/>
                <xsl:variable name="field035_56" select="field035_56"/>
                <xsl:variable name="field035_57" select="field035_57"/>
                <xsl:variable name="field035_58" select="field035_58"/>
                <xsl:variable name="field035_59" select="field035_59"/>
                <xsl:variable name="field035_60" select="field035_60"/>
                <xsl:variable name="field035_61" select="field035_61"/>
                <xsl:variable name="field035_62" select="field035_62"/>
                <xsl:variable name="field035_63" select="field035_63"/>
                <xsl:variable name="field035_64" select="field035_64"/>
                <xsl:variable name="field035_65" select="field035_65"/>
                <xsl:variable name="field035_66" select="field035_66"/>
                <xsl:variable name="field035_67" select="field035_67"/>
                <xsl:variable name="field035_68" select="field035_68"/>
                <xsl:variable name="field035_69" select="field035_69"/>
                <xsl:variable name="field035_70" select="field035_70"/>
                <xsl:variable name="Dewey_a" select="Dewey_Call_number_a"/>
                <xsl:variable name="Dewey_b" select="Dewey_Call_number_b"/>
                <xsl:variable name="LCCN_a" select="LC_Call_number_a"/>
                <xsl:variable name="LCCN_b" select="LC_Call_number_b"/>
                <xsl:variable name="Collection" select="Collection"/>
                <xsl:variable name="Title_500" select="Title_500"/>
                <xsl:variable name="Norm_Title" select="Title"/>
                <xsl:variable name="Volume" select="Volume"/>
                <xsl:variable name="Part_Title" select="Part_Title"/>
                <xsl:variable name="Statement_of_Responsibility"
                    select="Statement_of_Responsibility"/>
                <xsl:variable name="Personal_Creator_Name_1" select="Personal_Creator_Name_1"/>
                <xsl:variable name="Personal_Creator_Name_2" select="Personal_Creator_Name_2"/>
                <xsl:variable name="Personal_Creator_Name_3" select="Personal_Creator_Name_3"/>
                <xsl:variable name="Personal_Creator_Name_4" select="Personal_Creator_Name_4"/>
                <xsl:variable name="Personal_Creator_Name_5" select="Personal_Creator_Name_5"/>
                <xsl:variable name="Corporate_Creator_Name_1" select="Corporate_Creator_Name_1"/>
                <xsl:variable name="Corporate_Creator_Name_2" select="Corporate_Creator_Name_2"/>
                <xsl:variable name="Corporate_Creator_Name_3" select="Corporate_Creator_Name_3"/>
                <xsl:variable name="Corporate_Creator_Name_4" select="Corporate_Creator_Name_4"/>
                <xsl:variable name="Corporate_Creator_Name_5" select="Corporate_Creator_Name_5"/> 
                <xsl:variable name="Publisher" select="Publisher"/>
                <xsl:variable name="Publication_Year" select="Publication_Year"/>
                <xsl:variable name="Field008_year" select="Field008_year"/>
                <xsl:variable name="Edition" select="Edition"/>
                <xsl:variable name="Binding_Note" select="Binding_Note"/>
                <xsl:variable name="Note_1" select="Note_1"/>
                <xsl:variable name="Note_2" select="Note_2"/>
                <xsl:variable name="Note_3" select="Note_3"/>
                <xsl:variable name="Note_4" select="Note_4"/>
                <xsl:variable name="Note_5" select="Note_5"/>
                <xsl:variable name="Donor" select="Donor"/>
                <xsl:variable name="Copy_Number" select="Copy_Number"/>
                <xsl:variable name="Description" select="Description"/>
                <xsl:variable name="Chronology" select="Chronology"/>
                <xsl:variable name="ChronA" select="ChronA"/>
                <xsl:variable name="ChronB" select="ChronB"/>
                <xsl:variable name="Enumeration" select="Enumeration"/>
                <xsl:variable name="EnumerationA" select="EnumerationA"/>
                <xsl:variable name="EnumerationB" select="EnumerationB"/>
                <xsl:variable name="Location" select="Location"/>

                <!-- Here begins the tempate for the MARC record -->
                <marc:record>
                    <!--  Leader and control fields<-->
                    <marc:leader>
                        <xsl:text>     nam  22     Mi 4500</xsl:text>
                    </marc:leader>

                    <!-- The date in the 008 field is grabbed from a field in the spreadsheet that is separate from the publication date. 
                        This is to account for "uuuu" dates. -->
                    <marc:controlfield tag="008">
                        <xsl:text>      </xsl:text>
                        <xsl:value-of select="concat('s', $Field008_year)"/>
                        <xsl:text>    xx            000 0     d</xsl:text>
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
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_1)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_2 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_2)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_3 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_3)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_4 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_4)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_5 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_5)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_6 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_6)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_7 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_7)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_8 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_8)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_9 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_9)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_10 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_10)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_11 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_11)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_12 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_12)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_13 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_13)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_14 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_14)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_15 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_15)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_16 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_16)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_17 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_17)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_18 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_18)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_19 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_19)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_20 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_20)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_21 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_21)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_22 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_22)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_23 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_23)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_24 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_24)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_25 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_25)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_26 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_26)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_27 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_27)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_28 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_28)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_29 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_29)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_30 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_30)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_31 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_31)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_32 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_32)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_33 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_33)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_34 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_34)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_35 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_35)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>

                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_36 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_36)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_37 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_37)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_38 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_38)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_39 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_39)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_40 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_40)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_41 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_41)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_42 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_42)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_43 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_43)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_44 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_44)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_45 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_45)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_46 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_46)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_47 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_47)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_48 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_48)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_49 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_49)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_50 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_50)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_51 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_51)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_52 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_52)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_53 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_53)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_54 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_54)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_55 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_55)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_56 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_56)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_57 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_57)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_58 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_58)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_59 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_59)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_60 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_60)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_61 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_61)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_62 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_62)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_63 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_63)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_64 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_64)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_65 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_65)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_66 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_66)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_67 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_67)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_68 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_68)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_69 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_69)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="035" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$field035_70 != ''">
                                    <xsl:value-of select="concat('(FSUSCA)', $field035_70)"/>
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

                    <!-- This field is used to populate the LC call number field  -->
                    <marc:datafield tag="050" ind1=" " ind2="4">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$LCCN_a != ''">
                                    <xsl:value-of select="$LCCN_a"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="b">
                            <xsl:choose>
                                <xsl:when test="$LCCN_b != ''">
                                    <xsl:value-of select="$LCCN_b"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>

                    <!-- This field is used to populate the Dewey call number field  -->
                    <marc:datafield tag="082" ind1="0" ind2="4">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Dewey_a != ''">
                                    <xsl:value-of select="$Dewey_a"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="b">
                            <xsl:choose>
                                <xsl:when test="$Dewey_b != ''">
                                    <xsl:value-of select="$Dewey_b"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>


                    <!-- The first name that appears on the spreadsheet is used in the 100 field,
                    regardless of that person's role in creating the resource -->
                    <marc:datafield tag="100" ind1="1" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Personal_Creator_Name_1 != ''">
                                    <xsl:value-of select="$Personal_Creator_Name_1"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>


                    <!-- The first corporate name that appears on the spreadsheet is used in the 110 field,
                    regardless of that corporation's role in creating the resource -->
                    <marc:datafield tag="110" ind1="2" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Corporate_Creator_Name_1 != ''">
                                    <xsl:value-of select="$Corporate_Creator_Name_1"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>

                    <!-- The Quote and Space variables are used to help determine 
                    the second indicator for the 245 field -->
                    <xsl:variable name="quote">
                        <xsl:text>"</xsl:text>
                    </xsl:variable>

                    <xsl:variable name="space">
                        <xsl:text> </xsl:text>
                    </xsl:variable>

                    <!-- This portion of the template looks for personal or corporate creator fields
                    so as to determine the first indicator for the 245 field -->
                    <xsl:variable name="field245_ind1">
                        <xsl:choose>
                            <xsl:when test="$Personal_Creator_Name_1 = ''">
                                <xsl:choose>
                                    <xsl:when test="$Corporate_Creator_Name_1 = ''">
                                        <xsl:text>0</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="$Corporate_Creator_Name_1 != ''">
                                        <xsl:text>1</xsl:text>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="$Personal_Creator_Name_1 != ''">
                                <xsl:text>1</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:variable>


                    <!-- This portion fo the template looks at the title field to try and find
                    stop words and punctuation  at the beginning of titles 
                    and determine the second indicator for the 245 -->
                    <xsl:variable name="field245_ind2">
                        <xsl:choose>
                            <xsl:when test="starts-with($Norm_Title, 'A ')">
                                <xsl:value-of select="2"/>
                            </xsl:when>
                            <xsl:when test="starts-with($Norm_Title, 'An ')">
                                <xsl:value-of select="3"/>
                            </xsl:when>
                            <xsl:when test="starts-with($Norm_Title, 'The ')">
                                <xsl:value-of select="4"/>
                            </xsl:when>
                            <xsl:when test="starts-with($Norm_Title, $quote)">
                                <xsl:choose>
                                    <xsl:when test="starts-with($Norm_Title, concat($quote, 'A '))">
                                        <xsl:value-of select="3"/>
                                    </xsl:when>
                                    <xsl:when test="starts-with($Norm_Title, concat($quote, 'An '))">
                                        <xsl:value-of select="4"/>
                                    </xsl:when>
                                    <xsl:when
                                        test="starts-with($Norm_Title, concat($quote, 'The '))">
                                        <xsl:value-of select="5"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="1"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="0"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>

                    <!-- This portion of the template looks at all of the 245 subfields in order
                    to determine how subfield a should be punctuated -->
                    <xsl:variable name="field245a_punct">
                        <xsl:choose>
                            <xsl:when test="$Volume = ''">
                                <xsl:choose>
                                    <xsl:when test="$Part_Title != ''">
                                        <xsl:text>.</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="$Part_Title = ''">
                                        <xsl:choose>
                                            <xsl:when test="$Statement_of_Responsibility != ''">
                                                <text> /</text>
                                            </xsl:when>
                                            <xsl:when test="$Statement_of_Responsibility != ''">
                                                <text/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:when test="$Volume != ''">
                                <xsl:text>.</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:variable>


                    <!-- This portion of the template looks at all of the 245 subfields in order
                    to determine how subfield n should be punctuated -->
                    <xsl:variable name="field245n_punct">
                        <xsl:choose>
                            <xsl:when test="$Volume = ''">
                                <text/>
                            </xsl:when>
                            <xsl:when test="$Volume != ''">
                                <xsl:choose>
                                    <xsl:when test="$Part_Title != ''">
                                        <text>,</text>
                                    </xsl:when>
                                    <xsl:when test="$Part_Title = ''">
                                        <xsl:choose>
                                            <xsl:when test="$Statement_of_Responsibility = ''">
                                                <text/>
                                            </xsl:when>
                                            <xsl:when test="$Statement_of_Responsibility != ''">
                                                <text> /</text>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:variable>

                    <!-- This portion of the template looks at all of the 245 subfields in order
                    to determine how subfield p should be punctuated -->
                    <xsl:variable name="field245p_punct">
                        <xsl:choose>
                            <xsl:when test="$Part_Title = ''">
                                <text/>
                            </xsl:when>
                            <xsl:when test="$Part_Title != ''">
                                <xsl:choose>
                                    <xsl:when test="$Statement_of_Responsibility = ''">
                                        <xsl:text/>
                                    </xsl:when>
                                    <xsl:when test="$Statement_of_Responsibility != ''">
                                        <xsl:text> /</xsl:text>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:variable>

                    <!-- This portion of the template applies the previous 245 field variables
                    and constructs the 245 itself -->
                    <marc:datafield tag="245" ind1="{$field245_ind1}" ind2="{$field245_ind2}">
                        <marc:subfield code="a">
                            <xsl:value-of select="concat($Norm_Title, $field245a_punct)"/>
                        </marc:subfield>
                        <marc:subfield code="n">
                            <xsl:choose>
                                <xsl:when test="$Volume != ''">
                                    <xsl:value-of select="concat($Volume, $field245n_punct)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="p">
                            <xsl:choose>
                                <xsl:when test="$Part_Title != ''">
                                    <xsl:value-of select="concat($Part_Title, $field245p_punct)"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="c">
                            <xsl:choose>
                                <xsl:when test="$Statement_of_Responsibility != ''">
                                    <xsl:value-of select="$Statement_of_Responsibility"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>

                    <!-- The template here looks for an edition statement. If none is available,
                    this value is marked "null" -->
                    <marc:datafield tag="250" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Edition != ''">
                                    <xsl:value-of select="$Edition"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>

                    <!-- Publication info is included here -->
                    <marc:datafield tag="264" ind1=" " ind2="1">
                        <marc:subfield code="a">
                            <xsl:text>[Place of publication not identified] :</xsl:text>
                        </marc:subfield>
                        <marc:subfield code="b"><xsl:value-of select="$Publisher"/>,</marc:subfield>
                        <marc:subfield code="c">
                            <xsl:value-of select="$Publication_Year"/>
                        </marc:subfield>
                    </marc:datafield>

                    <!-- The 300 field currently just includes a subfield a "volume" -->
                    <marc:datafield tag="300" ind1=" " ind2=" ">
                        <marc:subfield code="a">volume</marc:subfield>
                    </marc:datafield>

                    <!-- Values in the 33x fields are for books -->
                    <marc:datafield tag="336" ind1=" " ind2=" ">
                        <marc:subfield code="a">text</marc:subfield>
                        <marc:subfield code="b">txt</marc:subfield>
                        <marc:subfield code="2">rdacontent</marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="337" ind1=" " ind2=" ">
                        <marc:subfield code="a">unmediated</marc:subfield>
                        <marc:subfield code="b">n</marc:subfield>
                        <marc:subfield code="2">rdamedia</marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="338" ind1=" " ind2=" ">
                        <marc:subfield code="a">volume</marc:subfield>
                        <marc:subfield code="b">nc</marc:subfield>
                        <marc:subfield code="2">rdacarrier</marc:subfield>
                    </marc:datafield>

                    <!-- Here is a 500 note thta includes the titles as they appeared
                    on the spreadsheet. For set records, this note is omitted. -->
                    <marc:datafield tag="500" ind1=" " ind2=" ">
                        <xsl:choose>
                            <xsl:when test="$Title_500 != ''">
                                <marc:subfield code="a">Title on spreadsheet: "<xsl:value-of
                                        select="$Title_500"/>."</marc:subfield>
                            </xsl:when>
                            <xsl:otherwise>
                                <marc:subfield code="a">null</marc:subfield>
                            </xsl:otherwise>
                        </xsl:choose>
                    </marc:datafield>

                    <!-- Binding note 500 field -->
                    <marc:datafield tag="500" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Binding_Note != ''">
                                    <xsl:value-of select="$Binding_Note"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>

                    <!-- Any other notes left on the spreadsheet are included here -->
                    <marc:datafield tag="500" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Note_1 != ''">
                                    <xsl:value-of select="$Note_1"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="500" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Note_2 != ''">
                                    <xsl:value-of select="$Note_2"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="500" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Note_3 != ''">
                                    <xsl:value-of select="$Note_3"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="500" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Note_4 != ''">
                                    <xsl:value-of select="$Note_4"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="500" ind1=" " ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Note_5 != ''">
                                    <xsl:value-of select="$Note_5"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>

                    <!-- The first personal name on an entry is included in a 100 field.
                    All subsequent personal names are included in 700 fields -->
                    <marc:datafield tag="700" ind1="1" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Personal_Creator_Name_2 != ''">
                                    <xsl:value-of select="$Personal_Creator_Name_2"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="700" ind1="1" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Personal_Creator_Name_3 != ''">
                                    <xsl:value-of select="$Personal_Creator_Name_3"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="700" ind1="1" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Personal_Creator_Name_4 != ''">
                                    <xsl:value-of select="$Personal_Creator_Name_4"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="700" ind1="1" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Personal_Creator_Name_5 != ''">
                                    <xsl:value-of select="$Personal_Creator_Name_5"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>


                    <!-- The first corporate name on an entry is included in a 110 field.
                    All subsequent corporate names are included in 710 fields -->
                    <marc:datafield tag="710" ind1="2" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Corporate_Creator_Name_2 != ''">
                                    <xsl:value-of select="$Corporate_Creator_Name_2"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="710" ind1="2" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Corporate_Creator_Name_3 != ''">
                                    <xsl:value-of select="$Corporate_Creator_Name_3"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="710" ind1="2" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Corporate_Creator_Name_4 != ''">
                                    <xsl:value-of select="$Corporate_Creator_Name_4"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    <marc:datafield tag="710" ind1="2" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Corporate_Creator_Name_5 != ''">
                                    <xsl:value-of select="$Corporate_Creator_Name_5"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>
                    
                    <!-- The 932 field lists the name of the archival collection -->
                    <marc:datafield tag="932" ind1="2" ind2=" ">
                        <marc:subfield code="a">
                            <xsl:choose>
                                <xsl:when test="$Collection != ''">
                                    <xsl:value-of select="$Collection"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="9">
                            <xsl:choose>
                                <xsl:when test="$Collection != ''">LOCAL</xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                    </marc:datafield>

                    <!-- The 937 field lists the name of the donor -->
                    <marc:datafield tag="937" ind1="1" ind2=" ">
                        <xsl:choose>
                            <xsl:when test="$Donor != ''">
                                <marc:subfield code="a"><xsl:value-of select="$Donor"
                                    />,</marc:subfield>
                                <marc:subfield code="e">donor</marc:subfield>
                                <marc:subfield code="9">LOCAL</marc:subfield>
                            </xsl:when>
                            <xsl:otherwise>null</xsl:otherwise>
                        </xsl:choose>
                    </marc:datafield>

                    <!-- The 949 field is used to construct Holding and Item records.
                    Duplicate records make use of the Copy_Number field, whereas the Description
                    and Chronology fields are used to differentiate different items in a set -->
                    <marc:datafield tag="949" ind1=" " ind2=" ">
                        <marc:subfield code="a">FTaSU</marc:subfield>
                        <marc:subfield code="b">FSUSP</marc:subfield>
                        <marc:subfield code="c">
                            <xsl:value-of select="$Location"/>
                        </marc:subfield>

                        <marc:subfield code="j">
                            <xsl:choose>
                                <xsl:when test="$Description != ''">
                                    <xsl:value-of select="$Description"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="k">
                            <xsl:choose>
                                <xsl:when test="$Chronology != ''">
                                    <xsl:value-of select="$Chronology"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="k">
                            <xsl:choose>
                                <xsl:when test="$ChronA != ''">
                                    <xsl:value-of select="$ChronA"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="l">
                            <xsl:choose>
                                <xsl:when test="$ChronB != ''">
                                    <xsl:value-of select="$ChronB"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="m">
                            <xsl:choose>
                                <xsl:when test="$Enumeration != ''">
                                    <xsl:value-of select="$Enumeration"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="m">
                            <xsl:choose>
                                <xsl:when test="$EnumerationA != ''">
                                    <xsl:value-of select="$EnumerationA"/>
                                </xsl:when>
                                <xsl:otherwise>null</xsl:otherwise>
                            </xsl:choose>
                        </marc:subfield>
                        <marc:subfield code="n">
                            <xsl:choose>
                                <xsl:when test="$EnumerationB != ''">
                                    <xsl:value-of select="$EnumerationB"/>
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
