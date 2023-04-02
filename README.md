T-WEB-600 E-Commerce API with Symfony and Ansible Deployment
Overview
The goal of this project is to create a generic e-commerce API using the Symfony framework and automate its deployment on a Debian 11 (Bullseye) server using Ansible.

Project Structure
Create an app folder at the root of your repository to store the back-end (Symfony) project.
Use Symfony 5.4 for the back-end API.
For the front-end, use any preferred libraries or frameworks (this step is optional).
Use Ansible for deployment on a fresh Debian 11 (Bullseye) server.
API Implementation
Follow REST principles and use JSON format for data representation.
Use appropriate HTTP verbs (GET, POST, PUT, DELETE) and response codes.
Implement the API using the Symfony framework.
Endpoints
Users
/api/register - Register a new user
/api/login - Authenticate a user and retrieve the authentication token
/api/users (AUTHED) - Update and display current user information
Catalog
/api/products - Retrieve list of products, add a product (AUTHED), modify and delete a product (AUTHED)
/api/products/{productId} - Retrieve information on a specific product
/api/carts/{productId} (AUTHED) - Add or remove a product to/from the shopping cart
/api/carts (AUTHED) - State of the shopping cart (list of products in the cart)
/api/carts/validate (AUTHED) - Validate the cart (convert the cart to an order)
Orders
/api/orders