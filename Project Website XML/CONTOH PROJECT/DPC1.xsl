<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
            <center>
            
		    <table border="9" width="900" datasrc="#sscpj" bordercolor="aqua" bgcolor="white">
		    <tr>
		    	<th>PROVINSI</th>
				<th>KAB/KOTA</th>
				<th>KETUA</th>
				<th>WAKIL</th>
				<th>POS</th>
				<th>ALAMAT</th>
				<th>TELEPON</th>
				<th>FAX</th>
		    </tr>
                <xsl:for-each select="DPCS/DPC">
                <xsl:sort select="PROVINSI"/>
                    <tr>
                        <td>
                            <xsl:value-of select="PROVINSI"/>
                        </td>
                        <td>
                            <xsl:value-of select="KABKOT"/>
                        </td>
                        <td>
                            <xsl:value-of select="KETUA"/>
                        </td>
                        <td>
                            <xsl:value-of select="WAKIL"/>
                        </td>
                        <td>
                            <xsl:value-of select="POS"/>
                        </td>
                        <td>
                            <xsl:value-of select="ALAMAT"/>
                        </td>
                        <td>
                            <xsl:value-of select="TELPON"/>
                        </td>
                        <td>
                            <xsl:value-of select="FAX"/>
                        </td>
                    </tr>
                </xsl:for-each>
		    </table>
		    </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
