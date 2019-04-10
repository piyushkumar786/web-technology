<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">

<xsl:template match="/">

<html>
<body>

<h1>Student Data</h1>

<table border="1">
<tr>
	<th>Student Name</th>
	<th>Roll Number</th>
	<th>Department</th>
	<th>Address</th>
	<th>Contact</th>
	<th>Birth Date</th>
	<th>Gender</th>
	
</tr>

<xsl:for-each select="college_data/student">
<tr>
	<td><xsl:value-of select="name"/></td>
	<td><xsl:value-of select="roll"/></td>
	<td><xsl:value-of select="dept"/></td>
	<td><xsl:value-of select="address"/></td>
	<td><xsl:value-of select="contact"/></td>
	<td><xsl:value-of select="BDay"/></td>
	<td><xsl:value-of select="gender"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>