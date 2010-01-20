<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<html>
	<body>

	<H1>Wheels Object Relational Mapping</H1>
	<H2 id="slide">#slide#</H2>
	<H3 id="quote">#quote#</H3>
	<p>#examples#</p>

	#contentForLayout()#
	
	#includePartial("/shared/slides")#
	</body>
</html>
</cfoutput>