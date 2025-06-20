import ballerina/http;

listener http:Listener main = new (port = 9090, timeout = http:DEFAULT_LISTENER_TIMEOUT);

service /api on main {
    resource function get users() returns error|json|http:InternalServerError {
        do {
            return "User";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    resource function get users/[string userId]() returns error|json|http:InternalServerError {
        do {
            return "This is a user";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
