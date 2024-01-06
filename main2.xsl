<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Companies Information</title>
        <link href="main.css" rel="stylesheet" type="text/css" />
      </head>
      <body>
        <p class="title" >Companies Information</p>
        <xsl:apply-templates select="companies/company"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="company">
    <div class="company">
      <div class="companyColumn">
        <img src="{image/@href}" class="company"/>
      </div>
      <div class="companyColumn">
        <p class="companyTitle">
          <xsl:value-of select="companyName"/>
        </p>
        <hr class="company"/>
        <p class="company">
          CEO: <xsl:value-of select="ceo"/>
        </p>
        <p class="company">
          Address: <xsl:value-of select="address/city"/>
          <xsl:if test="address/street">
            <br/>
            <xsl:value-of select="address/street"/>
          </xsl:if>
        </p>
        <p class="company">
          Contact Email: <xsl:value-of select="contacts/email"/>
        </p>
        <p class="company">
          Website:
          <a href="{contacts/site}">
            <xsl:value-of select="contacts/site"/>
          </a>
        </p>
        <p class="company">
          Facebook:
          <a href="{contacts/facebook}">
            <xsl:value-of select="contacts/facebook"/>
          </a>
        </p>
        <p class="company">
          LinkedIn:
          <a href="{contacts/linkedin}">
            <xsl:value-of select="contacts/linkedin"/>
          </a>
        </p>
        <p class="company">
          Description:<xsl:value-of select="description"/>
        </p>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
