<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Data Member</title>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>NAMA</th>
                        <th>ALAMAT</th>
                        <th>TELEPON</th>
                        <th>EMAIL</th>
                        <th>PASSWORD</th>
                    </tr>
                    <xsl:for-each select="Member/dataMember">
                        <tr>
                            <td>
                                <xsl:value-of select="nama"/>
                            </td>
                            <td>
                                <xsl:value-of select="alamat"/>
                            </td>
                            <td>
                                <xsl:value-of select="telpon"/>
                            </td>
                            <td>
                                <xsl:value-of select="email"/>
                            </td>
                            <td>
                                <xsl:value-of select="password"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

