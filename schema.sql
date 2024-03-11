CREATE TABLE product_category (
  id INT PRIMARY KEY,
  name VARCHAR NOT NULL,
  description TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE product (
  id INT PRIMARY KEY,
  name VARCHAR NOT NULL,
  description TEXT,
  sku VARCHAR NOT NULL,
  category_id INT REFERENCES product_category(id),
  inventory_id INT REFERENCES inventory(id),
  price DECIMAL(10,2) NOT NULL,
  discount_id INT REFERENCES discount(id),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE inventory (
  id INT PRIMARY KEY,
  quantity INT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE discount (
  id INT PRIMARY KEY,
  name VARCHAR NOT NULL,
  description TEXT,
  discount_percent DECIMAL(5,2) NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);
