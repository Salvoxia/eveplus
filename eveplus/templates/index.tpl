<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" dir="ltr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="description" content="EDK Killboard - {$config->get('cfg_kbtitle')}" />
	<meta name="keywords" content="EDK, killboard, {$config->get('cfg_kbtitle')}, {if $kb_owner}{$kb_owner}, {/if}Eve-Online, killmail" />
	<title>{$kb_title}</title>
	<link rel="stylesheet" type="text/css" href="{$theme_url}/{$style}.css" />
{$page_headerlines}
	<script type="text/javascript" src="{$kb_host}/themes/generic.js"></script>
<script language="javascript"> 
function toggle(ids) {
  var ele = document.getElementById(ids);
  if (ele.style.display == "block") {
    ele.style.display = "none"; 
    text.innerHTML = "show";
  } else {
     ele.style.display = "block";
     text.innerHTML = "hide";
  }
} 
</script>

<style type="text/css">
#ToggleTarget {
	display: none;
}
</style>

<script type="text/javascript">
function Toggle() {
	var el = document.getElementById("ToggleTarget");
	if (el.style.display == "block") {
		el.style.display = "none";
	}
	else {
		el.style.display = "block";
	}
}
</script>

</head>
<body {$on_load} style="height: 100%">
{$page_bodylines}
	<div id="popup"></div>
	<div id="stuff1"></div>
	<div id="stuff2"></div>
	<div id="stuff3"></div>
	<div id="stuff4"></div>

	<div align="center" id="popup" style="display:none;
		position:absolute;
		top:217px; width:99%;
		z-index:3;
		padding: 5px;">
	</div>												
<div id="repository">
<br>
<center>

{if $banner}
{if $bannerswf=='true'}
			<object type="application/x-shockwave-flash" data="{$kb_host}/banner/{$banner}">
				<param name="movie" value="myFlashMovie.swf" />
			</object>
{else}
		<a href="{if $banner_link}{$banner_link}{else}?a=home{/if}">
			<img src="{$kb_host}/banner/{$banner}" alt="Banner" {if $banner_x && $banner_y}width = "{$banner_x}" height="{$banner_y}"{/if} />
		</a>
{/if}

			
{/if}

</center>
<br>





<div id="contentkb">

  <section><div id="main_menu">

	<ul>{section name=item loop=$menu}<div class="navigation-section">
			<li><a class="link" href="{$menu[item].link}">{$menu[item].text}</a></li>
		</div>{/section}</ul>

<div style="float: right"><a id="displayText" href="javascript:void(0)" onclick="toggle('toggleText')">Post Killmail</a> </div>

</div>




<div id="toggleText" style="display: none">
 <section>
<h1>Post Killmail</h1>
<div id="post">
{if $error}
<div id="posterror">{$error}</div>
{else}
  {if $post_forbid && $post_crest_forbid}
    Posting kills is currently disabled!
  {else}
    {if !$post_crest_forbid}
      <b><u>Post CREST Link:</u></b>
      <p>Paste the CREST link from your kill report (Copy External Kill Link) into the box below.<br />
      Remember to post your losses as well.<br /></p>
      <br />
      <b>CREST-Link:</b>
      <form id="postform" name="postform" class="f_killmail" method="post" action="{$kb_host}/?a=post">
      <input type="text" name="crest_url" id="crest_url" class="f_killmail" size="100">
      {if !$isadmin && $crest_pw_needed}
        <br /><br /><b>Password:</b><br /><input id="password_crest" name="password_crest" type="password" />
      {/if}
	  <input id="submit_crest" name="submit_crest" type="submit" value="Process !" />
      </form>
      <br/><hr><br/>
    {/if}

    {if !$post_forbid}
      <b><u>Post Kill Mail:</u></b>
      <p>Paste the killmail from your EVEMail inbox into the box below. Make sure you post the <b>ENTIRE</b> mail.<br />
      Posting fake or otherwise edited mails is not allowed. All posts are logged.<br />
      Remember to post your losses as well.<br /></p>
      <br />
      <b>Killmail:</b><br />
      <form id="postform" name="postform" class="f_killmail" method="post" action="{$kb_host}/?a=post">
      <textarea name="killmail" id="killmail" class="f_killmail" cols="150" rows="24"></textarea>
      {if !$isadmin}
        <br /><br /><b>Password:</b><br /><input id="password" name="password" type="password" />
      {/if}
      <input id="submit" name="submit" type="submit" value="Process !" />
      </form>
    {/if}
  {/if}
{/if}
</div>
 </section><br>
</div>









     <section>



<headerkb>
              <h1>{$page_title}</h1>
            </headerkb>
							
{if $message}
		<div id="boardmessage">{$message}</div>
{/if}
		<div id="content">
{$content_html}
		</div>
{if $context_html}
		<div id="context">
{$context_html}
		</div>
{/if}
{if $profile}
		<div id="profile"><!-- profile -->{$profile_sql} queries{if $profile_sql_cached} (+{$profile_sql_cached} cached) {/if} SQL time {$sql_time}s, Total time {$profile_time}s<!-- /profile --></div>
{/if}

<div id="footerarea">
		
<br>
		<div class="counter"></div> <div class="footerbacktotop" style="float: right" alt="Back to Top"><a href="#top"><img src="{$theme_url}/img/arrow-up.png" title="Back to Top"></a></div>
		<br><div class="footerbacktotop2" style="float: left"><a href="http://evekb.org/forum/viewtopic.php?f=1033&t=18159">EVE+</a> theme by <a href="http://gate.eveonline.com/profile/vecati">Vecati</a></div>
	</div>
        </section>        </section>
</div>
</div>	
	</div><br>
</body>
</html>
