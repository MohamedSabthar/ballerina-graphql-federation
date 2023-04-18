import ballerina/graphql;
import ballerina/uuid;
import ballerina/graphql.subgraph;

@subgraph:Subgraph
service on new graphql:Listener(4002) {
    resource function get reviews(string productId) returns Review[]|error {
        if (!products.hasKey(productId)) {
            return error("No product found for the given product id");
        }
        return products.get(productId).reviews;
    }

    remote function addReview(ReviewInput reviewInput) returns Review|error {
        if (!products.hasKey(reviewInput.productId)) {
            return error("No product found for the given product id");
        }
        Review[] reviews = products.get(reviewInput.productId).reviews;
        Review review = {...reviewInput, id: uuid:createType1AsString()};
        reviews.push(review);
        return review;
    }
}
