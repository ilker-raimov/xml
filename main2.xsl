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
      <p class="companyTitle">
          <xsl:value-of select="companyName"/>
      </p>
      <hr class="company"/>
      <div class="companyColumn">
        <img src="{image/@href}" class="company"/>
      </div>
      <div class="companyColumn">
        
        <p class="company">
          <strong>
            CEO:
          </strong>
          <br/>
          <xsl:value-of select="ceo"/>
        </p>
        <p class="company">
          <strong>
            Address:
          </strong>
          <br/>
          <xsl:value-of select="address/city"/>
          <xsl:if test="address/street">
            <br/>
            <xsl:value-of select="address/street"/>
          </xsl:if>
        </p>
        <p class="company">
          <strong>
            Email:
          </strong>
          <br/>
          <xsl:value-of select="contacts/email"/>
        </p>
        <p class="company">
          <strong>
            Website:
          </strong>
          <br/>
          <a href="{contacts/site}" class="company">
            <xsl:value-of select="contacts/site"/>
          </a>
        </p>
        <p class="company">
          <strong>
            Facebook:
          </strong>
          <br/>
          <a href="{contacts/facebook}" class="company">
            <xsl:value-of select="contacts/facebook"/>
          </a>
        </p>
        <p class="company">
          <strong>
            LinkedIn:
          </strong>
          <br/>
          <a href="{contacts/linkedin}" class="company">
            <xsl:value-of select="contacts/linkedin"/>
          </a>
        </p>
        <p class="company">
          <strong>
             Description:
          </strong>
          <br/>
         <xsl:value-of select="description"/>
        </p>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
