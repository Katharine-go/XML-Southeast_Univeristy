<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
	<xsl:template match="/namecard">
		<html>
			<head>
				<title>小组名片</title>
			</head>
			<body style="background-image:url(imgs/bg3.png);">
				<div style="position:relative;float:left;width=1000px;height=40px;margin: 50px;text-align:center;font-size:50px;">
					<img src="imgs/logo2.png" alt="example"/>
				</div>

				<xsl:for-each select="people">
					<div style="position:relative;float:left;width=450px;height=200px;background: rgb(255,255,255);margin: 50px;">
						<div style="position:relative;float:left;width=200px;height=200px;padding:10px;">
							<img height="180px" width="180px">
								<xsl:attribute name="src"><xsl:value-of select="basic/name/@picture"/></xsl:attribute>
							</img>
						</div>
						<div style="position:relative;float:left;width=250px;height=200px;padding:10px;">
							<xsl:apply-templates select="basic"/>
							<xsl:apply-templates select="education"/>
						</div>
					</div>
				</xsl:for-each>
				<div style="position:relative;float:left;width=1000px;height=400px;background: rgb(255,255,255);margin: 50px;">
					<div style="position:relative;float:left;width=950px;height=50px;margin: 20px;text-align: center;">
						CHECK
					</div>
					<div style="position:relative;float:left;width=1000px;height=150px;color;">
						<div style="position:relative;float:left;width=290px;height= 40px;margin: 20px;">
							<a style="display: block;width=290px;height= 40px;text-align: center;font-size: 30px;text-decoration: none;color:rgb(147, 21, 172); ">
								<xsl:attribute name="href">allbrands.xml</xsl:attribute>
								品牌列表
							</a>
						</div>
						<div style="position:relative;float:left;width=290px;height= 40px;margin: 20px;">
							<a style="display: block;width=290px;height= 40px;text-align: center;font-size:30px;text-decoration: none;color:rgb(147, 21, 172); ">
								<xsl:attribute name="href">allbrands.xml</xsl:attribute>
								时装秀
							</a>
						</div>
						<div style="position:relative;float:left;width=290px;height= 40px;margin: 20px;">
							<a style="display: block;width=290px;height= 40px;text-align: center;font-size: 30px;text-decoration: none; color:rgb(147, 21, 172);">
								<xsl:attribute name="href">allclothesinfo.xml</xsl:attribute>
								秀场直击
							</a>
						</div>
					</div>
					<div style="position:relative;float:left;width=1000px;height=150px;">
						<div style="position:relative;float:left;width=290px;height= 40px;margin: 20px;">
							<a style="display: block;width=290px;height= 40px;text-align: center;font-size: 30px;text-decoration: none;color:rgb(147, 21, 172); ">
								<xsl:attribute name="href">orderByShow.xml</xsl:attribute>
								时间排序
							</a>
						</div>
						<div style="position:relative;float:left;width=290px;height= 40px;margin: 20px;">
							<a style="display: block;width=290px;height= 40px;text-align: center;font-size: 30px;text-decoration: none;color:rgb(147, 21, 172); ">
								<xsl:attribute name="href">orderByShowplace.xml</xsl:attribute>
								地点排序
							</a>
						</div>
						<div style="position:relative;float:left;width=290px;height= 40px;margin: 20px;">
							<a style="display: block;width=290px;height= 40px;text-align: center;font-size: 30px;text-decoration: none; color:rgb(147, 21, 172);">
								<xsl:attribute name="href">orderByBrand.xml</xsl:attribute>
								品牌排序
							</a>
						</div>
					</div>
					<div style="position:relative;float:left;width=1000px;height=150px;">
						<div style="position:relative;float:left;width=290px;height= 40px;margin: 20px;">
							<a style="display: block;width=290px;height= 40px;text-align: center;font-size: 30px;text-decoration: none; color:rgb(147, 21, 172);">
								<xsl:attribute name="href">newData.xml</xsl:attribute>
								最新时装
							</a>
						</div>
						<div style="position:relative;float:left;width=290px;height= 40px;margin: 20px;">
							<a style="display: block;width=290px;height= 40px;text-align: center;font-size: 30px;text-decoration: none; color:rgb(147, 21, 172);">
								<xsl:attribute name="href">firstThreeBrand.xml</xsl:attribute>
								最热品牌
							</a>
						</div>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="basic">
		<div style="position:relative;float:left;width=230px;height=90px;">
			<xsl:apply-templates select="name"/>
			<xsl:apply-templates select="gender"/>
			<xsl:apply-templates select="age"/>
			<xsl:apply-templates select="email"/>
		</div>
	</xsl:template>
	<xsl:template match="education">
		<div style="position:relative;float:left;width=230px;height=90px;">
			<xsl:apply-templates select="school"/>
			<xsl:apply-templates select="major"/>
			<xsl:apply-templates select="enrolldate"/>
		</div>
	</xsl:template>
	<xsl:template match="name">
		<div style="position:relative;float:left;width=100px;font-weight:bold;font-family:Microsoft Yahei;">
			<xsl:value-of select="."/>
		</div>
		<div style="position:relative;float:left;width=130px;font-weight:bold;font-family:Microsoft Yahei;">
			<xsl:value-of select="../../@id"/>
		</div>
	</xsl:template>
	<xsl:template match="gender">
		<div style="position:relative;float:left;width=50px;font-family:Microsoft Yahei;">
			<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="age">
		<div style="position:relative;float:left;width=180px;font-family:Microsoft Yahei;">
			<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="email">
		<div style="position:relative;float:left;width=230px;font-family:Microsoft Yahei;">
			<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="school">
		<div>
		-<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="major">
		<div>
		-<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="enrolldate">
		<div>
		-<xsl:value-of select="."/>
		</div>
	</xsl:template>
	<xsl:template match="svg">
		<div>
		-<xsl:value-of select="."/>
		</div>
	</xsl:template>
</xsl:stylesheet>
