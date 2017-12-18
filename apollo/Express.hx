package apollo;

import js.npm.express.Request;
import js.npm.express.Response;
import js.Promise;

typedef GraphQLOptions = {
    schema: Dynamic,//GraphQLSchema;
    // formatError?: Function;
    ?rootValue: Any,
    ?context: Any,
    // logFunction?: LogFunction;
    // formatParams?: Function;
    // validationRules?: Array<(context: ValidationContext) => any>;
    // formatResponse?: Function;
    // fieldResolver?: GraphQLFieldResolver<any, any>;
    // debug?: boolean;
    // tracing?: boolean;
    // cacheControl?: boolean;
}

typedef ExpressGraphQLOptionsFunction = Request -> Response -> Promise<GraphQLOptions>;

typedef ExpressHandler = Request -> Response -> Dynamic -> Void;

typedef GraphiQLData = {
    endpointURL: String,
    ?subscriptionsEndpoint: String,
    ?query: String,
    ?variables: Dynamic,
    ?operationName: String,
    ?result: Dynamic,
    ?passHeader: String,
    ?editorTheme: String,
    ?websocketConnectionParams: Dynamic,
}

// typedef ExpressGraphiQLOptionsFunction = Request -> GraphiQLData;//, Promise<GraphiQLData>>;

// TODO (DK) use apollo-server-express?
@:jsRequire('apollo-server-express')
extern class Express {
    // @:overload(function( opts: ExpressGraphQLOptionsFunction ) : Dynamic {})
    public static function graphqlExpress( opts: ExpressGraphQLOptionsFunction ) : ExpressHandler;

    public static function graphiqlExpress( opts: Dynamic ) : Dynamic; // /*Either<GraphiQLData,*/ ExpressGraphiQLOptionsFunction/*>*/ ) : Dynamic;
}
