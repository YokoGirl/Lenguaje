<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 1</title>
            </head>
            <body>
                <ul>
                <xsl:for-each select="//producto">
                    <li>
                    Elemento <xsl:value-of select="@codigo" />
                        <ul>
                           <li>Nombre: <xsl:value-of select="nombre" /></li> 
                           <li><xsl:apply-templates select="peso" /></li> 
                        </ul>
                    </li>
                </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="peso">
        Peso: <xsl:value-of select="." /><xsl:value-of select="@unidad" />
    </xsl:template>
</xsl:stylesheet>