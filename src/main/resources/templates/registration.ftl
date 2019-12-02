<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<h5>Registration page</h5>
<h5>Add new user</h5>
<b>${info!}</b>

<@l.login "/registration" />
<a href="/main">Main page</a>
</@c.page>
