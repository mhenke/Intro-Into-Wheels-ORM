<cfcomponent extends="Controller">

	<cffunction name="init">
		<cfset filters("header")>
	</cffunction>
	
	<cffunction name="index">
		<cfset redirectTo(action="example1")>
	</cffunction>
	
	<cffunction name="example1">
		<cfset newUser = model("user").new()>
	</cffunction>

	<cffunction name="save">
        <!--- User model from form fields via params --->
        <cfset newUser = model("user").new(params.newUser)>
		
        <!--- Persist new user --->
        <cfif newUser.save()>
            <cfset redirectTo(action="success")>
        <!--- Handle errors --->
        <cfelse>
            <cfset renderPage(action="example1")>
        </cfif>
    </cffunction>
	
	<cffunction name="header">
		<cfset slide = "Object Validation" />
		<cfset quote = "Invincibility lies in the defence; the possibility of victory in the attack." />
		<cfset examples = "#linkTo(text="Example 1", action="example1")#" />
	</cffunction>
</cfcomponent>