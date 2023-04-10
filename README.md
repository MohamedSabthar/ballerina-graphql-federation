A federation example written using Ballerina graphql

How to run:
1. Use Ballerina 2201.5.0 (Swan Lake Update 5)
2. Execute command `bal run product` to start the product service
3. Execute command `bal run review` to start the review service
4. Execute command `cd gateway && npm start` to start the gateway

Try the following queries and mutation:
1. View the reviews of a product:
```graphql
query Product($productId: String!) {
  product(id: $productId) {
    title
    reviews {
      comment
    }
  }
}
```

```
{
  "productId": "1"
}
```

2. Add a review to a product:
```graphql
mutation Mutation($reviewInput: ReviewInput!) {
  addReview(reviewInput: $reviewInput) {
    comment
  }
}
```

```
{
  "input": {
    "bookId": "1",
    "author": "hema22",
    "comment": "nice book"
  }
}
```

3. Again execute 1 to view the newly added reviews