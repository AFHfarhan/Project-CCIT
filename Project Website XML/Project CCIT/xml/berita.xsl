<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>BERITA</title>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>JUDUL</th>
                        <th>TANGGAL</th>
                        <th>PENULIS</th>
                        <th>ISI BERITA</th>
                        <th>SUMBER</th>
                    </tr>
                    <xsl:for-each select="Kategori/Tokoh">
                        <tr>
                            <td>
                                <xsl:value-of select="judul"/>
                            </td>
                            <td>
                                <xsl:value-of select="tanggal"/>
                            </td>
                            <td>
                                <xsl:value-of select="penulis"/>
                            </td>
                            <td>
                                <xsl:value-of select="isiBerita"/>
                            </td>
                            <td>
                                <xsl:value-of select="sumber"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                    <xsl:for-each select="Kategori/kisahTeladan">
                        <tr>
                            <td>
                                <xsl:value-of select="judul"/>
                            </td>
                            <td>
                                <xsl:value-of select="tanggal"/>
                            </td>
                            <td>
                                <xsl:value-of select="penulis"/>
                            </td>
                            <td>
                                <xsl:value-of select="isiBerita"/>
                            </td>
                            <td>
                                <xsl:value-of select="sumber"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
