<!-- Se pide un XSLT que muestre la misma información del fichero origen pero
sin aquellos elementos con peso menor de 7 kg.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <xsl:for-each select="//producto">
            <xsl:if test="(peso>=7 and peso/@unidad='kg') or (peso>=7000 and peso/@unidad='g')">
                <xsl:value-of select="."/> <!-- Es como un sysout -->
            </xsl:if>   
        </xsl:for-each> 
    </xsl:template>
</xsl:stylesheet>