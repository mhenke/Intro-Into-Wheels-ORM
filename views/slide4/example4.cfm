<pre><span style='color: Teal; background-color: '>  1</span> &lt;cfset aPost = model(<span style=' color: Maroon;'>"post"</span>).findByKey(<span style=' color: Maroon;'>5</span>)&gt;
<span style='color: Teal; background-color: '>  2</span> &lt;cfif isObject(aPost)&gt;
<span style='color: Teal; background-color: '>  3</span>     &lt;cfset aPost.delete()&gt;
<span style='color: Teal; background-color: '>  4</span> &lt;/cfif&gt;</pre>
<cfdump var="#aPost#">