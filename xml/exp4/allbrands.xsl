<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
  <html>
  <body>
  <h2>BRANDS LIST</h2>  
  <xsl:for-each select="brands/brand">
		<xsl:apply-templates select="bname"/>
		<xsl:apply-templates select="founder"/>
		<xsl:apply-templates select="country"/>
		<xsl:apply-templates select="found_time"/>
  </xsl:for-each>
  </body>
  </html>
</xsl:template>
<xsl:template match="bname">
	<div>
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="../@bid"/>.xml
			</xsl:attribute>
			<xsl:value-of select="."/>
		</a>
	</div>
</xsl:template>
<xsl:template match="founder">
	<div>
		<xsl:value-of select="."/>
	</div>
</xsl:template>
<xsl:template match="country">
	<div>
		<xsl:value-of select="."/>
	</div>
</xsl:template>
<xsl:template match="found_time">
	<div>
		<xsl:value-of select="."/>
	</div>
</xsl:template>
</xsl:stylesheet>
