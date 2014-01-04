<div class="fieldcontain ${hasErrors(bean: publicationInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="publication.name.label" default="Name"/>

    </label>
    <g:textField name="name" value="${publicationInstance?.name}"/>
</div>

