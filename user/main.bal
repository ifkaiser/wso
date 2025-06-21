import ballerina/http;

listener http:Listener main = new (port = 9090, timeout = http:DEFAULT_LISTENER_TIMEOUT);

service /api on main {
    resource function get data() returns error|json|http:InternalServerError {
        do {
            return "User";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    resource function get data/[string dataId]() returns error|json|http:InternalServerError {
        do {
            json response = check httpClient->get("/countries");
            return response;
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
