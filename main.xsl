<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Companies Information</title>
  </head>
  <body>
    <h1>Companies Information</h1>
    <xsl:apply-templates select="companies/company"/>
  </body>
  </html>
</xsl:template>

<xsl:template match="company">
  <div style="border:1px solid #000; margin:10px; padding:10px;">
    <h2><xsl:value-of select="companyName"/></h2>
    <p><strong>CEO:</strong> <xsl:value-of select="ceo"/></p>
    <p><strong>Address:</strong> <xsl:value-of select="address/city"/>
      <xsl:if test="address/street"><br/><xsl:value-of select="address/street"/></xsl:if>
    </p>
    <p><strong>Contact Email:</strong> <xsl:value-of select="contacts/email"/></p>
    <p><strong>Website:</strong> <a href="{contacts/site}"><xsl:value-of select="contacts/site"/></a></p>
    <p><strong>Facebook:</strong> <a href="{contacts/facebook}"><xsl:value-of select="contacts/facebook"/></a></p>
    <p><strong>LinkedIn:</strong> <a href="{contacts/linkedin}"><xsl:value-of select="contacts/linkedin"/></a></p>
    <p><strong>Description:</strong> <xsl:value-of select="description"/></p>
    <img src="{image/@href}" alt="{companyName}"/><xsl:value-of select="image/@href"/>
  </div>
</xsl:template>

</xsl:stylesheet>