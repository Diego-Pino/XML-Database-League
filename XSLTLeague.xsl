<?xml version="1.0" encoding="UTF-8" ?>

<!--
/**
 ***************************************************************************
 *
 *  Author Code: DiegoPino, diegopino@gmail.com
 *  Basado en mis estudios de XML Schemas Database and XSL stands for EXtensible Stylesheet Language
 *  Website: http://www.we11.net
 *  License: Creative Commons http://creativecommons.org/licenses/by/4.0/legalcode
 *
 *  XML Database League standings to generate stats from a XML League to Page. for example: -FIFA World Cup,
 *  Football Clubs / Leagues and Tournaments
 *
 ***************************************************************************​/
 */
-->

<!--Inicio de XSL Stylesheet , CSS par XML en Codigo XLS   -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.0"/>


<!-- Definimos Template Root de la hoja completa -->
<xsl:template match="/">
  <html>
    <head>
    	<title>XML Database League XSL</title>
    </head>
  	<body>
          <h1>
  			
               

  		</h1>
  		<h1>XML Database League</h1>
  		
		<xsl:apply-templates select="League/Team">
  		<xsl:sort select="@id"/>
  		</xsl:apply-templates>


     <h1>codigo autor: <img src="colombia.png" alt="Colombia"/>
     </h1>
         
  	</body>
  </html>
</xsl:template>

<!-- Fin Template Root de la hoja completa -->

<!-- Definimos Template XSL & Buscamos Los Teams del XML -->
<xsl:template match="Team">
  <div>
  	<h2>

          <xsl:value-of select="Team_Name"/>    
    		(
  		<xsl:value-of select="@id"/>
  		)
  	</h2>
  	
<!-- Buscamos descripcion de los Teams del XML -->
  	<xsl:for-each select="description">
  		<p>
  			<xsl:value-of select="." align="justify"/>
  		</p>
  	</xsl:for-each>




<!-- Definimos & Buscamos Los Players del XML, Generamos Tabla Estadisticas -->
 <xsl:text>Legends Players: </xsl:text>
  <table border="1">
      <tr bgcolor="#2282b1">
      <th>Name</th>
      <th>Country</th>
	 <th>Position</th>
     </tr>

    <xsl:for-each select="Players/person">
      <tr bgcolor="#a9b8c2">
      <td><xsl:value-of select="first_name"/></td>
      <td><xsl:value-of select="Country_birth"/></td>
      <td><xsl:value-of select="Position"/></td>
      </tr>
    </xsl:for-each>
  </table>
<!-- Fin de Los Players del XML -->

  </div>

<!-- Fin Template XSL match="Team"  -->
</xsl:template>




<!-- Definimos Template & Buscamos codigo nuevo en el XML -->


<!-- Fin Codigo XSL -->
</xsl:stylesheet>
