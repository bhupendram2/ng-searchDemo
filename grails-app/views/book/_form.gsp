<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'ISBN', 'error')} ">
    <label for="ISBN">
        <g:message code="book.ISBN.label" default="ISBN"/>

    </label>
    <g:textField name="ISBN" value="${bookInstance?.ISBN}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
    <label for="author">
        <g:message code="book.author.label" default="Author"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="author" name="author.id" from="${Author.list()}" optionKey="id" required=""
              value="${bookInstance?.author?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="book.title.label" default="Title"/>

    </label>
    <g:textField name="title" value="${bookInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'year', 'error')} ">
    <label for="year">
        <g:message code="book.year.label" default="Year"/>

    </label>
    <g:textField name="year" value="${bookInstance?.year}"/>
</div>

