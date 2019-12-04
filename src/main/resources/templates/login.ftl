<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<b>${info!}</b>
<@l.login "/login" false/>

</@c.page>