<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html"/>
<xsl:template match="/">
<xsl:for-each select="usuario">
<xsl:value-of select="nombre"/>
<xsl:value-of select="apellido"/>
<xsl:value-of select="contacto"/>

<xsl:for-each select="contacto">
<xsl:value-of select="telefono"/>
<xsl:value-of select="url"/>
<xsl:value-of select="email"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>