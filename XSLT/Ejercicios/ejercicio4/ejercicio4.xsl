<!-- Se pide un XSLT que muestre la misma información del fichero origen pero
solo de aquellos productos del edificio B. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <xsl:for-each select="//producto">
            <xsl:if test="lugar[@edificio = 'B']">
                <xsl:value-of select="."/> <!-- El punto se pone  -->
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>