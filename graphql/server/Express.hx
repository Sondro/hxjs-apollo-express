package graphql.server;

@:jsRequire('graphql-server-express')
extern class Express {
    public static function graphqlExpress( a: Dynamic ) : Dynamic;
    public static function graphiqlExpress( a: Dynamic ) : Dynamic;
}
