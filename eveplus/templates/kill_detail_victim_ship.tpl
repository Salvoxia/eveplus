<div class="kl-detail-vicpilot">
{cycle reset=true print=false name=ccl values="kb-detail-vicpilotbg,kb-detail-vicpilotbg"}
	<table class="kb-table">
		<col class="logo"/>
		<col class="attribute-name"/>
		<col class="attribute-data"/>
		<tr class="{cycle name="ccl"}">
			<td class="logo" rowspan="3"><img src="{$victimPortrait}" alt="victim"/> </td>
			<td>Victim:</td>
			<td><a href="{$victimURL}">{$victimName}</a></td>
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>Corp:</td>
			<td><a href="{$victimCorpURL}">{$victimCorpName}</a></td>
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>Alliance:</td>
			<td><a href="{$victimAllianceURL}">{$victimAllianceName}</a></td>
		</tr>
	</table>
</div>
<div class="kl-detail-vicship">
{cycle reset=true print=false name=ccl values="kb-detail-vicpilotbg,kb-detail-vicpilotbg"}
	<table class="kb-table">
		<col class="logo"/>
		<col class="attribute-name"/>
		<col class="attribute-data"/>
		<tr class="{cycle name="ccl"}" >
			<td class="logo" rowspan="3"><img src="{$victimShipImage}" alt="{$victimShipName}"/> </td>
			<td>Ship:</td>
			<td><a href="{$victimShipURL}">{$victimShipName}</a> ({$victimShipClassName})</td>
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>Location:</td>
			<td><a href="{$systemURL}">{$system}</a> ({$systemSecurity})</td>
		</tr>
		<tr class="{cycle name="ccl"}">
			<td>Date:</td>
			<td>{$timeStamp}</td>
		</tr>
	{if $showiskd}
		<tr class="{cycle name="ccl"}">
			<td colspan="2">&nbsp;&nbsp;&nbsp;ISK Loss at time of kill:</td>
			<td>{$totalLoss}</td>
		</tr>
		<tr class="totaldamagetaken">
			<td colspan="2">&nbsp;&nbsp;&nbsp;Total Damage Taken:</td>
			<td>{$victimDamageTaken|number_format}</td>
		</tr>
	{/if}
	</table>
</div>
