<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<h5>Login page</h5>

<@l.login "/login"/>
<a href="/registration">Add new user</a>
</@c.page>