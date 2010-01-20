<cfcomponent extends="Controller">

	<cffunction name="init">
		<cfset filters("header")>
	</cffunction>
	
	<cffunction name="index">
		<cfset redirectTo(action="example1") />
	</cffunction>

	<cffunction name="example1">
		
		<!--- part 1 --->
		<cfset newAuthor = model("author").new()>
		<cfset newAuthor.firstName = "John">
		<cfset newAuthor.lastName = "Doe">
		
		<!---<cfset newAuthor.save()>--->
		
		<!--- part 2 
		<cfset newAuthor = model("author").new(params.newAuthor)>
		<cfset model("author").create(params.newAuthor)>
		--->
		
		<!--- part 3
		<cfset newAuthor = model("author").new()>
		<cfset newAuthor.firstName = "Joe">
		<cfset newAuthor.lastName = "Jones">
		<cfset newAuthor.save()>
		<cfoutput>#newAuthor.id#</cfoutput>
		 --->
		 
	</cffunction>
	
	<cffunction name="example2">
		<cfparam name="params.key" default="0" />
		<cfset author = model("author").findByKey(params.key)>
		
		<cfif NOT IsObject(author)>
			<cfset flashInsert(message="Author #params.key# was not found")>
		</cfif>
		
		<cfset authorLastName = "THezu" />
		<!---<cfset authorLastName = "Henke" />--->
		
		<!--- part 2 --->
		<cfset aTzu = model("author").findOne(lastname="#authorLastName#")>
		
		<!--- part 3
		<cfset allTzu = model("author").findAll(select="firstname",where="lastname='#authorLastName#'",orderby="firstname")>
		 --->
		
	</cffunction>
	
	<cffunction name="example3">
		<cfset post = model("post").findByKey(33)>
		<cfset post.title = "New version of Wheels just released">
		<cfset post.save()>
		
		<!--- part 2
		<cfset post = model("post").findByKey(33)>
		<cfset post.update(title="New version of Wheels just released")>
		--->
		
		<!--- part 3
		<cfset post = model("post").findByKey(params.key)>
		<cfset post.update(params.post)>
		--->
		
		<!--- part 4
		<cfset result = model("post").updateByKey(33, params.post)>
		--->
		
		<!--- part 5
		<cfset
			recordsReturned = model("post").updateAll(
			published=1, publishedAt=Now(), where="published=0"
			)
			>
		--->
	</cffunction>
	
	<cffunction name="example4">
		<cfset aPost = model("post").findByKey(33)>
		<cfset aPost.delete()>
		
		<!--- part 2
		deleteOne() example
		 --->
		 
		 <!--- part 3
		 deleteAll() example
		 --->
		 
	</cffunction>
	
	<cffunction name="header">
		<cfset slide = "Create, Read, Update, Delete" />
		<cfset quote = "What the ancients called a clever fighter is one who not only wins, but excels in winning with ease." />
		<cfset examples = "#linkTo(text="Example 1", action="example1")# #linkTo(text="Example 2", action="example2")# #linkTo(text="Example 3", action="example3")# #linkTo(text="Example 4", action="example4")#" />
	</cffunction>
</cfcomponent>