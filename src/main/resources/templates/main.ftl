<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<h4>Add new message, please!</h4>
<div>
    <@l.logout/>
    <span><a href="/user">User List</a></span>
</div>
<div>
    <form method="post" action="/main" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Введите текст"/>
        <input type="text" name="tag" placeholder="Тэг"/>
        <input type="file" name="file" />
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Добавить сообщение</button>
    </form>
</div>
<br>

<div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter!}"/>
        <button type="submit">Найти</button>
    </form>
</div>
<br>

<div><h4> Список сообщений</h4></div>

<#--<table border=1>-->
    <#list messages as message>
        <#--<tr>-->
        <div>
            <b>${message.id}
            <span>${message.text}
            <i>${message.tag}
            <strong>${message.authorName}
        </div>
        <#--</tr>-->
        <#if message.filename??> <#--  ??- convert to boolean  -->
            <div>
                <img src="/img/${message.filename}">
            </div>
        </#if>

    <#else> No messages
    </#list>
<#--</table>-->

</@c.page>