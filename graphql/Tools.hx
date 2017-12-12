package graphql;

typedef Opts = {
    typeDefs: Dynamic,
    resolvers: Dynamic,
    ?printErrors: Bool,
}

@:jsRequire('graphql-tools')
extern class Tools {
    public static function makeExecutableSchema( opts: Opts ) : Dynamic;
}
