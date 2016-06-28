<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
	<head><title>Jadwal Majelis</title></head>
	<body>
    	<table border="1">
      <tr bgcolor="#9acd32">
        <th>Acara</th>
        <th>Tanggal</th>
        <th>Waktu</th>
        <th>Alamat</th>
        <th>Pembicara</th>
      </tr>
      <xsl:for-each select="jadwal/dataAcara">
        <tr>
          <td><xsl:value-of select="acara"/></td>
          <td><xsl:value-of select="tanggal"/></td>
          <td><xsl:value-of select="waktu"/></td>
          <td><xsl:value-of select="alamat"/></td>
          <td><xsl:value-of select="pembicara"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
