<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<title>Progetto Cartoline</title>
				<!--fogli di stile-->
				<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet"/>
				
				<!--<link href="test1.css" rel="stylesheet" type="text/css"/>
				<link href="2mega_slide_flip_test_layout.css" rel="stylesheet" type="text/css"/>
				<link href="css_style_out.css" rel="stylesheet" type="text/css"></link>
				<link href="graph1.css" rel="stylesheet" type="text/css"/>
				<link href="riquadri_flip.css" rel="stylesheet" type="text/css"></link>-->
				<link href="cartoline.css" rel="stylesheet" type="text/css"/>
				
				<script src="pagedesign.js"></script>
			</head>
			<body>

		
		<!--Header della pagina-->
		<div class="caption-container">
			<h2>Progetto Cartoline Storiche</h2>
			
			<!--Tasti di selezione della cartolina-->
			<div class="row">
				<div class="column">
					<div class="demo cursor" style="width:100%" onclick="currentSlide(1)"> <xsl:apply-templates select="//tei:title[@xml:id = 'titolo1']"/></div>
				</div>
				
				<div class="column">
					<div class="demo cursor" style="width:100%" onclick="currentSlide(2)"> <xsl:apply-templates select="//tei:title[@xml:id = 'titolo2']"/></div>
				</div>
			</div>	
		</div>

<!--Contenitore degli spazi delle cartoline-->
<div class="container">
<div class="mySlides">
	
	<!--Spazio della prima cartolina-->
	<div class="numbertext">1 / 2</div>

		<!--Contenitore cartolina girevole-->
		<div class="flip-card">
			<div class="flip-card-inner">

				<div class="flip-card-front">
					<div class="fliptext">

						<img class="flipPic" src="pics/7694-001F.jpg" alt="Fronte"/>

						<!--Fronte della cartolina-->
						<h1><xsl:apply-templates select="//tei:title[@xml:id = 'titolo1']"/></h1>
						
						<p><xsl:apply-templates select="//tei:author[@xml:id = 'auth1' or @xml:id = 'auth2']"/></p>
						<p><xsl:apply-templates select="//tei:idno[@xml:id = 'id1']"/></p>
						<p><xsl:apply-templates select="//tei:respStmt[@xml:id = 'resp1' or @xml:id = 'resp2']"/></p>
					</div>
				</div>
				
						<!--Retro della cartolina-->
				<div class="flip-card-back">
					<div class="fliptext">

						<xsl:apply-templates select="//tei:facsimile[@xml:id='facsimile1']"/>

						<h2>Retro della cartolina</h2>

						<p><xsl:apply-templates select="//tei:div[@xml:id = 'cardRear']"/></p>
						
					</div>
				</div>
			</div>
		</div>

				<!--Contenitore informazioni cartolina 1-->
				<xsl:element name="div2">
					<xsl:attribute name="id">cartolina1</xsl:attribute>
					 <div id="contenitore1">
						<xsl:apply-templates select="//tei:sourceDesc[@xml:id = 'sourceDesc1']"/>
						<xsl:apply-templates select="//tei:div[@xml:id = 'divTxt1']"/>
					</div>
				</xsl:element>
</div>
			
		<div class="mySlides">
			<!--Spazio della seconda cartolina-->
			<div class="numbertext">2 / 2</div>

		<!--Contenitore cartolina girevole-->
		<div class="flip-card">
			<div class="flip-card-inner">

				<div class="flip-card-front">
					<div class="fliptext">
						<img class="flipPic" src="pics/7694-053F.jpg" alt="Fronte"/>
						
						<!--Fronte della cartolina-->
						<h1><xsl:apply-templates select="//tei:title[@xml:id = 'titolo2']"/></h1>
						
						<p><xsl:apply-templates select="//tei:author[@xml:id = 'auth1_2']"/></p> <!--Ciclo dinamico??-->
						<p><xsl:apply-templates select="//tei:idno[@xml:id = 'id2']"/></p>
						<p><xsl:apply-templates select="//tei:respStmt[@xml:id = 'resp1_2' or @xml:id = 'resp2_2']"/></p>
					</div>
				</div>
				
				<!--Retro della cartolina-->
				<div class="flip-card-back">
					<div class="fliptext">
						<xsl:apply-templates select="//tei:facsimile[@xml:id='facsimile2']"/>

						<h2>Retro della cartolina</h2>

						<p><xsl:apply-templates select="//tei:div[@xml:id = 'cardRear2']"/></p>
					</div>
				</div>
			</div>
		</div>
			

				<!--Contenitore informazioni cartolina 53-->
				<xsl:element name="div3">
					<xsl:attribute name="id">cartolina2</xsl:attribute>
					<div id="contenitore2">
						<xsl:apply-templates select="//tei:sourceDesc[@xml:id = 'sourceDesc2']"/>
						<xsl:apply-templates select="//tei:div[@xml:id = 'divTxt2']"/>
					</div>
				</xsl:element>
			
				<xsl:apply-templates/>
		</div>

		<a class="prev" onclick="plusSlides(-1)">❮</a>
		<a class="next" onclick="plusSlides(1)">❯</a>

</div> <!--Fine dell'area con le informazioni sulle cartoline-->




				<!--Informazoni generali sul progetto - Riconoscimenti-->
				<xsl:element name="div1">
					<xsl:attribute name="id">crediti</xsl:attribute>
					
					<xsl:apply-templates select="//tei:title[@xml:id = 'titprinc']"/> 
					<xsl:apply-templates select="//tei:respStmt[@xml:id = 'resp1' or @xml:id = 'resp2']"/> <!--FARE DINAMICO PER + RESP-->
					<xsl:apply-templates select="//tei:respStmt[@xml:id = 'resp3' or @xml:id = 'resp4' or @xml:id = 'resp5' or @xml:id = 'resp6']"/>
					<xsl:apply-templates select="//tei:edition[@xml:id = 'edit']"/>
					<xsl:apply-templates select="//tei:publicationStmt[@xml:id = 'pub']"/>
				</xsl:element> <!--Chiusura della sezione dei riconoscimenti-->

</body>
</html>

</xsl:template>




<!--Inizio della sezione dei template-->

	<!--Dati riguardo alle Immagini-->
	<xsl:template match="tei:facsimile[@xml:id = 'facsimile3']">
		<div id="immagini1">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="tei:sourceDesc[@xml:id = 'sourceDesc1' or @xml:id = 'sourceDesc2']">
		<div id="sourceDescStile">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="tei:div">
		<p>
			<xsl:apply-templates/>
		</p>
	</xsl:template>
	
	<xsl:template match="tei:availability">
		<b>
			<xsl:apply-templates/>
		</b>
	</xsl:template>
	
	<xsl:template match="tei:distributor">
		<b>
			<xsl:apply-templates/>
		</b>
	</xsl:template>
	
	<xsl:template match="tei:address[@xml:id = 'lab']">
		<b>
			<xsl:apply-templates/>
		</b>
	</xsl:template>
	
	<xsl:template match="tei:lb">
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:title">
		<p class="title">
			<xsl:apply-templates/>
		</p>
	</xsl:template>
	
	<xsl:template match="tei:name"> <!--controllare assolutamente nomi e id!!!!!-->
		<xsl:choose>
			<xsl:when test="@xml:id = 'GP'">
				<xsl:apply-templates/>
				<xsl:text>,</xsl:text>
			</xsl:when>		
			<xsl:when test="@xml:id = 'SP'">
				<xsl:apply-templates/>
				<br/>
			</xsl:when>
			<xsl:when test="@xml:id = 'XY1'">
				<xsl:apply-templates/>
				<br/>
			</xsl:when>
			<xsl:when test="@xml:id = 'XY2'">
				<xsl:apply-templates/>
				<xsl:text>,</xsl:text>
			</xsl:when>
			<xsl:when test="@xml:id = 'XZ1'">
				<xsl:apply-templates/>
				<br/>
			</xsl:when>
			<xsl:when test="@xml:id = 'ES'">
				<xsl:apply-templates/>
				<br/>
			</xsl:when>
			<xsl:when test="@xml:id = 'ER'">
				<xsl:apply-templates/>
				<br/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="tei:edition">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:pubPlace">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:publisher">
		<b>
			<xsl:text>Pubblicazione: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<xsl:text>,</xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:date">
		<xsl:choose>
			<xsl:when test="@when = '2018'">
				<br/>
				<b>
					<xsl:text>Anno di compilazione: </xsl:text>
				</b>
				<xsl:apply-templates/>
			</xsl:when>
			
			<xsl:when test="@when  =  '1913'  or @when  =  '1914' or @when  =  '1916' or @when  =  '1917' or @when  =  '1919'">
				<b>
					<xsl:text>Anno: </xsl:text>
				</b>
				<xsl:apply-templates/>
			</xsl:when>
			<xsl:when test="@when = '2020'">
				<b>
					<xsl:apply-templates/>
				</b>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="tei:publicationStmt">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:note[@xml:id = 'cart1' or @xml:id = 'cart3']">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:bibl">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:date[@xml:id = 'date1' or @xml:id = 'date2' or @xml:id = 'date3']">
		<b>
			<xsl:text>Data: </xsl:text>
		</b>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="tei:pubPlace[@xml:id = 'pubPlace1' or @xml:id = 'pubPlace2']">
		<b>
			<xsl:text>Luogo: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:repository">
		<b>
			<xsl:text>Deposito: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:summary">
		<b>
			<xsl:text>Tipo: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:idno">
		<b>
			<xsl:text>Codice identificativo: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:textLang">
		<b>
			<xsl:text>Lingua: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:objectType">
		<b>
			<xsl:text>Oggetto: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:material">
		<b>
			<xsl:text>Materiale: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:dimensions">
		<b>
			<xsl:text>Dimensioni: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:height">
		<xsl:apply-templates/>
		<xsl:text>cm x</xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:width">
		<xsl:apply-templates/>
		<xsl:text>cm</xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:stamp">
		<b>
			<xsl:text>Timbro: </xsl:text>
		</b>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="tei:stamp[@type = 'postmark']">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:stamp[@type = 'postage']">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="tei:condition">
		<b>
			<xsl:text>Conservazone: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:support">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:physDesc">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:listPerson">
		<b>
			<xsl:text>Persone nominate:</xsl:text>
		</b>
		<br/>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:person">
		<li>
			<xsl:apply-templates/>
		</li>
	</xsl:template>
	
	<xsl:template match="tei:listPlace">
		<b>
			<xsl:text>Luoghi nominati:</xsl:text>
		</b>
		<br/>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:place">
		<li>
			<xsl:apply-templates/>
		</li>
	</xsl:template>
	
	<xsl:template match="tei:listOrg">
		<b>
			<xsl:text>Organizzazioni: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:sex">
		<xsl:text>Sesso: </xsl:text>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="tei:note">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="tei:settlement">
		<b>
			<xsl:text>Città: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:country[@key = 'N']">
		<xsl:apply-templates/>
		<xsl:text>)</xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:resp">
		<b>
			<xsl:apply-templates/>
			<xsl:text>:</xsl:text>
		</b>
	</xsl:template>
	
	<xsl:template match="tei:district[@type = 'comune']">
		<xsl:text>(comune di </xsl:text>
		<xsl:apply-templates/>
		<xsl:text>,</xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:district[@type = 'provincia']">
		<xsl:apply-templates/>
		<xsl:text>,</xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:country">
		<b>
			<xsl:text>Paese: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:figure">
		<div id="imgDesc">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="tei:author">
		<b>
			<xsl:text>Autore: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:author[@xml:id = 'Giovannino']">
		<b>
			<xsl:text>Autore: </xsl:text>
		</b>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="tei:div[@xml:id = 'testo1' or @xml:id = 'testo2']">
		<div id="testo">
			<xsl:apply-templates/>
		</div>
	</xsl:template>


	<!--Contenuti non mostrati-->
	<xsl:template match="tei:TEI[@xml:id = 'tei1' or @xml:id = 'tei2']">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="tei:teiHeader[@xml:id = 'teiHeader']">
		<div class="no">
			<xsl:apply-templates/>
		</div>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:profileDesc">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="tei:notesStmt[@xml:id = 'noteStmt1' or @xml:id = 'noteStmt2']">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="tei:titleStmt[@xml:id = 'titleStmt1' or @xml:id = 'titleStmt2']">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="tei:editionStmt[@xml:id = 'editionStmt1' or @xml:id = 'editionStmt2']">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="tei:publicationStmt[@xml:id = 'publicationStmt1' or @xml:id = 'publicationStmt2']">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="tei:expan">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="tei:p[@xml:id = 'address1' or @xml:id = 'address2']">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="tei:orig">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="tei:langUsage">
		<div class="no">
			<xsl:apply-templates/>
		</div>
	</xsl:template>


	<!--Template grafici-->
	<!--Marcatura sulle superfici delle immagini-->

	<xsl:template match="tei:facsimile">
		<xsl:variable name="id" select="../@xml:id"/>
		<xsl:variable name="url" select="tei:surface/tei:graphic/@url"/>
		
		<xsl:variable name="width" select="substring-before(tei:surface/tei:graphic/@width, 'px')"/>
		<xsl:variable name="height" select="substring-before(tei:surface/tei:graphic/@height, 'px')"/>
				
			
		<img class="scan_retro2" src="{$url}" title="{$id}" />
		
			<svg viewBox="0 0 {$width} {$height}" class="test_quadrato2">
				<xsl:for-each select="tei:surface[1]/tei:zone">
				<xsl:variable name="zonetype" select="@type"/>
				<xsl:variable name="zoneID" select="@xml:id"/>
					<xsl:choose> <!--acquisizione di dati in forma di poligoni o rettangoli-->
						<xsl:when test="@points">
							<xsl:variable name="points" select="@points"/>
							<polygon points="{$points}" class="{$zonetype}" id="{$zoneID}" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:variable name="pointx" select="@ulx"/>
							<xsl:variable name="pointy" select="@uly"/>
							<xsl:variable name="widthr" select="@lrx - @ulx"/>
							<xsl:variable name="heightr" select="@lry - @uly"/>
							<rect x="{$pointx}" y="{$pointy}" height="{$heightr}" width="{$widthr}" class="{$zonetype}" id="{$zoneID}"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</svg>
	</xsl:template>


	<!--Acquisizione dei dati da evidenziare sulla pagina, testo e superfici marcate sulle immagini-->

	<xsl:template match="tei:p[@xml:id = 'testoRetro' or @xml:id='testoRetro1_1' or @xml:id='testoRetro1_2' or @xml:id='testoRetro1_3' or @xml:id='testoRetro2' or @xml:id='testoRetro2_1' or @xml:id='testoRetro2_2' or @xml:id='testoRetro2_3' or @xml:id='testoRetro2_4']">
		<div id="testoRetro">
			<xsl:apply-templates/>
		</div>
		<br/>
	</xsl:template>
	
	<xsl:template match="tei:p[@xml:id = 'indirizzoRetro' or @xml:id='indirizzoRetro1' or @xml:id='indirizzoRetro1_1' or @xml:id='indirizzoRetro2' or @xml:id='indirizzoRetro2_1' or @xml:id='indirizzoRetro2_2']">
		<div id="indirizzoRetro">
			<xsl:apply-templates/>
		</div>
		<br/>
	</xsl:template>

	<xsl:template match="tei:div[@xml:id='timbri1' or @xml:id='timbri1_1' or @xml:id='timbri1_2' or @xml:id='timbri1_3' or @xml:id='timbri2' or @xml:id='timbri2_1' or @xml:id='timbri2_2' or @xml:id='timbri2_3']">
		<div id="timbri1">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="tei:p[@xml:id = 'infRetro' or @xml:id='infRetro1_1' or @xml:id='infRetro1_2' or @xml:id='infRetro1_3' or @xml:id='infRetro1_4' or @xml:id='infRetro1_5' or @xml:id='infRetro1_6' or @xml:id='infRetro1_7' or @xml:id='infRetro1_8' or @xml:id='infRetro1_9' or @xml:id='infRetro1_10' or @xml:id='infRetro2' or @xml:id='infRetro2_1' or @xml:id='infRetro2_2' or @xml:id='infRetro2_3' or @xml:id='infRetro2_4' or @xml:id='infRetro2_5' or @xml:id='infRetro2_6' or @xml:id='infRetro2_7' or @xml:id='infRetro2_8']">
		<div id="infRetro">
			<xsl:apply-templates/>
		</div>
	</xsl:template>
	
	<xsl:template match="tei:idno[@xml:id='numCatalogo' or @xml:id='numCatalogo1_1' or @xml:id='numCatalogo1_2'or @xml:id='numCatalogo2'or @xml:id='numCatalogo2_1' or @xml:id='numCatalogo2_2']">
		<p id="numCatalogo"><b>
			<xsl:text>Numero di catalogazione: </xsl:text>
		</b>
		<xsl:apply-templates/>
		<br/></p>
	</xsl:template>

</xsl:stylesheet>