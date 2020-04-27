<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="190">
  <polygon points="100,10 40,180 190,60 10,60 160,180"
  style="fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;"/>
</svg>
			<body background="imgs/bg3.png">
				<div style="position: relative;float:left;margin=10px;width=20%px;height=30%;font-size: 40px;text-align: center;">
		  ——Fashion Shot——
	  <div style="position: absolute;float:right;width=50px;height=20px;buttom:0px;right:0px;background: rgb(255,255,255);">
						<a style="display: block;width=50px;height= 20px;text-align: center;font-size:20px;text-decoration: none; ">
							<xsl:attribute name="href">card.xml</xsl:attribute>返回首页
	      </a>
					</div>
				</div>
				<xsl:for-each select="clothesinfos/clothesinfo">
					<div style="position: relative;float:left;margin=10px;padding=30px;width=60%px;height=40%px;background: rgb(255,255,255);">
						<div style="position: relative;float:left;width=800px;height=200px;">
							<xsl:apply-templates select="showname"/>
							<xsl:apply-templates select="bname"/>
							<xsl:apply-templates select="designer"/>
							<xsl:apply-templates select="description"/>
							<xsl:apply-templates select="items"/>
						</div>
						<div style="position:absolute;float:left;width=250px;height=340px;">
							<img height="340px" width="250px" style="float:right;">
								<xsl:attribute name="src"><xsl:value-of select="img/@imgurl"/></xsl:attribute>
							</img>
						</div>
					</div>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="showname">
		<div style="position: relative;float:left;width=300px;height=30px;">
			<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="bname">
		<div style="position: relative;float:left;;width=300px;height=30px;">
			<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="designer">
		<div style="position: relative;float:left;;width=800px;height=30px;">
			<xsl:apply-templates select="name"/>
			<xsl:apply-templates select="dcountry"/>
		</div>
	</xsl:template>
	<xsl:template match="items">
		<div style="position: absolute;float:left;width=800px;height=150px;top:200px;">
			<xsl:for-each select="item">
				<!--<a>
			<xsl:attribute name="href">
				@itemurl
			</xsl:attribute>
			<xsl:apply-templates select="itemname"/>
		</a>-->
				<div style="position: relative;float:left;width=120px;height=120px;buttom:10px;">
					<xsl:apply-templates select="itemname"/>
					<img height="100px" width="100px" style="float:left;">
						<xsl:attribute name="src"><xsl:value-of select="@itemurl"/></xsl:attribute>
					</img>
				</div>
			</xsl:for-each>
		</div>
	</xsl:template>
	<xsl:template match="description">
		<div>
			<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="name">
		设计师：<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="dcountry">
		(<xsl:value-of select="."/>)
</xsl:template>
	<xsl:template match="itemname">
		<div style="float:left;height=20px;width=100px;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">
			<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="backlink">
		<a style="">
			<xsl:attribute name="href">card.xml</xsl:attribute>
		返回首页
	</a>
	</xsl:template>
</xsl:stylesheet>
