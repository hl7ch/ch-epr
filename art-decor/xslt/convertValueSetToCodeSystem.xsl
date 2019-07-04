<xsl:stylesheet version="2.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns="http://hl7.org/fhir" 
 xmlns:fhir="http://hl7.org/fhir">

    <xsl:output method="xml" indent="yes" />
    
    <xsl:param name="canonicalBase" required="yes" />
    <xsl:param name="resourceId" required="yes" />
    <xsl:param name="codeSystem" required="yes" />
    <xsl:param name="name" required="yes" />
    <xsl:param name="title" required="yes" />

    <xsl:variable name="system" select="concat('urn:oid:',$codeSystem)" />
    <xsl:variable name="codes" select="//fhir:ValueSet/fhir:compose/fhir:include[fhir:system[@value=$system]]/fhir:concept" />

<!--
 <compose>
      <include>
         <system value="urn:oid:0.4.0.127.0.16.1.1.2.1"/>
         <concept>
-->

    <xsl:variable name="url" select="//fhir:ValueSet/fhir:url/@value" />

    <xsl:template match="fhir:ValueSet">
      <fhir:CodeSystem>
         <xsl:apply-templates />
      </fhir:CodeSystem>    
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:id">
      <fhir:id>
			<xsl:attribute name="value"><xsl:value-of select="$resourceId" /></xsl:attribute>
      </fhir:id>    
    </xsl:template>

    <!-- add meta source value with original url -->
    <xsl:template match="fhir:meta">
      <fhir:meta>
         <fhir:source>
			      <xsl:attribute name="value"><xsl:value-of select="$url" /></xsl:attribute>
         </fhir:source>         
      </fhir:meta>      
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:url">
      <fhir:url>
			<xsl:attribute name="value">urn:oid:<xsl:value-of select="$codeSystem" /></xsl:attribute>
      </fhir:url>   
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:name">
      <fhir:name>
   			<xsl:attribute name="value"><xsl:value-of select="$name" /></xsl:attribute>
      </fhir:name>   
    </xsl:template> 

    <xsl:template match="fhir:ValueSet/fhir:title">
      <fhir:title>
   			<xsl:attribute name="value"><xsl:value-of select="$title" /></xsl:attribute>
      </fhir:title>   
    </xsl:template>
   
    <xsl:template match="fhir:ValueSet/fhir:immutable">
       <fhir:content value="complete"/>
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:compose">
        <xsl:apply-templates select="$codes" />
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:compose/fhir:include">
       <xsl:apply-templates />
    </xsl:template>

   <xsl:template match="fhir:ValueSet/fhir:system/fhir:include/fhir:concept/fhir:system" /> 

    <!-- The Coding provided is not in the value set http://hl7.org/fhir/ValueSet/designation-use (http://hl7.org/fhir/ValueSet/designation-use, and a code should come from this value set unless it has no suitable code) (error message = The code system "http://art-decor.org/ADAR/rv/DECOR.xsd#DesignationType" is not known; The code provided (http://art-decor.org/ADAR/rv/DECOR.xsd#DesignationType#preferred) is not valid in the value set DesignationUse) -->
    <!-- remove it -->
    <xsl:template match="fhir:concept/fhir:designation/fhir:use" />

    <!--ValueSet.compose.include.concept[1].extension.valueString	warning	value should not start or finish with whitespace -->
    <xsl:template match="fhir:valueString/@value">
      <xsl:attribute name="value" namespace="{namespace-uri()}">
        <xsl:value-of select="replace(., '^\s+|\s+$', '')"/>
      </xsl:attribute>
    </xsl:template>

    <!-- ValueSet/DocumentEntry.languageCode: ValueSet.compose.include[3].concept[22].designation[2].value 	value should not start or finish with whitespace -->
    <xsl:template match="fhir:value/@value">
      <xsl:attribute name="value" namespace="{namespace-uri()}">
        <xsl:value-of select="replace(., '^\s+|\s+$', '')"/>
      </xsl:attribute>
    </xsl:template>

    <xsl:template match="node()|@*">
      <xsl:copy>
         <xsl:apply-templates select="node()|@*"/>
      </xsl:copy>
    </xsl:template>

</xsl:stylesheet>