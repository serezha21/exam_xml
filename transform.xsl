<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
  <html>
    <head>
      <title>Недвижимость</title>
      <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
      <h1>Недвижимость</h1>
      <div id="propertys">
        <xsl:apply-templates/>
      </div>
    </body>
  </html>
</xsl:template>
<xsl:template match="property">
  <div class="property">
    <xsl:apply-templates select="TITLE"/>
    <xsl:apply-templates select="ADDRESS"/>
    <xsl:apply-templates select="@type"/>
    <xsl:apply-templates select="DATE"/>
    <xsl:if test="@count">
      <xsl:apply-templates select="@count"/>
    </xsl:if>
    <xsl:apply-templates select="PRICE"/>
  </div>
</xsl:template>

<xsl:template match="TITLE">
  <div class="title">
    <span>Название:</span> <xsl:value-of select="."/>
  </div>
</xsl:template>

<xsl:template match="ADDRESS">
  <div class="address">
    <span>Адрес:</span> <xsl:value-of select="."/>
  </div>
</xsl:template>

<xsl:template match="@type">
  <div class="type">
    <span>Тип:</span> <xsl:value-of select="."/>
  </div>
</xsl:template>

<xsl:template match="DATE">
  <div class="date">
    <span>Дата:</span> <xsl:value-of select="."/>
  </div>
</xsl:template>

<xsl:template match="@count">
  <div class="count">
    <span>Кол-во(этажей, комнат):</span> <xsl:value-of select="."/>
  </div>
</xsl:template>

<xsl:template match="PRICE">
  <div class="price">
    <span>Цена:</span> <xsl:value-of select="."/>
  </div>
</xsl:template>

</xsl:stylesheet>