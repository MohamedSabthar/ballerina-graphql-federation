import ballerina/uuid;

table<Product> key(id) products = table [
    {
        id: "1",
        reviews: [
            {id: uuid:createType1AsString(), rating: 4.5, comment: "Good product", author: "Jhon"},
            {id: uuid:createType1AsString(), rating: 3.5, comment: "Average product", author: "Alex"}
        ]
    },
    {
        id: "2",
        reviews: [
            {id: uuid:createType1AsString(), rating: 2.5, comment: "Bad product", author: "Kamal"},
            {id: uuid:createType1AsString(), rating: 4.5, comment: "Good product", author: "Aarshika"}
        ]
    },
    {
        id: "3",
        reviews: [
            {id: uuid:createType1AsString(), rating: 2.5, comment: "Bad product", author: "Kareem"}
        ]
    },
    {
        id: "4",
        reviews: [
            {id: uuid:createType1AsString(), rating: 1.5, comment: "Very bad product", author: "Karen"},
            {id: uuid:createType1AsString(), rating: 0.5, comment: "Worst product", author: "Pamala"},
            {id: uuid:createType1AsString(), rating: 5.0, comment: "Excellent product", author: "Priya"}
        ]
    },
    {
        id: "5",
        reviews: [
            {id: uuid:createType1AsString(), rating: 1.5, comment: "Very bad product", author: "Preethee"},
            {id: uuid:createType1AsString(), rating: 0.5, comment: "Worst product", author: "Charan"}
        ]
    },
    {
        id: "6",
        reviews: [
            {id: uuid:createType1AsString(), rating: 5.0, comment: "Excellent product", author: "Punsara"}
        ]
    },
    {
        id: "7",
        reviews: [
            {id: uuid:createType1AsString(), rating: 4.5, comment: "Good product", author: "Dilan"},
            {id: uuid:createType1AsString(), rating: 4.5, comment: "Good product", author: "Sabthar"},
            {id: uuid:createType1AsString(), rating: 3.5, comment: "Average product", author: "Dimuthu"}
        ]
    }
];
