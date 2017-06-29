# graphql-express-hxe

# tested npm dependencies
- graphql ^0.10.3
- graphql-server-express ^0.9.0
- graphql-tools ^1.0.0

# usage
```haxe
import js.npm.Express; // haxe-js-kit
import js.npm.express.*; // haxe-js-kit
import graphql.server.Express.graphqlExpress;
import graphql.server.Express.graphiqlExpress;
import graphql.Tools.makeExecutableSchema;

class Main {
    public static function main() {
        var executableSchema = makeExecutableSchema({
            typeDefs: {
                type Query {
                    hello: String!
                }

                schema {
                    query: Query
                }
            },
            resolvers: {
                Query: {
                    hello: function() {
                        return 'world';
                    }
                }
            },
            printErrors: true,
        });

        var app = new Express();

        app.use('/graphql', graphqlExpress(function( req ) {
            return {
                schema: executableSchema,
                context: context,
            }
        }));

        app.use('/graphiql', graphiqlExpress({
            endpointURL: '/graphql',
        }));

        app.listen(3000, function() {
            trace('\o/');
        });
    }
}
```
