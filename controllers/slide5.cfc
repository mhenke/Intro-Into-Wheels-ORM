<cfcomponent extends="Controller">

	<cffunction name="init">
		<cfset filters("header")>
	</cffunction>
	
	<cffunction name="index">
		<cfset redirectTo(action="example1") />
	</cffunction>

	<cffunction name="example1">
		<cfset me = model("author").findOneByLastName("Henke")>
	</cffunction>
	
	<cffunction name="example2">
		<cfset me = model("user").findOneByUserNameAndPassword("bob,pass")>
	</cffunction>
		
	<cffunction name="example3">
		<cfset
			users = model("user").findAllByCityAndState(
			values="Buffalo,NY", order="name", page=3
			)
			>
	</cffunction>
	
	<cffunction name="header">
		<cfset slide = "Dynamic Finders" />
		<cfset quote = "All warfare is based on deception." />
		<cfset examples = "#linkTo(text="Example 1", action="example1")# #linkTo(text="Example 2", action="example2")# #linkTo(text="Example 3", action="example3")#" />
	</cffunction>
</cfcomponent>