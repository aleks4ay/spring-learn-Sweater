<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<h4>Add new message, please!</h4>
    <@l.logout/>


        <div>
            <form method="post" action="/main">
                <input type="text" name="text" placeholder="Введите текст"/>
                <input type="text" name="tag" placeholder="Тэг"/>
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

        <table border=1>
        <#list messages as message>
        <tr><td><b>${message.id}<td><span>${message.text}<td><i>${message.tag}<td><strong>${message.authorName}
        <#else> No messages
        </#list>
        </table>

</@c.page>