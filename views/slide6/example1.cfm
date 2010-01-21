<pre><span style='color: Teal; background-color: '>  1</span>         &lt;!--- belongs to ---&gt;
<span style='color: Teal; background-color: '>  2</span>         &lt;cfset posts = model(<span style=' color: Maroon;'>"post"</span>).findAll(include=<span style=' color: Maroon;'>"author"</span>)&gt;
<span style='color: Teal; background-color: '>  3</span>     
<span style='color: Teal; background-color: '>  4</span>         &lt;!--- has many ---&gt;
<span style='color: Teal; background-color: '>  5</span>         &lt;cfset authors = model(<span style=' color: Maroon;'>"author"</span>).findAll(include=<span style=' color: Maroon;'>"posts"</span>)&gt;
<span style='color: Teal; background-color: '>  6</span>         
<span style='color: Teal; background-color: '>  7</span>         &lt;!--- has One ---&gt;
<span style='color: Teal; background-color: '>  8</span>         &lt;cfset users = model(<span style=' color: Maroon;'>"user"</span>).findOne(include=<span style=' color: Maroon;'>"profile"</span>)&gt;</pre>

&lt;!--- belongs to ---&gt;
<cfdump var="#posts#">
<br>
&lt;!--- has many ---&gt;
<cfdump var="#authors#">
<br>
&lt;!--- has One ---&gt;
<cfdump var="#users#">