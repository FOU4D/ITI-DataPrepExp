<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" omit-xml-declaration="yes"/>
<xsl:template match="/">  
	<xsl:text>Title,Artist,Country,Company,Price,Year&#xa;</xsl:text>
	<xsl:for-each select="catalog/cd">
		<xsl:value-of select="title"/>,<xsl:value-of select="artist"/>,<xsl:value-of select="country"/>,<xsl:value-of select="company"/>,<xsl:value-of select="price"/>,<xsl:value-of select="year"/>
		<xsl:text>&#xa;</xsl:text>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>

