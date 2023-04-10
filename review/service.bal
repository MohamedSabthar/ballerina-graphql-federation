import ballerina/graphql;
import ballerina/uuid;
import ballerina/graphql.subgraph;

@subgraph:Subgraph
service on new graphql:Listener(4002) {
    resource function get info() returns string {
        return "Review service";
    }

    remote function addReview(ReviewInput reviewInput) returns Review|error {
        var filterdProducts = products.filter(product => product.id == reviewInput.productId);
        if (filterdProducts.length() == 0) {
            return error("No product found for the given product id");
        }
        Review[] reviews = filterdProducts[0].reviews;
        Review review = {...reviewInput, id: uuid:createType1AsString()};
        reviews.push(review);
        return review;
    }
}
