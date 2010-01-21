<cfcomponent extends="Model">
	<!--- slide 6 example 3 --->
    <cffunction name="init">
    	<cfset table("users")>
		<!---<cfset property(name="name", column="firstname")>--->
        <cfset hasOne("profile")>
    </cffunction>
</cfcomponent>