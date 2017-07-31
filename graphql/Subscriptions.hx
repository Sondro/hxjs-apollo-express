package graphql;

typedef FilterFn = Any -> Any -> Any -> Any -> Bool;

@:jsRequire('graphql-subscriptions')
extern class Subscriptions {
    public static function withFilter( asyncIteratorFn: Any, filterFn: FilterFn ) : Any;
}

// graphql-subscriptions/dist/withfiler.d.ts
    // export declare type FilterFn = (rootValue?: any, args?: any, context?: any, info?: any) => boolean;
    // export declare type ResolverFn = (rootValue?: any, args?: any, context?: any, info?: any) => AsyncIterator<any>;
    // export declare const withFilter: (asyncIteratorFn: () => AsyncIterator<any>, filterFn: FilterFn) => Function;
