import ballerina/http;

listener http:Listener main = new (port = 8080, timeout = http:DEFAULT_LISTENER_TIMEOUT);

service /api on main {
    resource function get user() returns error|json|http:InternalServerError {
        do {
            return "User";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
