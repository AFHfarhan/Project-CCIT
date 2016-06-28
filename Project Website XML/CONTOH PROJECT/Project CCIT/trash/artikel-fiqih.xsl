<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<xsl:for-each select="Kategori/Fiqih">
				<div class="Fiqihdet">
					<div class="Fiqihpic">
						<center><img src="img_artikel/{gambar}"/></center>
					</div>
					<br><br></br></br>
					<div class="Fiqihdesc">
						<center><header><h3><xsl:value-of select="judul"/></h3></header></center>
						<font style="Verdana" align="justify"><xsl:value-of select="isiArtikel"/></font>
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