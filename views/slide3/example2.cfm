<pre><span style='color: Teal; background-color: '>  1</span> &lt;cfset authorClass = model(<span style=' color: Maroon;'>"author"</span>)&gt;
<span style='color: Teal; background-color: '>  2</span> &lt;cfset authorObject = authorClass.findByKey(<span style=' color: Maroon;'>4</span>)&gt;</pre>
<cfdump var="#authorObject#">