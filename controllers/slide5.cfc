<cfcomponent extends="Controller">

	<cffunction name="init">
		<cfset filters("header")>
	</cffunction>
	
	<cffunction name="index">
		<cfset redirectTo(action="example1") />
	</cffunction>

	<cffunction name="example1">
		<cfset author = model("author").findOneByLastName("Henke")>
	
		<!--- part 2 --->
		<cfset user = model("user2").findOneByEmailAndPassword("henke.mike@gmail.com,password")>
		
		<!--- part 3 --->
		<cfset
			users = model("user2").findAllByAgeAndFirstName(
			values="33,Mike", order="lastname"
			)
			>
	</cffunction>
	
	<cffunction name="header">
		<cfset slide = "Dynamic Finders" />
		<cfset quote = "All warfare is based on deception." />
		<cfset examples = "#linkTo(text="Example 1", action="example1")#" />
	</cffunction>
</cfcomponent>