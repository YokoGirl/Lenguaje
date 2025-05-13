<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
        <head>
            <title>Ejercicio 5</title>
        </head>
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
        <body>
            <table>
            <xsl:for-each select="//producto">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="peso"/></td>
                    <td><xsl:apply-templates select="lugar"/></td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>

    <xsl:template match="lugar">
        <xsl:value-of select="@edificio"/>
        <xsl:value-of select="aula"/>
    </xsl:template>


</xsl:stylesheet>