<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
 <html>
 <body background="imgs/bg4.jpg">
 <h1 align="center" style="font:italic 2em Georgia,serif;">Gucci</h1>
 <h2 style="margin-left:70%">2020春夏秀场直击</h2>
  <xsl:for-each select="catalog/clothesinfo">
	  <div style="position: relative;margin-left:300px;width=1000px;height=980px">
			<div style="width=270px;height=400px;margin-top:200px">
				<img height="400px" width="270px" style="padding-top:100px;padding-right:50px">
					 <xsl:attribute name="src">
					 <xsl:value-of select="img/@imgurl"/>
					 </xsl:attribute>
				 </img>
				  <h1 align="center" style="font:italic 2em Georgia,serif;font-size:20px">Disney x Gucci</h1>
				  <p style="font-family:Microsoft Yahei">由<xsl:value-of select="designer/name"/>设计。</p>
			       <p style="font-family:Microsoft Yahei"><xsl:value-of select="description"/></p>
			</div>
			<div >
				<xsl:apply-templates select="items"/>
			</div>
	   </div>
 </xsl:for-each>
 </body>
 </html>
</xsl:template>
<xsl:template match="items">
	<div style="position: absolute;margin-left:500px;width=300px;height=800px;top:20px;">
		<xsl:for-each select="item">
			<div style="position: relative;float:left;width=400px;height=200px;buttom:10px;color:#FFDAB9;padding-top:10px">
				<xsl:apply-templates select="itemname"/>
				<img height="200px" width="200px" style="float:left">
					 <xsl:attribute name="src">
					 <xsl:value-of select="@itemurl"/>
					 </xsl:attribute>
				 </img>
			</div>
		</xsl:for-each>
	</div>
</xsl:template>
</xsl:stylesheet>
