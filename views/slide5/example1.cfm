<pre><span style='color: Teal; background-color: '>  1</span>         &lt;cfset author = model(<span style=' color: Maroon;'>"author"</span>).findOneByLastName(<span style=' color: Maroon;'>"Henke"</span>)&gt;
<span style='color: Teal; background-color: '>  2</span>     
<span style='color: Teal; background-color: '>  3</span>         &lt;!--- part <span style=' color: Maroon;'>2</span> ---&gt;
<span style='color: Teal; background-color: '>  4</span>         &lt;cfset user = model(<span style=' color: Maroon;'>"user"</span>).findOneByEmailAndPassword(<span style=' color: Maroon;'>"bob,pass"</span>)&gt;
<span style='color: Teal; background-color: '>  5</span>         
<span style='color: Teal; background-color: '>  6</span>         &lt;!--- part <span style=' color: Maroon;'>3</span> ---&gt;
<span style='color: Teal; background-color: '>  7</span>         &lt;cfset
<span style='color: Teal; background-color: '>  8</span>             users = model(<span style=' color: Maroon;'>"user"</span>).findAllByAgeAndFirstName(
<span style='color: Teal; background-color: '>  9</span>             values=<span style=' color: Maroon;'>"33,Mike"</span>, order=<span style=' color: Maroon;'>"lastname"</span>
<span style='color: Teal; background-color: '> 10</span>             )
<span style='color: Teal; background-color: '> 11</span>             &gt;</pre>

<p>Part 1</p>
<cfdump var="#author#">
<br>
<p>Part 2</p>
<cfdump var="#user#">
<br>
<p>Part 3</p>
<cfdump var="#users#">