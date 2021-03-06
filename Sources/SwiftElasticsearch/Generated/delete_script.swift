extension Request {

    /**
     * http://www.elastic.co/guide/en/elasticsearch/reference/master/modules-scripting.html
     * - parameter id: Script ID
     * - parameter lang: Script language
     * - parameter method: The http method used to execute the request
     */
    public static func deleteScript(lang: String, id: String, method: HttpMethod = .DELETE) -> Request {
        assert(method == .DELETE)
        let url = "/_scripts/\(lang)/\(id)"
        return Request(method: method, url: url, body: nil)
    }
    
}