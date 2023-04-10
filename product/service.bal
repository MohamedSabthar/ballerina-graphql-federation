import ballerina/graphql;
import ballerina/graphql.subgraph;

@subgraph:Subgraph
service on new graphql:Listener(4001) {
    resource function get product(string id) returns Product? {
        Product[] filteredProducts = products.filter(product => id == product.id);
        return filteredProducts.length() > 0 ? filteredProducts[0] : ();
    }

    resource function get products() returns Product[] {
        return products;
    }
}
