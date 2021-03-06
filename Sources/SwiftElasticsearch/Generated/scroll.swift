extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func scroll(method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_search/scroll"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func scroll(method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_search/scroll"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
     * - parameter scrollId: The scroll ID
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func scroll(scrollId: String, method: HttpMethod = .GET, body: ElasticsearchBody?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_search/scroll/\(scrollId)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body?.asJson())
    }
    
    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/search-request-scroll.html
     * - parameter scrollId: The scroll ID
     * - parameter method: The http method used to execute the request
     * - parameter body: The body to be sent with the request
     */
    public static func scroll(scrollId: String, method: HttpMethod = .GET, body: [String : Any]?) -> Request {
        assert(method == .GET || method == .POST)
        let url = "/_search/scroll/\(scrollId)"
        return Request(method: (method == .GET ? .POST : method), url: url, body: body)
    }
    
}