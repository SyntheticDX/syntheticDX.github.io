<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<body>
		<h2>List of DXMP Clans</h2>
		<table border="1">
		  <tr bgcolor="#9acd32">
			<th>Tags</th>
			<th>Skill</th>
			<th>Clan Name</th>
			<th>Founders</th>
			<th>Websites</th>
			<th>Forums</th>
			<th>Gametypes</th>
			<th>Formed</th>
			<th>Died</th>
			<th>Returned</th>
			<th>Matches</th>
			<th>Members</th>
			<th>News</th>
			<th>Description</th>
		  </tr>
		  <xsl:for-each select="CLANLIST/CLAN">
		  <xsl:sort select="TAGS"/>
		  <xsl:sort select="EXPERIENCE"/>
		  <xsl:sort select="NAMES"/>
		  <xsl:sort select="FOUNDERS"/>
		  <xsl:sort select="WEBSITES"/>
		  <xsl:sort select="FORUMS"/>
		  <xsl:sort select="GAMETYPES"/>
		  <xsl:sort select="FORMED"/>
		  <xsl:sort select="DIED"/>
		  <xsl:sort select="REBOUNDS"/>
		  <xsl:sort select="MATCHES"/>
		  <xsl:sort select="MEMBERS"/>
		  <xsl:sort select="NEWS"/>
		  <xsl:sort select="DESCRIPTION"/>
			<xsl:if test="MEMBERS_COUNT 	&gt; 1">
			<tr>
			  <td><xsl:value-of select="TAGS"/></td>
			  <td><xsl:value-of select="EXPERIENCE"/></td>
			  <td><xsl:value-of select="NAMES"/></td>
			  <td><xsl:value-of select="FOUNDERS"/></td>
			  <td><xsl:value-of select="WEBSITES"/></td>
			  <td><xsl:value-of select="FORUMS"/></td>
			  <td><xsl:value-of select="GAMETYPES"/></td>
			  <td><xsl:value-of select="FORMED"/></td>
			  <td><xsl:value-of select="DIED"/></td>
			  <td><xsl:value-of select="REBOUNDS"/></td>
			  <td><xsl:value-of select="MATCHES"/></td>
			  <td><xsl:value-of select="MEMBERS"/></td>
			  <td><xsl:value-of select="NEWS"/></td>
			  <td><xsl:value-of select="DESCRIPTION"/></td>
			</tr>
			</xsl:if>
		  </xsl:for-each>
		</table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
