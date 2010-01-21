<pre><span style='color: Teal; background-color: '>  1</span>         &lt;!--- part <span style=' color: Maroon;'>1</span> ---&gt;
<span style='color: Teal; background-color: '>  2</span>         &lt;cfset newAuthor = model(<span style=' color: Maroon;'>"author"</span>).<span style=' color: Blue;'>new</span>()&gt;
<span style='color: Teal; background-color: '>  3</span>         &lt;cfset newAuthor.firstName = <span style=' color: Maroon;'>"John"</span>&gt;
<span style='color: Teal; background-color: '>  4</span>         &lt;cfset newAuthor.lastName = <span style=' color: Maroon;'>"Doe"</span>&gt;
<span style='color: Teal; background-color: '>  5</span>         &lt;cfset newAuthor.save()&gt;
<span style='color: Teal; background-color: '>  6</span>         
<span style='color: Teal; background-color: '>  7</span>         &lt;!--- part <span style=' color: Maroon;'>2</span> ---&gt;
<span style='color: Teal; background-color: '>  8</span>         &lt;cfset <span style=' color: Blue;'>params</span>.newAuthor = StructNew()&gt;
<span style='color: Teal; background-color: '>  9</span>         &lt;cfset StructInsert(<span style=' color: Blue;'>params</span>.newAuthor, <span style=' color: Maroon;'>"firstname"</span>, <span style=' color: Maroon;'>"Jane"</span>)&gt;
<span style='color: Teal; background-color: '> 10</span>         &lt;cfset StructInsert(<span style=' color: Blue;'>params</span>.newAuthor, <span style=' color: Maroon;'>"lastname"</span>, <span style=' color: Maroon;'>"Done"</span>)&gt;
<span style='color: Teal; background-color: '> 11</span>         &lt;cfset newAuthor2 = model(<span style=' color: Maroon;'>"author"</span>).<span style=' color: Blue;'>new</span>(<span style=' color: Blue;'>params</span>.newAuthor)&gt;
<span style='color: Teal; background-color: '> 12</span>         &lt;cfset model(<span style=' color: Maroon;'>"author"</span>).create(<span style=' color: Blue;'>params</span>.newAuthor)&gt;
<span style='color: Teal; background-color: '> 13</span>         
<span style='color: Teal; background-color: '> 14</span>         &lt;!--- part <span style=' color: Maroon;'>3</span> ---&gt;
<span style='color: Teal; background-color: '> 15</span>         &lt;cfset newAuthor3 = model(<span style=' color: Maroon;'>"author"</span>).<span style=' color: Blue;'>new</span>()&gt;
<span style='color: Teal; background-color: '> 16</span>         &lt;cfset newAuthor3.firstName = <span style=' color: Maroon;'>"Joe"</span>&gt;
<span style='color: Teal; background-color: '> 17</span>         &lt;cfset newAuthor3.lastName = <span style=' color: Maroon;'>"Jones"</span>&gt;
<span style='color: Teal; background-color: '> 18</span>         &lt;cfset newAuthor3.save()&gt;
</pre>

<p>Part 1</p>
<cfdump var="#newAuthor#">

<p>Part 2</p>
<cfdump var="#params#">
<cfdump var="#newAuthor2#">

<p>Part 3</p>
<cfdump var="#newAuthor3#">
<br>
&lt;cfoutput&gt;#newAuthor3.id#&lt;/cfoutput&gt; <cfoutput>#newAuthor3.id#</cfoutput>