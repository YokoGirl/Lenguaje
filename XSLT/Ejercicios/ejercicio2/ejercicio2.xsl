<!-- Replica la estructura del fichero pero filtrando los elementos y haciendo que
solo aparezcan los que estén en el aula A6. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
       <html>
            <header>
                <title>Ejercicio 2</title>
            </header>
            <body>
                <xsl:for-each select="//producto[lugar/aula = '6' and lugar/@edificio = 'A']">
                <ul>
                    <li>
                         Elemento <xsl:value-of select="@codigo"/>
                        <ul>
                           <li>Nombre: <xsl:value-of select="nombre" /></li> 
                           <li><xsl:apply-templates select="peso" /></li> 
                        </ul>
                    </li>
                </ul>
                </xsl:for-each>
            </body>
       </html>
    </xsl:template>

     <xsl:template match="peso">
        Peso: <xsl:value-of select="." /><xsl:value-of select="@unidad" />
    </xsl:template>

</xsl:stylesheet>