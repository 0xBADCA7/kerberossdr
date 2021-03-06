<html>
<head>
  <meta content="width=device-width, initial-scale=1" name="viewport" />
  <meta http-equiv="Cache-control" content="no-cache" charset="utf-8">
  <link rel="stylesheet" type="text/css" href="static/style.css">
</head>
<body>
<p class="header"><a class="header_init" href="/init">Configuration and Spectrum</a> | <a class="header_sync" href="/sync">Sync</a> |
  <a class="header_doa" href="/doa">DOA Estimation</a> | <a class="header_pr" href="/pr">Passive Radar</a>
</p>
<hr>

<h2 id="rx_sync_title">Receiver Synchronization</h2>
<form action="/sync" method="post">
        <input type="hidden" name="enable_all_sync" value="enable_all_sync" />
    <p><input id="set_cal_all" type="submit" value="{{!"Disable" if en_sync >= 1 or en_noise >= 1 else "Enable"}} Noise Source & Sync Display" /></p>
</form>

<form action="/sync" method="post">
        <input type="hidden" name="update_sync" value="update_sync" />

	<input type="checkbox" name="en_sync" value="on" {{!'checked="checked"' if en_sync >= 1 else ""}}>Enable Sync Display<br>
	<input type="checkbox" name="en_noise" value="on" {{!'checked="checked"' if en_noise >= 1 else ""}}>Noise Source ON/OFF<br>

	<p><input value="Update" type="submit" /></p>
</form>
<hr>

<form action="/sync" method="post">
        <input type="hidden" name="del_hist" value="del_hist" />
	<p class="cal_buttons"><input value="Delete History" type="submit" /></p>
</form>

<form action="/sync" method="post">
        <input type="hidden" name="samp_sync" value="samp_sync" />
	<p class="cal_buttons"><input value="Sample Sync" type="submit" /></p>
</form>

<form action="/sync" method="post">
        <input type="hidden" name="cal_iq" value="cal_iq" />
	<p class="cal_buttons"><input value="Calibrate IQ" type="submit" /></p>
</form>
<hr>
<iframe width=100% height=5% src="http://{{ip_addr}}:8080/stats"></iframe>
<!--<script type="text/javascript" src="/static/refresh_image.js" charset="utf-8" style="float:right"></script>

<body onload="JavaScript:init('/static/sync.jpg');">
<canvas id="canvas"/>
</body>-->

<iframe width=100% height=100% src="http://{{ip_addr}}:8081/sync_graph.html"></iframe>

</body>
</html>
