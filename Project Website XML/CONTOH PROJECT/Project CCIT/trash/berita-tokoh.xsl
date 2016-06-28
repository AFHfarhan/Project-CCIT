<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<xsl:for-each select="Kategori/Tokoh">
				<div class="Kisahdet">
					<div class="Kisahpic">
						<center><img src="img_berita/{gambar}"/></center>
					</div>
					<br><br></br></br>
					<div class="Kisahdesc">
						<center><header><h3><xsl:value-of select="judul"/></h3></header></center>
						<font style="Verdana" align="justify"><xsl:value-of select="isiBerita"/></font>
						<br><font style="Verdana" align="justify"><xsl:value-of select="isiBerita2"/></font></br>
						<br><font style="Verdana" align="justify"><xsl:value-of select="isiBerita3"/></font></br>
					</div>
					<div class="penutup">
					<tr>
					<font style="Verdana" align="justify">Tanggal: <xsl:value-of select="tanggal"/></font>
					</tr>
					<tr>
					<font style="Verdana" align="justify">Penulis: <xsl:value-of select="penulis"/></font>
					</tr>
					<tr>
					<font style="Verdana" align="justify">Sumber: <xsl:value-of select="sumber"/></font>
					</tr>
					</div>
				</div>
			</xsl:for-each>
		</html>
	</xsl:template>
</xsl:stylesheet>