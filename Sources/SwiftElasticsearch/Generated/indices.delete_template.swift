extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/indices-templates.html
     * - parameter name: The name of the template
     * - parameter method: The http method used to execute the request
     */
    public static func indicesDeleteTemplate(name: String, method: HttpMethod = .DELETE) -> Request {
        assert(method == .DELETE)
        let url = "/_template/\(name)"
        return Request(method: method, url: url, body: nil)
    }
    
}