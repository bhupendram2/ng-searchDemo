<div ng-app="myApp">
    <div ng-controller="appController">
        <div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'address', 'error')} ">
            <label for="address">
                <g:message code="author.address.label" default="Address"/>
            </label>
            <g:textField name="address" ng-model="name"
                         value="${authorInstance?.address}"
                         y-search-grid=""
                         y-search-domain="Author"
                         y-search-query="from Author p where p.name like '%{{name}}%'"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'book', 'error')} ">
            <label for="book">
                <g:message code="author.book.label" default="Book"/>
            </label>

            <ul class="one-to-many">
                <g:each in="${authorInstance?.book ?}" var="b">
                    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
                </g:each>
                <li class="add">
                    <g:link controller="book" action="create"
                            params="['author.id': authorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
                </li>
            </ul>

        </div>

        <div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'name', 'error')} ">
            <label for="name">
                <g:message code="author.name.label" default="Name"/>

            </label>
            <g:textField name="name" value="${authorInstance?.name}"/>
        </div>

    </div>
</div>

