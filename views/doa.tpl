<html>
  <head>
    <meta http-equiv="Cache-control" content="no-cache" charset="utf-8">
    <link rel="stylesheet" type="text/css" href="static/style.css">
  </head>
  <body>
    <p class="header"><a href="/init">Configuration and Spectrum</a> | <a href="/sync">Sync</a> | <a href="/doa">DOA Estimation</a> | <a href="/pr">Passive Radar</a></p>
    <hr>

    <p><font size = "4"><a href="http://{{ip_addr}}:8081/compass.html">Compass</a></font></p>
    <hr>

    <h2>Antenna Configuration</h2>
    <form action="/doa" method="post">
            <input type="hidden" name="ant_config" value="ant_config" />

    	<p>Arrangement:
    	<select name = "ant_arrangement">
    		<option value="0" {{!'selected="selected"' if ant_arrangement_index == 0 else ""}}>ULA</option>
    		<option value="1" {{!'selected="selected"' if ant_arrangement_index == 1 else ""}}>UCA</option>
    	</select></p>

    	<!-- <p>Spacing [lambda]: <input type="number" value="{ {ant_spacing} }" step="0.0001" name="ant_spacing"/></p> -->
      <p>Spacing [meters]: <input type="number" value="{{ant_meters}}" step="0.0001" name="ant_spacing"/></p>


    	<input type="checkbox" name="en_doa" value="on" {{!'checked="checked"' if en_doa >= 1 else ""}}>Enable DOA<br>

    	<input type="checkbox" name="en_bartlett" value="on" {{!'checked="checked"' if en_bartlett >= 1 else ""}}>Bartlett<br>
    	<input type="checkbox" name="en_capon" value="on" {{!'checked="checked"' if en_capon >= 1 else ""}}>Capon<br>
    	<input type="checkbox" name="en_MEM" value="on" {{!'checked="checked"' if en_MEM >= 1 else ""}}>MEM<br>
    	<input type="checkbox" name="en_MUSIC" value="on" {{!'checked="checked"' if en_MUSIC >= 1 else ""}}>MUSIC<br>

    	<br>

    	<input type="checkbox" name="en_fbavg" value="on" {{!'checked="checked"' if en_fbavg >= 1 else ""}}>FB Average (Do not use with UCA)<br>

    	<p><input value="Update DOA" type="submit" /></p>
    </form>
    <hr>
    <iframe width=100% height=5% src="http://{{ip_addr}}:8080/stats"></iframe>
    <!--<script type="text/javascript" src="/static/refresh_image.js" charset="utf-8" style="float:right"></script>

    <body onload="JavaScript:init('/static/doa.jpg');">
    <canvas id="canvas"/>
    </body>-->

    <iframe width=100% height=100% src="http://{{ip_addr}}:8081/doa_graph.html"></iframe>
  </body>
</html>
