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
		<cfset newAuthor.save()>
		
		<!--- part 2 --->
		<cfset params.newAuthor = StructNew()>
		<cfset StructInsert(params.newAuthor, "firstname", "Jane")>
		<cfset StructInsert(params.newAuthor, "lastname", "Done")>
		<cfset newAuthor2 = model("author").new(params.newAuthor)>
		<cfset model("author").create(params.newAuthor)>
		
		<!--- part 3 --->
		<cfset newAuthor3 = model("author").new()>
		<cfset newAuthor3.firstName = "Joe">
		<cfset newAuthor3.lastName = "Jones">
		<cfset newAuthor3.save()>
		<cfoutput>#newAuthor.id#</cfoutput>
		
		 
	</cffunction>
	
	<cffunction name="example2">
		<cfparam name="params.key" default="0" />
		<cfset author = model("author").findByKey(params.key)>
		
		<cfif NOT IsObject(author)>
			<cfset flashInsert(message="Author #params.key# was not found")>
		</cfif>
		
		<cfset authorLastName = "Doe" />
		<!---<cfset authorLastName = "Henke" />--->
		
		<!--- part 2 --->
		<cfset author2 = model("author").findOne(order="id DESC")>	
		
		<!--- part 3 --->
		<cfset author3 = model("author").findAll(select="firstname",where="lastname='#authorLastName#'",orderby="firstname")>
		
	</cffunction>
	
	<cffunction name="example3">
		
		<cfset post = model("post").findByKey(1)>
		<cfset post.title = "This is how to update with findbykey, update title, then save">
		<cfset post.save()>
		
		<!--- part 2 --->
		<cfset post2 = model("post").findByKey(2)>
		<cfset post2.update(title="This is how to update with findybykey then update")>
		
		
		<!--- part 3 --->
		<cfset params.key = 3>
		<cfset params.post = StructNew()>
		<cfset StructInsert(params.post, "title", "This is how to pass in a structure with a key into findbykey then update")>
		<cfset post3 = model("post").findByKey(params.key)>
		<cfset post3.update(params.post)>
		
		<!--- part 4 --->
		<cfset StructUpdate(params.post, "title", "This is how to pass in a structure with a key into updatebykey")>
		<cfset result = model("post").updateByKey(4, params.post)>
		
	</cffunction>
	
	<cffunction name="example4">
		<cfset aPost = model("post").findByKey(5)>
		<cfif isObject(aPost)>
			<cfset aPost.delete()>
		</cfif>
	</cffunction>
	
	<cffunction name="header">
		<cfset slide = "Create, Read, Update, Delete" />
		<cfset quote = "What the ancients called a clever fighter is one who not only wins, but excels in winning with ease." />
		<cfset examples = "#linkTo(text="Example 1", action="example1")# #linkTo(text="Example 2", action="example2")# #linkTo(text="Example 3", action="example3")# #linkTo(text="Example 4", action="example4")#" />
	</cffunction>
</cfcomponent>