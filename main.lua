-- GET request
internet.request("http://httpbin.org/ip")

-- POST request
internet.request(
    "http://httpbin.org/post",
    "My POST data",
    {
    	["User-Agent"] = "Mozilla/5.0 (Macintosh; Intel Mac OS X x.y; rv:42.0) Gecko/20100101 Firefox/42.0"
    },
)

-- HEAD request
internet.request(
    "https://httpbin.org/headers",
    nil,
    nil,
    "HEAD"
)
