<!-- Con el archivo inventario.xml genera un archivo HTML que te muestre 
una lista de nombres y pesos de productos que tienen la misma unidad de peso 
que el producto P2.  -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:variable name="unidadpeso" select=" /inventario/producto[@codigo = 'P2']/peso/@unidad"/>
    <xsl:variable name="productopeso" select="//producto[peso/@unidad = $unidadpeso]"/>
    <xsl:template match="/">
        <html>
        <head>
            <title>EJERCICIO VARIABLE</title>
        </head>
        <body>
            <h1>Lista de productos pesados en: <xsl:value-of select="$unidadpeso"/> </h1>
                <xsl:for-each select="$productopeso">
                <ul>
                    <li>
                        <xsl:value-of select="nombre"/>
                        <xsl:value-of select="peso"/>
                        <xsl:value-of select="peso/@unidad"/>
                    </li>
               
                </ul>
             </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>