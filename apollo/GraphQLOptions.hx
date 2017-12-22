package apollo;

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
