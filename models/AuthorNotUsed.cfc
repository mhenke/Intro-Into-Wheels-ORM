
<cfcomponent extends="Model">
	<cffunction name="init">
		<!---<cfset table("tbl_authors")>--->
		<cfset property(name="name", column="firstname")>
	</cffunction>
</cfcomponent>