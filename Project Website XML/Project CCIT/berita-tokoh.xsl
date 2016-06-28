<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<xsl:for-each select="berita/kisah">
			  <xsl:if test="@ID[.='K001']">
			  	<div class="kisahhpic">
            		<center><img src="img_berita/{gambar}"/></center>
          		</div>
				<div class="Kisahdet">
					<div class="Kisahdesc">
						<center><header><h3><xsl:value-of select="judul"/></h3></header></center>
						<font style="Verdana" align="justify"><xsl:value-of select="isiBerita"/></font>
					</div>
				</div>
			  </xsl:if>
			</xsl:for-each>
			<xsl:for-each select="berita/kisah">
			  <xsl:if test="@ID[.='K002']">
			  	<div class="kisahhpic">
            		<center><img src="img_berita/{gambar}"/></center>
          		</div>
				<div class="Kisahdet">
					<div class="Kisahdesc">
						<center><header><h3><xsl:value-of select="judul"/></h3></header></center>
						<font style="Verdana" align="justify"><xsl:value-of select="isiBerita"/></font>
					</div>
				</div>
			  </xsl:if>
			</xsl:for-each>
		</html>
	</xsl:template>
</xsl:stylesheet>