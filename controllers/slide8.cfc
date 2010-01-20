<cfcomponent extends="Controller">

	<cffunction name="init">
		<cfset filters("header")>
	</cffunction>
	
	<cffunction name="index">
		<cfset redirectTo(action="example1") />
	</cffunction>

	<cffunction name="example1">
		<cfset author = model("author")>
	</cffunction>
	
	<cffunction name="example2">
		<cfset authorClass = model("author")>
		<cfset authorObject = authorClass.findByKey(4)>
		<!--- <cfset authorObject.update(firstName="Joe")> --->
		<!--- <cfset authorObject.firstName = "Sun"> --->
		<!--- <cfset authorObject.Save() /> --->
	</cffunction>
	
	<cffunction name="header">
		<cfset slide = "Callbacks" />
		<cfset quote = "Opportunities multiply as they are seized." />
		<cfset examples = "#linkTo(text="Example 1", action="example1")# #linkTo(text="Example 2", action="example2")#" />
	</cffunction>
</cfcomponent>