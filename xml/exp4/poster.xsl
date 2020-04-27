<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/catalog/clothesinfo[1]">
 <html>
 <head>
	<style>
		.div-a{float:right;width:30%;margin-top:20%;}
		.div-b{width:90%;margin-left:10%}
		.div-c{width:300px}
		.info-style{font-family:Microsoft Yahei}
	</style>
 </head>
 <body background="imgs/bg1.jpg" >
 <h1 align="center" style="font:italic 2em Georgia,serif;">COCO CHANEL</h1>
 <h2 style="margin-left:70%">2020春夏秀场直击</h2>
 <div class="div-b">
	 <div>
		 <img height="457px" width="306px" style="margin-left:10%;float:left">
			 <xsl:attribute name="src">
			 <xsl:value-of select="img/@imgurl"/>
			 </xsl:attribute>
		 </img>
	 </div>
	 <div class="div-a">
			<p class="info-style">由<xsl:value-of select="designer/name"/>设计。</p>
			<p class="info-style"><xsl:value-of select="description"/></p>
	 </div>
</div>
 </body>
 </html>
</xsl:template>
<xsl:template match="/catalog/clothesinfo[2]">
 <html>
 <head>
	<style>
		.div-a2{width:300px}
		.div-b2{width:90%;margin-left:10%;margin-top:5%}
		.div-c2{float:left;margin-left:15%;width:30%;padding-top:40%}
		.info-style{font-family:Microsoft Yahei}
	</style>
 </head>
 <body background="C:\Users\huxih\Desktop\poster1\bg1.jpg" >
 <div class="div-b2">
	 <div class="div-c2">
			<p class="info-style">由<xsl:value-of select="designer/name"/>设计。</p>
			<p class="info-style"><xsl:value-of select="description"/></p>
	 </div>
 	 <div >
		 <img height="457px" width="306px" style="float:right;padding-left:20px">
			 <xsl:attribute name="src">
			 <xsl:value-of select="img/@imgurl"/>
			 </xsl:attribute>
		 </img>
	 </div>
</div>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>
