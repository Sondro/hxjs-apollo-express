package graphql.subscriptions;

@:jsRequire('graphql-subscriptions', 'PubSub')
extern class PubSub {
    public function new();
    public function publish( triggerName: String, payload: Any ) : Bool;
    public function subscribe( triggerName: String, onMessage: Any/*some callback*/ ) : js.Promise<Int>;
}

// graphql-subscriptions/dist/pubsub.d.ts
/// <reference types="node" />
// import { EventEmitter } from 'events';
// import { PubSubEngine } from './pubsub-engine';
// export declare class PubSub implements PubSubEngine {
//     protected ee: EventEmitter;
//     private subscriptions;
//     private subIdCounter;
//     constructor();
//     publish(triggerName: string, payload: any): boolean;
//     subscribe(triggerName: string, onMessage: Function): Promise<number>;
//     unsubscribe(subId: number): void;
//     asyncIterator<T>(triggers: string | string[]): AsyncIterator<T>;
// }
