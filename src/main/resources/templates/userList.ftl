<#import "parts/common.ftl" as c>

<@c.page>
<h5>List of users</h5>
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <#list users as user>
            <tr><td>${user.username}
                <td><#list user.roles as role>${role}<#sep>, </#list>
                <td><a href="/user/${user.id}">Edit
        </#list>
    </tbody>
</table>
</@c.page>