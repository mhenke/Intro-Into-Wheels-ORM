<cfoutput>

<cfif flashKeyExists("message")>
	<p>#flash("message")#</p>
<cfelse>
	<p>Hello, #author.firstName# #author.lastName#!</p>
</cfif>


<cfdump var="#author#">

<!--- part 2  --->
<p>One Author with Last Name #authorLastName#</p>
<p>#aTzu.firstName# #aTzu.LastName#</p>

<cfdump var="#aTzu#">
 
<!--- part 3
<p>All The Authors with Last Name #authorLastName#</p>
<cfloop query="allTzu">
<p>#allTzu.firstName# #allTzu.lastName#</p>
</cfloop>

<cfdump var="#allTzu#">
--->
</cfoutput>