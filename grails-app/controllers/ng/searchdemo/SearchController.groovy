package ng.searchdemo

class SearchController {

    def grailsApplication;



    def index() {

/*    action: "index"
    domain: "author"
    cls: "domainClass"
    controller: "search"
    query: "from author p"*/
        def query = params.query, domain = params.domain
        Class clazz = grailsApplication.getDomainClass(domain).clazz
        def result = grailsApplication.getDomainClass(domain).clazz.findAll(query);
        //render '{a:1}'
        render(contentType: "application/json") {
            //book(title: b.title, author: b.author)
            [params: params, data: result]
        }
    }
}
