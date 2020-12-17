<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
              	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body style="text-align:center">
				<h2>Melbourne House Price Dataset</h2>
				<p>This data was scraped from publicly available results posted every week from Domain.com.au, I've cleaned it as best I can, now it's up to you to make data analysis magic. The dataset includes Address, Type of Real estate, Suburb, Method of Selling, Rooms, Price, Real Estate Agent, Date of Sale and distance from C.B.D.</p>
				<table border="1">
					<tr bgcolor="#19AAFF">
						<th>Suburb</th>
						<th>Address</th>
						<th>Rooms</th>
						<th>Type</th>
						<th>Price</th>
						<th>Method</th>
						<th>SellerG</th>
						<th>Date</th>
						<th>Postcode</th>
						<th>Regionname</th>
						<th>Propertycount</th>
						<th>Distance</th>
						<th>CouncilArea</th>
					</tr>
					<xsl:for-each select="root/row">
						<tr>
							<td>
								<xsl:value-of select="Suburb"/>
							</td>
							<td>
								<xsl:value-of select="Address"/>
							</td>
							<td>
								<xsl:value-of select="Rooms"/>
							</td>
							<td>
								<xsl:value-of select="Type"/>
							</td>
							<td>
								<xsl:value-of select="Price"/>
							</td>
							<td>
								<xsl:value-of select="Method"/>
							</td>
							<td>
								<xsl:value-of select="SellerG"/>
							</td>
							<td>
								<xsl:value-of select="Date"/>
							</td>
							<td>
								<xsl:value-of select="Postcode"/>
							</td>
							<td>
								<xsl:value-of select="Regionname"/>
							</td>
							<td>
								<xsl:value-of select="Propertycount"/>
							</td>
							<td>
								<xsl:value-of select="Distance"/>
							</td>
							<td>
								<xsl:value-of select="CouncilArea"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Council Area is Moreland City Council</h2>
				<table border="1">
					<tr bgcolor="#19AAFF">
						<th>Suburb</th>
						<th>Address</th>
						<th>Rooms</th>
						<th>Type</th>
						<th>Price</th>
						<th>Method</th>
						<th>SellerG</th>
						<th>Date</th>
						<th>Postcode</th>
						<th>Regionname</th>
						<th>Propertycount</th>
						<th>Distance</th>
						<th>CouncilArea</th>
					</tr>
					<xsl:for-each select="root/row[CouncilArea='Moreland City Council']">
						<tr>
							<td>
								<xsl:value-of select="Suburb"/>
							</td>
							<td>
								<xsl:value-of select="Address"/>
							</td>
							<td>
								<xsl:value-of select="Rooms"/>
							</td>
							<td>
								<xsl:value-of select="Type"/>
							</td>
							<td>
								<xsl:value-of select="Price"/>
							</td>
							<td>
								<xsl:value-of select="Method"/>
							</td>
							<td>
								<xsl:value-of select="SellerG"/>
							</td>
							<td>
								<xsl:value-of select="Date"/>
							</td>
							<td>
								<xsl:value-of select="Postcode"/>
							</td>
							<td>
								<xsl:value-of select="Regionname"/>
							</td>
							<td>
								<xsl:value-of select="Propertycount"/>
							</td>
							<td>
								<xsl:value-of select="Distance"/>
							</td>
							<td>
								<xsl:value-of select="CouncilArea"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h2>Distance is greater than 10 miles and in sorted order</h2>
				<table border="1">
					<tr bgcolor="#19AAFF">
						<th>Suburb</th>
						<th>Address</th>
						<th>Rooms</th>
						<th>Type</th>
						<th>Price</th>
						<th>Method</th>
						<th>SellerG</th>
						<th>Date</th>
						<th>Postcode</th>
						<th>Regionname</th>
						<th>Propertycount</th>
						<th>Distance</th>
						<th>CouncilArea</th>
					</tr>
					<xsl:for-each select="root/row[Regionname='Northern Metropolitan']">
						<xsl:sort select="Distance"/>
						<xsl:if test="Distance &gt; 10">
							<tr>
								<td>
									<xsl:value-of select="Suburb"/>
								</td>
								<td>
									<xsl:value-of select="Address"/>
								</td>
								<td>
									<xsl:value-of select="Rooms"/>
								</td>
								<td>
									<xsl:value-of select="Type"/>
								</td>
								<td>
									<xsl:value-of select="Price"/>
								</td>
								<td>
									<xsl:value-of select="Method"/>
								</td>
								<td>
									<xsl:value-of select="SellerG"/>
								</td>
								<td>
									<xsl:value-of select="Date"/>
								</td>
								<td>
									<xsl:value-of select="Postcode"/>
								</td>
								<td>
									<xsl:value-of select="Regionname"/>
								</td>
								<td>
									<xsl:value-of select="Propertycount"/>
								</td>
								<td>
									<xsl:value-of select="Distance"/>
								</td>
								<td>
									<xsl:value-of select="CouncilArea"/>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<ul>
					<h2>Sorted based on Number of Rooms</h2>
					<h2>Type of house(h, u, t) is expanded</h2>
					<h2>Coloured based on distance value</h2>
					<h2>Colour palatte</h2>
					<span style="background-color:#ac123c; color: white; padding:10px">Distance &lt; 11 </span>
					<span style="background-color:#ff12ff; color: white; padding:10px">Distance &lt; 21 </span>
					<span style="background-color:#fc9200; color: white; padding:10px">Distance &gt;= 21 </span>
				</ul>
				<table border="1">
					<tr bgcolor="#19AAFF">
						<th>Suburb</th>
						<th>Address</th>
						<th>Rooms</th>
						<th>Type</th>
						<th>Price</th>
						<th>Method</th>
						<th>SellerG</th>
						<th>Date</th>
						<th>Postcode</th>
						<th>Regionname</th>
						<th>Propertycount</th>
						<th>Distance</th>
						<th>CouncilArea</th>
					</tr>
					<xsl:for-each select="root/row">
						<xsl:sort select="Rooms"/>
						<tr>
							<td>
								<xsl:value-of select="Suburb"/>
							</td>
							<td>
								<xsl:value-of select="Address"/>
							</td>
							<td>
								<xsl:value-of select="Rooms"/>
							</td>
							<xsl:choose>
								<xsl:when test="Type = 'h'">
									<td>Villa</td>
								</xsl:when>
								<xsl:when test="Type = 'u'">
									<td>Duplex</td>
								</xsl:when>
								<xsl:otherwise>
									<td>Town House</td>
								</xsl:otherwise>
							</xsl:choose>
							<td>
								<xsl:value-of select="Price"/>
							</td>
							<td>
								<xsl:value-of select="Method"/>
							</td>
							<td>
								<xsl:value-of select="SellerG"/>
							</td>
							<td>
								<xsl:value-of select="Date"/>
							</td>
							<td>
								<xsl:value-of select="Postcode"/>
							</td>
							<td>
								<xsl:value-of select="Regionname"/>
							</td>
							<td>
								<xsl:value-of select="Propertycount"/>
							</td>
							<xsl:choose>
								<xsl:when test="Distance &lt; 11">
									<td bgcolor="#ac123c">
										<xsl:value-of select="Distance"/>
									</td>
								</xsl:when>
								<xsl:when test="Distance &lt; 21">
									<td bgcolor="#ff12ff">
										<xsl:value-of select="Distance"/>
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td bgcolor="#fc9200">
										<xsl:value-of select="Distance"/>
									</td>
								</xsl:otherwise>
							</xsl:choose>
							<td>
								<xsl:value-of select="CouncilArea"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>