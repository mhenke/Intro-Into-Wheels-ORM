<cfcomponent extends="Model">

    <cffunction name="init">
        <cfset hasOne("profile")>
    </cffunction>

<!---
	<cffunction name="init">
	 	<cfset hasOne("profile")>
        <cfset validatesPresenceOf(properties="firstName,lastName,email,age,password")>
        <cfset validatesLengthOf(properties="firstName,lastName", maximum=50)>
        <cfset validatesUniquenessOf(property="email")>
        <cfset validatesNumericalityOf(property="age", onlyInteger=true)>
        <cfset validatesConfirmationOf(property="password")>
    </cffunction>
--->
</cfcomponent>