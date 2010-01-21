<cfcomponent extends="Model">
	<cffunction name="init">
	 	<cfset hasOne("profile")>
        <cfset validatesPresenceOf(properties="lastName,email,age,password")>
		<cfset validatesLengthOf(property="firstName", maximum=50, allowBlank=true)>
		<cfset validatesLengthOf(property="lastName", maximum=50)>
        <cfset validatesNumericalityOf(property="age", onlyInteger=true)>
        <cfset validatesUniquenessOf(property="email", message="Email address is already in use in another account", when="onCreate")>
        <cfset validatesConfirmationOf(property="password")>
        <cfset validate(method="validateEmailFormat")>
    </cffunction>
	
	<cffunction name="validateEmailFormat" access="private">
    <cfif not IsValid("email", this.email)>
        <cfset addError(property="email", message="Email address is not in a valid format.")>
    </cfif>
	</cffunction>
</cfcomponent>