<cfcomponent extends="Controller">

	<cffunction name="init">
		<cfset filters("header")>
	</cffunction>
	
	<cffunction name="index">
		<cfset redirectTo(action="example1") />
	</cffunction>

	<cffunction name="example1">
		<!--- belongs to --->
		<cfset posts = model("post").findAll(include="author")>
	
		<!--- has many --->
		<cfset authors = model("author").findAll(include="posts")>
		
		<!--- has One --->
		<cfset users = model("user").findOne(include="profile")>
	</cffunction>
	
	<cffunction name="header">
		<cfset slide = "Associations" />
		<cfset quote = "If an enemy has alliances, the problem is grave and the enemy's position strong." />
		<cfset examples = "#linkTo(text="Example 1", action="example1")#" />
	</cffunction>
</cfcomponent>