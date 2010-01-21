<pre><span style='color: Teal; background-color: '>  1</span>         &lt;cfset post = model(<span style=' color: Maroon;'>"post"</span>).findByKey(<span style=' color: Maroon;'>1</span>)&gt;
<span style='color: Teal; background-color: '>  2</span>         &lt;cfset post.title = <span style=' color: Maroon;'>"This is how to update with findbykey, update title, then save"</span>&gt;
<span style='color: Teal; background-color: '>  3</span>         &lt;cfset post.save()&gt;
<span style='color: Teal; background-color: '>  4</span>         
<span style='color: Teal; background-color: '>  5</span>         &lt;!--- part <span style=' color: Maroon;'>2</span> ---&gt;
<span style='color: Teal; background-color: '>  6</span>         &lt;cfset post2 = model(<span style=' color: Maroon;'>"post"</span>).findByKey(<span style=' color: Maroon;'>2</span>)&gt;
<span style='color: Teal; background-color: '>  7</span>         &lt;cfset post2.update(title=<span style=' color: Maroon;'>"This is how to update with findybykey then update"</span>)&gt;
<span style='color: Teal; background-color: '>  8</span>         
<span style='color: Teal; background-color: '>  9</span>         
<span style='color: Teal; background-color: '> 10</span>         &lt;!--- part <span style=' color: Maroon;'>3</span> ---&gt;
<span style='color: Teal; background-color: '> 11</span>         &lt;cfset <span style=' color: Blue;'>params</span>.key = <span style=' color: Maroon;'>3</span>&gt;
<span style='color: Teal; background-color: '> 12</span>         &lt;cfset <span style=' color: Blue;'>params</span>.post = StructNew()&gt;
<span style='color: Teal; background-color: '> 13</span>         &lt;cfset StructInsert(<span style=' color: Blue;'>params</span>.post, <span style=' color: Maroon;'>"title"</span>, <span style=' color: Maroon;'>"This is how to pass in a structure with a key into findbykey then update"</span>)&gt;
<span style='color: Teal; background-color: '> 14</span>         &lt;cfset post3 = model(<span style=' color: Maroon;'>"post"</span>).findByKey(<span style=' color: Blue;'>params</span>.key)&gt;
<span style='color: Teal; background-color: '> 15</span>         &lt;cfset post3.update(<span style=' color: Blue;'>params</span>.post)&gt;
<span style='color: Teal; background-color: '> 16</span>         
<span style='color: Teal; background-color: '> 17</span>         &lt;!--- part <span style=' color: Maroon;'>4</span> ---&gt;
<span style='color: Teal; background-color: '> 18</span>         &lt;cfset StructUpdate(<span style=' color: Blue;'>params</span>.post, <span style=' color: Maroon;'>"title"</span>, <span style=' color: Maroon;'>"This is how to pass in a structure with a key into updatebykey"</span>)&gt;
<span style='color: Teal; background-color: '> 19</span>         &lt;cfset result = model(<span style=' color: Maroon;'>"post"</span>).updateByKey(<span style=' color: Maroon;'>4</span>, <span style=' color: Blue;'>params</span>.post)&gt;</pre>
<p>Part 1</p>
<cfdump var="#post#">
<br>
<p>Part 2</p>
<cfdump var="#post2#">
<br>
<p>Part 3</p>
<cfdump var="#params#">
<cfdump var="#post3#">
<br>
<p>Part 4</p>
<cfdump var="#result#">