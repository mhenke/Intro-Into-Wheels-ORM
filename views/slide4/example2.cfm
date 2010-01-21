<cfoutput>
<pre><span style='color: Teal; background-color: '>  1</span>&lt;cfparam name=<span style=' color: Maroon;'>"params.key"</span> <span style=' color: Blue;'>default</span>=<span style=' color: Maroon;'>"0"</span> /&gt;
<span style='color: Teal; background-color: '>  2</span>&lt;cfset author = model(<span style=' color: Maroon;'>"author"</span>).findByKey(<span style=' color: Blue;'>params</span>.key)&gt;
<span style='color: Teal; background-color: '>  3</span>
<span style='color: Teal; background-color: '>  4</span>&lt;cfif NOT IsObject(author)&gt;
<span style='color: Teal; background-color: '>  5</span>    &lt;cfset flashInsert(message=<span style=' color: Maroon;'>"Author #params.key# was not found"</span>)&gt;
<span style='color: Teal; background-color: '>  6</span>&lt;/cfif&gt;
<span style='color: Teal; background-color: '>  7</span>
<span style='color: Teal; background-color: '>  8</span>&lt;cfset authorLastName = <span style=' color: Maroon;'>"Doe"</span> /&gt;
<span style='color: Teal; background-color: '>  9</span>&lt;!---&lt;cfset authorLastName = <span style=' color: Maroon;'>"Henke"</span> /&gt;---&gt;
<span style='color: Teal; background-color: '> 10</span>
<span style='color: Teal; background-color: '> 11</span>&lt;!--- part <span style=' color: Maroon;'>2</span> ---&gt;
<span style='color: Teal; background-color: '> 12</span>&lt;cfset author2 = model(<span style=' color: Maroon;'>"author"</span>).findOne(order=<span style=' color: Maroon;'>"id DESC"</span>)&gt;    
<span style='color: Teal; background-color: '> 13</span>
<span style='color: Teal; background-color: '> 14</span>&lt;!--- part <span style=' color: Maroon;'>3</span> ---&gt;
<span style='color: Teal; background-color: '> 15</span>&lt;cfset author3 = model(<span style=' color: Maroon;'>"author"</span>).findAll(select=<span style=' color: Maroon;'>"firstname"</span>,where=<span style=' color: Maroon;'>"lastname='#authorLastName#'"</span>,orderby=<span style=' color: Maroon;'>"firstname"</span>)&gt;</pre>

	<p>Part 1</p>
	<cfif flashKeyExists("message")>
		<p>#flash("message")#</p>
	<cfelse>
		<p>Hello, #author.firstName# #author.lastName#!</p>
	</cfif>
	
	<cfdump var="#author#">
	<br>
	
	<p>Part 2</p>
	<p> Getting the most recent author</p>
	<p>#author2.firstName# #author2.LastName#</p>
	<cfdump var="#author2#">
	<br>
	 
	<p>Part 3</p>
	<p>All The Authors with Last Name #authorLastName#</p>
	<cfloop query="author3">
		<p>#author3.firstName#</p>
	</cfloop>
	
	<cfdump var="#author3#">

</cfoutput>