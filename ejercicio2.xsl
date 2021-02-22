<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method='html'/>
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<title>examen</title>
			</head>
			<body>
				<xsl:for-each select="usuario/usuarios">
					<div style="border:1px solid black;display:flex;box-sizing:border-box;">
						<div style="width:35%;">
							<p>Nombre:
								<xsl:value-of select="nombre"/>
							</p>
							<p>Apellido
								<xsl:value-of select="apellido"/>
							</p>
							<p>Direccion:
								<xsl:value-of select="direccion"/>
							</p>
						
						</div>
						<xsl:for-each select="contacto/usuario">
							<div style="width:35%;">
								<p>Url :
									<xsl:value-of select="url"/>
								</p>
								<p>Email
									<xsl:value-of select="email"/>
								</p>
							</div>
						</xsl:for-each>
				</xsl:for-each>
				</body>
			</xsl:template>
		</xsl:output>
	</xsl:stylesheet>
