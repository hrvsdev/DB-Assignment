#### Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

In the diagram, the relationship from product to product category is one-to-many. The "product" table has a foreign key of "category_id" which reference to primary key "id" of "product_category". It means that product must have a category assigned to it. The "product_category" table does not have a foreign key refernence to "product_id", so it have can many prodcuts assigned to it.

#### How could you ensure that each product in the "Product" table has a valid category assigned to it?

We will use foreign key constraint to make sure that for each product, it must have a "category_id" which will refernece to "id" of "product_category". This will ensure that value of "category_id" must be present in "product_category" table "id".
