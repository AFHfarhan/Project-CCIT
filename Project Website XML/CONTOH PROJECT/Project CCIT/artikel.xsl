<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <xsl:for-each select="Artikel/kategori">
        <xsl:if test="@nama[.='Fiqih']">
          <header>
          <h2><xsl:value-of select="judul"/></h2>
          </header>
          <div class="fiqihpic">
            <center><img src="img_artikel/{gambar}"/></center>
          </div>
            <xsl:value-of select="isiArtikel"/>
          
        </xsl:if>
      </xsl:for-each>
    </html>
  </xsl:template>
</xsl:stylesheet>