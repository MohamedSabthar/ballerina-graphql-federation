import ballerina/graphql.subgraph;

function resolveProduct(subgraph:Representation representation) returns Product|error? {
    string id = check representation["id"].ensureType();
    return products.hasKey(id) ? products.get(id) : ();
}
