<cfcomponent extends="Model">

    <cffunction name="init">
    	<cfset belongsTo("author")>
      <!--- <cfset belongsTo(name="author", foreignKey="post_author_id")>  --->
    </cffunction>

</cfcomponent>