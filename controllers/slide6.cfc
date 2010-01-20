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
	</cffunction>
	
	<cffunction name="example2">
		<!--- has many --->
		<cfset authors = model("author").findAll(include="posts")>
	</cffunction>
	
	<cffunction name="example3">
		<!--- has One --->
		<cfset users = model("user").findOne(include="profile")>
	</cffunction>
	
	<cffunction name="header">
		<cfset slide = "Associations" />
		<cfset quote = "If an enemy has alliances, the problem is grave and the enemy's position strong." />
		<cfset examples = "#linkTo(text="Example 1", action="example1")# #linkTo(text="Example 2", action="example2")# #linkTo(text="Example 3", action="example3")#" />
	</cffunction>
</cfcomponent>