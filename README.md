# hxjs-apollo-express

# tested npm dependencies
- graphql ^0.10.3
- graphql-server-express ^0.9.0
- graphql-tools ^1.0.0

# usage
```haxe
import js.npm.Express; // https://github.com/clemos/haxe-js-kit.git
import js.npm.express.*; // https://github.com/clemos/haxe-js-kit.git
import apollo.Express.graphqlExpress;
import apollo.Express.graphiqlExpress;
import GraphQLTools.makeExecutableSchema;

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
            trace('\\o/');
        });
    }
}
```
