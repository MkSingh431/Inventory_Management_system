{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "markdown",
            "source": [
                "# **<mark>Inventory Management System</mark>**"
            ],
            "metadata": {
                "azdata_cell_guid": "8392d1a4-bca8-486e-98eb-bbf1c053cb7d"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "## Inventory Management System:\n",
                "\n",
                "This project involves creating a Simple  [<span class=\"google-anno-t\" style=\"color-scheme: initial !important; forced-color-adjust: initial !important; mask: initial !important; math-depth: initial !important; position: initial !important; text-size-adjust: initial !important; appearance: initial !important; color: inherit !important; direction: inherit !important; font-family: inherit !important; font-feature-settings: initial !important; font-kerning: initial !important; font-optical-sizing: initial !important; font-palette: initial !important; font-size: inherit !important; font-stretch: initial !important; font-style: inherit !important; font-synthesis: initial !important; font-variant: initial !important; font-variation-settings: initial !important; font-weight: inherit !important; text-orientation: inherit !important; text-rendering: initial !important; text-spacing-trim: initial !important; -webkit-font-smoothing: initial !important; -webkit-locale: initial !important; -webkit-text-orientation: initial !important; -webkit-writing-mode: initial !important; writing-mode: inherit !important; zoom: initial !important; accent-color: initial !important; place-content: initial !important; place-items: initial !important; place-self: initial !important; alignment-baseline: initial !important; animation-composition: initial !important; animation: initial !important; app-region: initial !important; aspect-ratio: initial !important; backdrop-filter: initial !important; backface-visibility: initial !important; background: initial !important; background-blend-mode: initial !important; baseline-shift: initial !important; baseline-source: initial !important; block-size: initial !important; border-block: initial !important; border: initial !important; border-radius: initial !important; border-collapse: initial !important; border-end-end-radius: initial !important; border-end-start-radius: initial !important; border-inline: initial !important; border-start-end-radius: initial !important; border-start-start-radius: initial !important; inset: initial !important; box-shadow: initial !important; box-sizing: initial !important; break-after: initial !important; break-before: initial !important; break-inside: initial !important; buffered-rendering: initial !important; caption-side: initial !important; caret-color: initial !important; clear: initial !important; clip: initial !important; clip-path: initial !important; clip-rule: initial !important; color-interpolation: initial !important; color-interpolation-filters: initial !important; color-rendering: initial !important; columns: initial !important; column-fill: initial !important; gap: initial !important; column-rule: initial !important; column-span: initial !important; contain: initial !important; contain-intrinsic-block-size: initial !important; contain-intrinsic-size: initial !important; contain-intrinsic-inline-size: initial !important; container: initial !important; content: initial !important; content-visibility: initial !important; counter-increment: initial !important; counter-reset: initial !important; counter-set: initial !important; cursor: inherit !important; cx: initial !important; cy: initial !important; d: initial !important; display: initial !important; dominant-baseline: initial !important; empty-cells: initial !important; field-sizing: initial !important; fill: initial !important; fill-opacity: initial !important; fill-rule: initial !important; filter: initial !important; flex: initial !important; flex-flow: initial !important; float: initial !important; flood-color: initial !important; flood-opacity: initial !important; grid: initial !important; grid-area: initial !important; height: initial !important; hyphenate-character: initial !important; hyphenate-limit-chars: initial !important; hyphens: initial !important; image-orientation: initial !important; image-rendering: initial !important; initial-letter: initial !important; inline-size: initial !important; inset-block: initial !important; inset-inline: initial !important; isolation: initial !important; letter-spacing: initial !important; lighting-color: initial !important; line-break: initial !important; line-height: initial !important; list-style: initial !important; margin-block: initial !important; margin: initial !important; margin-inline: initial !important; marker: initial !important; mask-type: initial !important; math-shift: initial !important; math-style: initial !important; max-block-size: initial !important; max-height: initial !important; max-inline-size: initial !important; max-width: initial !important; min-block-size: initial !important; min-height: initial !important; min-inline-size: initial !important; min-width: initial !important; mix-blend-mode: initial !important; object-fit: initial !important; object-position: initial !important; object-view-box: initial !important; offset: initial !important; opacity: initial !important; order: initial !important; orphans: initial !important; outline: initial !important; outline-offset: initial !important; overflow-anchor: initial !important; overflow-clip-margin: initial !important; overflow-wrap: initial !important; overflow: initial !important; overlay: initial !important; overscroll-behavior-block: initial !important; overscroll-behavior-inline: initial !important; overscroll-behavior: initial !important; padding-block: initial !important; padding: initial !important; padding-inline: initial !important; page: initial !important; page-orientation: initial !important; paint-order: initial !important; perspective: initial !important; perspective-origin: initial !important; pointer-events: initial !important; quotes: initial !important; r: initial !important; resize: initial !important; rotate: initial !important; ruby-position: initial !important; rx: initial !important; ry: initial !important; scale: initial !important; scroll-behavior: initial !important; scroll-margin-block: initial !important; scroll-margin: initial !important; scroll-margin-inline: initial !important; scroll-padding-block: initial !important; scroll-padding: initial !important; scroll-padding-inline: initial !important; scroll-snap-align: initial !important; scroll-snap-stop: initial !important; scroll-snap-type: initial !important; scroll-timeline: initial !important; scrollbar-color: initial !important; scrollbar-gutter: initial !important; scrollbar-width: initial !important; shape-image-threshold: initial !important; shape-margin: initial !important; shape-outside: initial !important; shape-rendering: initial !important; size: initial !important; speak: initial !important; stop-color: initial !important; stop-opacity: initial !important; stroke: initial !important; stroke-dasharray: initial !important; stroke-dashoffset: initial !important; stroke-linecap: initial !important; stroke-linejoin: initial !important; stroke-miterlimit: initial !important; stroke-opacity: initial !important; stroke-width: initial !important; tab-size: initial !important; table-layout: initial !important; text-align: inherit !important; text-align-last: initial !important; text-anchor: initial !important; text-combine-upright: initial !important; text-decoration-line: underline !important; text-decoration-style: dotted !important; text-decoration-skip-ink: initial !important; text-emphasis: initial !important; text-emphasis-position: initial !important; text-indent: initial !important; text-overflow: initial !important; text-shadow: initial !important; text-transform: initial !important; text-underline-offset: initial !important; text-underline-position: initial !important; white-space: initial !important; timeline-scope: initial !important; touch-action: initial !important; transform: initial !important; transform-box: initial !important; transform-origin: initial !important; transform-style: initial !important; transition: initial !important; translate: initial !important; user-select: initial !important; vector-effect: initial !important; vertical-align: initial !important; view-timeline: initial !important; view-transition-name: initial !important; visibility: inherit !important; border-spacing: initial !important; -webkit-box-align: initial !important; -webkit-box-decoration-break: initial !important; -webkit-box-direction: initial !important; -webkit-box-flex: initial !important; -webkit-box-ordinal-group: initial !important; -webkit-box-orient: initial !important; -webkit-box-pack: initial !important; -webkit-box-reflect: initial !important; -webkit-line-break: initial !important; -webkit-line-clamp: initial !important; -webkit-mask-box-image: initial !important; -webkit-rtl-ordering: initial !important; -webkit-ruby-position: initial !important; -webkit-tap-highlight-color: initial !important; -webkit-text-combine: initial !important; -webkit-text-decorations-in-effect: initial !important; -webkit-text-fill-color: unset !important; -webkit-text-security: initial !important; -webkit-text-stroke: initial !important; -webkit-user-drag: initial !important; widows: initial !important; width: initial !important; will-change: initial !important; word-break: initial !important; word-spacing: initial !important; x: initial !important; y: initial !important; z-index: initial !important;\">Inventory Management System</span>](https://www.w3resource.com/projects/sql/sql-projects-on-inventory-management-system.php#) using SQL, designed for beginners. It encompasses the creation of a database with essential tables for managing products, suppliers, inventory levels, and transactions. The system provides functionalities to add, update, and delete products, track stock levels, record sales transactions, and generate inventory reports."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "e9640bc1-9899-4f22-a0a7-803bba7966f9"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Creating the Database in MySQL or PostgreSQL:**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "d02a3d8f-4b54-4e67-a4ed-febe2d355880"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Create the database for the Inventory Management System\r\n",
                "CREATE DATABASE InventoryDB;\r\n",
                "use InventoryDB;\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "31f98890-5bab-4fa1-a2c3-f12ab6f7e040"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.002"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "error",
                    "ename": "",
                    "evalue": "1007 (HY000): Can't create database 'inventorydb'; database exists",
                    "traceback": []
                }
            ],
            "execution_count": 4
        },
        {
            "cell_type": "markdown",
            "source": [
                "Create the Tables:\n",
                "\n",
                "**Products Table:**\n",
                "\n",
                "This table will store information about each product, such as its name, price, and category.\n",
                "\n",
                "**Structure:**\n",
                "\n",
                "| Column Name | Data Type | Description |\n",
                "| --- | --- | --- |\n",
                "| product\\_id | INT | Unique identifier for each product (Primary Key) |\n",
                "| product\\_name | VARCHAR(255) | Name of the product |\n",
                "| price | DECIMAL(10, 2) | Price of the product |\n",
                "| category | VARCHAR(100) | Category to which the product belongs |"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "37c61986-5316-4088-8f3f-40334188b4a6"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Create the Products table\r\n",
                "CREATE TABLE Products (\r\n",
                "    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\r\n",
                "    product_name VARCHAR(255) NOT NULL,\r\n",
                "    price DECIMAL(10, 2) NOT NULL,\r\n",
                "    category VARCHAR(100)\r\n",
                ");\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "9ef53ef8-ce9e-40b6-ab3c-cc6dfa4d28e3"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.087"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 6
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Suppliers Table:**\n",
                "\n",
                "This table will store supplier details, including contact information.\n",
                "\n",
                "**Structure:**\n",
                "\n",
                "| Column Name | Data Type | Description |\n",
                "| --- | --- | --- |\n",
                "| supplier\\_id | INT | Unique identifier for each supplier (Primary Key) |\n",
                "| supplier\\_name | VARCHAR(255) | Name of the supplier |\n",
                "| contact\\_email | VARCHAR(255) | Email address of the supplier |\n",
                "| phone\\_number | VARCHAR(15) | Contact number of the supplier |"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "5d2e7a73-93e9-4292-ae4d-d2e9fd071ef2"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Create the Suppliers table\r\n",
                "CREATE TABLE Suppliers (\r\n",
                "    supplier_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\r\n",
                "    supplier_name VARCHAR(255) NOT NULL,\r\n",
                "    contact_email VARCHAR(255),\r\n",
                "    phone_number VARCHAR(15)\r\n",
                ");\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "cfa71a33-270c-4f3f-87f1-32ed6f61e854"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.034"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 7
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Inventory Table:**\n",
                "\n",
                "This table will manage the stock levels for products.\n",
                "\n",
                "**Structure:**\n",
                "\n",
                "| Column Name | Data Type | Description |\n",
                "| --- | --- | --- |\n",
                "| inventory\\_id | INT | Unique identifier for each inventory record (Primary Key) |\n",
                "| product\\_id | INT | Foreign Key (references product\\_id in Products) |\n",
                "| quantity | INT | Current stock quantity of the product |\n",
                "| supplier\\_id | INT | Foreign Key (references supplier\\_id in Suppliers) |\n",
                "| last\\_updated | DATE | Date when the stock was last updated |"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "b4d44137-faf8-454c-b9d5-e56b1d8e3069"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Create the Inventory table\r\n",
                "CREATE TABLE Inventory (\r\n",
                "    inventory_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\r\n",
                "    product_id INT,\r\n",
                "    quantity INT DEFAULT 0,\r\n",
                "    supplier_id INT,\r\n",
                "    last_updated DATE DEFAULT (CURRENT_DATE),\r\n",
                "    FOREIGN KEY (product_id) REFERENCES Products(product_id),\r\n",
                "    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)\r\n",
                ");\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c75910c0-4dbc-492b-8cb7-cc044c8c0407"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.248"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 11
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Transactions Table:**\n",
                "\n",
                "This table will record product transactions, either purchases (stocking up) or sales (reducing stock).\n",
                "\n",
                "**Structure:**\n",
                "\n",
                "| Column Name | Data Type | Description |\n",
                "| --- | --- | --- |\n",
                "| transaction\\_id | INT | Unique identifier for each transaction (Primary Key) |\n",
                "| product\\_id | INT | Foreign Key (references product\\_id in Products) |\n",
                "| transaction\\_type | ENUM('sale', 'purchase') | Indicates whether the transaction is a sale or purchase |\n",
                "| transaction\\_date | DATE | Date when the transaction took place |\n",
                "| quantity | INT | Number of products involved in the transaction |"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "4d2f9551-649e-4cd7-8980-85f77095d3f0"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Create the Transactions table\r\n",
                "CREATE TABLE Transactions (\r\n",
                "    transaction_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\r\n",
                "    product_id INT,\r\n",
                "    transaction_type ENUM('sale', 'purchase') NOT NULL,\r\n",
                "    transaction_date DATE DEFAULT (CURRENT_DATE),\r\n",
                "    quantity INT NOT NULL,\r\n",
                "    FOREIGN KEY (product_id) REFERENCES Products(product_id)\r\n",
                ");\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "4ca9b505-5780-43c3-bc47-5e3ad0f5587e"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.053"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 12
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Inserting Data:**\n",
                "\n",
                "Add some sample data to the tables.\n",
                "\n",
                "**Inserting Data into Products Table:**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "de56ede0-f338-4388-8034-86fa95cf14c4"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Insert sample products into Products table\r\n",
                "INSERT INTO Products (product_name, price, category) VALUES\r\n",
                "('Laptop', 1200.00, 'Electronics'),\r\n",
                "('Desk Chair', 150.00, 'Furniture'),\r\n",
                "('Notebook', 2.50, 'Stationery');\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "66892b69-735b-4c8e-969e-a19327119b32"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.018"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 13
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Inserting Data into Suppliers Table:**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "9ddb84ec-9d53-4a1a-b4aa-dc75044b7ba8"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Insert sample suppliers into Suppliers table\r\n",
                "INSERT INTO Suppliers (supplier_name, contact_email, phone_number) VALUES\r\n",
                "('Tech Supplies Co.', 'contact@techsupplies.com', '1234567890'),\r\n",
                "('Office Furniture Inc.', 'support@officefurniture.com', '0987654321');\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "a80a7afb-f4d2-4de6-8f7e-764d7eed0f4d"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.005"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 14
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Inserting Data into Inventory Table:**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "6cc89761-388e-46f7-9429-fea821dc6048"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Insert initial inventory levels for products\r\n",
                "INSERT INTO Inventory (product_id, quantity, supplier_id) VALUES\r\n",
                "(1, 10, 1), -- Laptop from Tech Supplies Co.\r\n",
                "(2, 20, 2), -- Desk Chair from Office Furniture Inc.\r\n",
                "(3, 100, 2); -- Notebook from Office Furniture Inc.\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "1397659e-99cf-4d23-9cd9-ec969b205489"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.009"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 15
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Inserting Data into Transactions Table:**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "affc7be1-fc8c-4b81-b833-a977ac2f7fda"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Insert sample transactions\r\n",
                "INSERT INTO Transactions (product_id, transaction_type, quantity) VALUES\r\n",
                "(1, 'purchase', 10), -- Purchased 10 laptops\r\n",
                "(2, 'purchase', 20), -- Purchased 20 desk chairs\r\n",
                "(3, 'purchase', 100); -- Purchased 100 notebooks\r\n",
                "-- Sales transaction: selling 5 laptops\r\n",
                "INSERT INTO Transactions (product_id, transaction_type, quantity) VALUES\r\n",
                "(1, 'sale', 5);\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "ece83df3-7a97-43be-981a-3150028ea89f"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.009"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 16
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Basic Functionalities:**\n",
                "\n",
                "- **Add New Products:** Functionality to add new products to the inventory, including details like product name, description, category, quantity, and price.\n",
                "- **Update Product Information:** Ability to update product details such as name, quantity, and price.\n",
                "- **Track Stock Levels:** Monitor the stock levels of each product, alerting when a product is running low.\n",
                "- **Record Sales Transactions:** Track sales, reduce the stock count when a product is sold, and record sales information for future reference.\n",
                "- **View Product Details:** Display information on each product, including stock quantity and price.\n",
                "- **Generate Inventory Reports:** Generate reports on stock levels, sales trends, or low-stock products to help manage inventory efficiently.\n",
                "- **Search Products:** Search for products by name or category to quickly find items in the inventory.\n",
                "- **Delete Products:** Remove outdated or discontinued products from the inventory."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c93d5d3c-c8cb-404d-9c47-472c1d187530"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Writing Queries for Functionality:**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "e2e40e59-7124-43bc-a672-9375f93e7842"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-1: Check Product Stock Levels**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "e486bac8-01bb-4810-84ef-ead3de114595"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Select the product name and quantity from the Products and Inventory tables\r\n",
                "SELECT p.product_name, i.quantity\r\n",
                "-- Join the Inventory table with the Products table using the product_id\r\n",
                "FROM Inventory i\r\n",
                "JOIN Products p ON i.product_id = p.product_id;\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c98eea43-f7d0-4324-97c9-6f93c029944d"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(3 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.023"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 17,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "quantity"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "product_name": "Laptop",
                                    "quantity": "10"
                                },
                                {
                                    "product_name": "Desk Chair",
                                    "quantity": "20"
                                },
                                {
                                    "product_name": "Notebook",
                                    "quantity": "100"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>product_name</th><th>quantity</th></tr><tr><td>Laptop</td><td>10</td></tr><tr><td>Desk Chair</td><td>20</td></tr><tr><td>Notebook</td><td>100</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 17
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "This query retrieves the **current stock levels** by displaying the product names along with their **quantity** in inventory. It joins the **Inventory** and **Products** tables using the product\\_id, allowing the query to match each product with its corresponding stock quantity."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "1470545f-f2ad-40de-b836-114ae983715c"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-2: Update Stock Levels After Sale or Purchase**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "b3a857f1-0721-41e1-903d-e9dd17faf797"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Update Stock After a Sale\r\n",
                "-- Decrease the quantity of the product with product_id 2 (desks) by 3 units after a sale\r\n",
                "UPDATE Inventory\r\n",
                "SET quantity = quantity - 3\r\n",
                "WHERE product_id = 2;\r\n",
                "\r\n",
                "-- Update Stock After a Purchase\r\n",
                "-- Increase the quantity of the product with product_id 1 (laptops) by 10 units after a purchase\r\n",
                "UPDATE Inventory\r\n",
                "SET quantity = quantity + 10\r\n",
                "WHERE product_id = 1;\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "cf459c0d-3175-4c34-8a4d-0236e3d095bc"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.015"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 18
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT *FROM Inventory"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "163700fe-b225-41ae-bebc-69991d869506"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(3 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.012"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 19,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "inventory_id"
                                    },
                                    {
                                        "name": "product_id"
                                    },
                                    {
                                        "name": "quantity"
                                    },
                                    {
                                        "name": "supplier_id"
                                    },
                                    {
                                        "name": "last_updated"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "inventory_id": "1",
                                    "product_id": "1",
                                    "quantity": "20",
                                    "supplier_id": "1",
                                    "last_updated": "2025-09-26"
                                },
                                {
                                    "inventory_id": "2",
                                    "product_id": "2",
                                    "quantity": "17",
                                    "supplier_id": "2",
                                    "last_updated": "2025-09-26"
                                },
                                {
                                    "inventory_id": "3",
                                    "product_id": "3",
                                    "quantity": "100",
                                    "supplier_id": "2",
                                    "last_updated": "2025-09-26"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>inventory_id</th><th>product_id</th><th>quantity</th><th>supplier_id</th><th>last_updated</th></tr><tr><td>1</td><td>1</td><td>20</td><td>1</td><td>2025-09-26</td></tr><tr><td>2</td><td>2</td><td>17</td><td>2</td><td>2025-09-26</td></tr><tr><td>3</td><td>3</td><td>100</td><td>2</td><td>2025-09-26</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 19
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "The first query **updates the inventory after a sale** by **decreasing** the quantity of desks (product with product\\_id = 2) by 3 units. The second query updates the stock after receiving **new inventory** by **increasing** the quantity of laptops (product with product\\_id = 1) by 10 units. Both queries modify the **Inventory** table to reflect the new stock levels after a sale and a purchase, respectively."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "e300341c-b78d-4d22-bbd1-3f171f81a603"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-3: View Transaction History for a Product**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "6ac03dba-81fa-4e6e-ae09-138af9a45093"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- To view the purchase and sale history for a specific product, use the following query.\r\n",
                "-- This query retrieves the transaction history for a specific product with product_id 1 (Laptop).\r\n",
                "SELECT t.transaction_type, t.quantity, t.transaction_date\r\n",
                "FROM Transactions t\r\n",
                "JOIN Products p ON t.product_id = p.product_id -- Joining Transactions and Products tables on product_id\r\n",
                "WHERE p.product_id = 1; -- Filtering for product_id 1\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "e5ccc25a-5aa2-4107-a112-5d90dd80e066"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(2 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.015"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 20,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "transaction_type"
                                    },
                                    {
                                        "name": "quantity"
                                    },
                                    {
                                        "name": "transaction_date"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "transaction_type": "purchase",
                                    "quantity": "10",
                                    "transaction_date": "2025-09-26"
                                },
                                {
                                    "transaction_type": "sale",
                                    "quantity": "5",
                                    "transaction_date": "2025-09-26"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>transaction_type</th><th>quantity</th><th>transaction_date</th></tr><tr><td>purchase</td><td>10</td><td>2025-09-26</td></tr><tr><td>sale</td><td>5</td><td>2025-09-26</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 20
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "This query **retrieves the transaction history** for a specific product, in this case, the laptop with product\\_id = 1. It selects the **transaction type**, **quantity**, and **transaction date** from the Transactions table. By joining the Transactions and Products tables on the product\\_id, it ensures that the query only returns transactions related to the specified product. This allows users to review the purchase and sale activities associated with that particular item."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "baf26a08-d745-47fd-a485-8ce92d0f590f"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-4: List Low Stock Products**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "47fcbf54-31f0-4e84-80d1-829f151dc6a1"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- This query identifies products that have stock levels below a certain threshold, such as 5 units.\r\n",
                "-- View products with low stock (e.g., less than 5 units)\r\n",
                "SELECT p.product_name, i.quantity\r\n",
                "FROM Inventory i\r\n",
                "JOIN Products p ON i.product_id = p.product_id -- Joining Inventory and Products tables on product_id\r\n",
                "WHERE i.quantity < 5; -- Filtering for products with stock levels less than 5\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "9b5951aa-6851-4117-8263-890944e41a64"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(0 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.037"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 21,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "quantity"
                                    }
                                ]
                            },
                            "data": []
                        },
                        "text/html": "<table><tr><th>product_name</th><th>quantity</th></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 21
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "This query retrieves a list of products that have low stock levels, specifically those with fewer than 5 units available. It selects the product name and quantity from the Inventory table by joining it with the Products table on product\\_id. The WHERE clause filters the results to include only those products that meet the low stock criteria. This is useful for inventory management, allowing the business to identify items that may need to be reordered to avoid stockouts."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "81bff74f-ab5f-4577-b088-c517d8844661"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-5: Generate Reports for Monthly Sales**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "7624c3f2-9c82-4a1c-bec3-1136c75a6869"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- To generate a report showing the total number of products sold in a given month:\r\n",
                "-- Generate a sales report for the current month\r\n",
                "SELECT p.product_name, SUM(t.quantity) AS total_sold -- Selecting product name and total quantity sold\r\n",
                "FROM Transactions t\r\n",
                "JOIN Products p ON t.product_id = p.product_id -- Joining Transactions with Products on product_id\r\n",
                "WHERE t.transaction_type = 'sale' -- Filtering for sales transactions\r\n",
                "AND t.transaction_date BETWEEN '2024-10-01' AND '2024-10-31' -- Considering sales within October 2024\r\n",
                "GROUP BY p.product_name; -- Grouping results by product name to aggregate total sold\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "cc6b5750-2d58-4660-b717-c43219ce9df6"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(0 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.022"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 22,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "total_sold"
                                    }
                                ]
                            },
                            "data": []
                        },
                        "text/html": "<table><tr><th>product_name</th><th>total_sold</th></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 22
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "This query **generates a sales report** that displays the total number of products sold during October 2024. It retrieves the **product name** and the **sum of quantities sold** from the Transactions table, joining it with the Products table based on the product\\_id. The WHERE clause filters for transactions classified as sales and restricts the date range to the specified month. Finally, the results are grouped by product\\_name to calculate the total quantity sold for each product. This report is valuable for analyzing sales performance and inventory needs for the month."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "54eb1006-c19f-4971-ac2c-256528ebd976"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-6: Reorder Products with Low Stock**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "8d9cdcf0-6de1-4237-a7c7-ee3e8cd9b2fb"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Automatically identify products that need to be reordered (e.g., products with stock below 5) and place a new order.\r\n",
                "-- Reorder products with stock less than 5 units\r\n",
                "SELECT p.product_name, i.quantity -- Selecting product name and current stock quantity\r\n",
                "FROM Inventory i\r\n",
                "JOIN Products p ON i.product_id = p.product_id -- Joining Inventory with Products on product_id\r\n",
                "WHERE i.quantity < 5; -- Filtering for products that have a stock quantity less than 5\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "248acd4b-63e0-45b1-b29b-604d3cc12df0"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(0 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.009"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 23,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "quantity"
                                    }
                                ]
                            },
                            "data": []
                        },
                        "text/html": "<table><tr><th>product_name</th><th>quantity</th></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 23
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "This query **identifies products that require reordering** by selecting the names and current stock quantities of products with stock levels below 5 units. It achieves this by joining the Inventory table with the Products table on the product\\_id. The WHERE clause filters the results to include only those products where the quantity is less than 5, indicating that they are low in stock. This information is crucial for inventory management, allowing businesses to proactively place new orders for products that are running low and ensure they maintain adequate stock levels to meet customer demand"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "7f2ae7be-1d4a-483e-b92e-087684173303"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-7: Add a New Product to the Inventory**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "990589f7-66bd-402a-91a8-41a57a9d7e4c"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Insert a new product 'Monitor' into the Products table with category 'Electronics' and price 150.00\r\n",
                "INSERT INTO Products (product_name, category, price)\r\n",
                "VALUES ('Monitor', 'Electronics', 150.00);\r\n",
                "\r\n",
                "-- Insert an initial stock quantity of 20 for the new product in the Inventory table\r\n",
                "-- The product_id is retrieved using a subquery that selects the product_id for 'Monitor' from the Products table\r\n",
                "INSERT INTO Inventory (product_id, quantity)\r\n",
                "VALUES ((SELECT product_id FROM Products WHERE product_name = 'Monitor'), 20);\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "9faa052c-c4fe-46da-bc5c-a3696cadc3e7"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.010"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 24
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "The provided SQL code inserts a new product called 'Monitor' into the Products table with the category 'Electronics' and a price of 150.00. After successfully adding the product, the second query inserts an initial stock quantity of 20 for the product in the Inventory table. The product\\_id for the new product is retrieved using a subquery that selects the product\\_id from the Products table where the product\\_name is 'Monitor'. This ensures that the correct product is referenced in the Inventory table"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "b445950c-d6ed-43a8-8557-0355f5c7fd00"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT *FROM products;"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c73994ad-4f95-41d9-87da-1ea7f1f8e868"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(4 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.053"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 25,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_id"
                                    },
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "price"
                                    },
                                    {
                                        "name": "category"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "product_id": "1",
                                    "product_name": "Laptop",
                                    "price": "1200.00",
                                    "category": "Electronics"
                                },
                                {
                                    "product_id": "2",
                                    "product_name": "Desk Chair",
                                    "price": "150.00",
                                    "category": "Furniture"
                                },
                                {
                                    "product_id": "3",
                                    "product_name": "Notebook",
                                    "price": "2.50",
                                    "category": "Stationery"
                                },
                                {
                                    "product_id": "4",
                                    "product_name": "Monitor",
                                    "price": "150.00",
                                    "category": "Electronics"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>product_id</th><th>product_name</th><th>price</th><th>category</th></tr><tr><td>1</td><td>Laptop</td><td>1200.00</td><td>Electronics</td></tr><tr><td>2</td><td>Desk Chair</td><td>150.00</td><td>Furniture</td></tr><tr><td>3</td><td>Notebook</td><td>2.50</td><td>Stationery</td></tr><tr><td>4</td><td>Monitor</td><td>150.00</td><td>Electronics</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 25
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-8: Delete a Product from the Inventory**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "0a836f32-ff03-4d76-9c90-823d43cb342a"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Delete the product with product_id = 3 from the Inventory table to avoid foreign key conflicts\r\n",
                "DELETE FROM Inventory WHERE product_id = 3;\r\n",
                "\r\n",
                "-- After removing it from Inventory, delete the product from the Products table\r\n",
                "DELETE FROM Products WHERE product_id = 3;\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "b4d4fa50-31ba-482a-8984-3bb661cd9529"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.014"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "error",
                    "ename": "",
                    "evalue": "1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`inventorydb`.`transactions`, CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`))",
                    "traceback": []
                }
            ],
            "execution_count": 26
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "The provided SQL code performs two deletion operations. First, it deletes the product with product\\_id = 3 from the Inventory table. This is necessary to avoid foreign key conflicts when deleting the corresponding product from the Products table. After removing the product from Inventory, the second query deletes the product from the Products table by matching the same product\\_id. By removing the product from Inventory first, the database maintains referential integrity."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "7d842aca-25e7-40a9-b8e4-693ce5e37f63"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT *FROM inventory"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "42514dca-e7d0-42e5-bd46-1bbc2b206ac9"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(3 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.013"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 27,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "inventory_id"
                                    },
                                    {
                                        "name": "product_id"
                                    },
                                    {
                                        "name": "quantity"
                                    },
                                    {
                                        "name": "supplier_id"
                                    },
                                    {
                                        "name": "last_updated"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "inventory_id": "1",
                                    "product_id": "1",
                                    "quantity": "20",
                                    "supplier_id": "1",
                                    "last_updated": "2025-09-26"
                                },
                                {
                                    "inventory_id": "2",
                                    "product_id": "2",
                                    "quantity": "17",
                                    "supplier_id": "2",
                                    "last_updated": "2025-09-26"
                                },
                                {
                                    "inventory_id": "4",
                                    "product_id": "4",
                                    "quantity": "20",
                                    "supplier_id": "NULL",
                                    "last_updated": "2025-09-26"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>inventory_id</th><th>product_id</th><th>quantity</th><th>supplier_id</th><th>last_updated</th></tr><tr><td>1</td><td>1</td><td>20</td><td>1</td><td>2025-09-26</td></tr><tr><td>2</td><td>2</td><td>17</td><td>2</td><td>2025-09-26</td></tr><tr><td>4</td><td>4</td><td>20</td><td>NULL</td><td>2025-09-26</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 27
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT *FROM products"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c79f6417-cded-4a33-9421-16a5403d3169"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(4 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.006"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 28,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_id"
                                    },
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "price"
                                    },
                                    {
                                        "name": "category"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "product_id": "1",
                                    "product_name": "Laptop",
                                    "price": "1200.00",
                                    "category": "Electronics"
                                },
                                {
                                    "product_id": "2",
                                    "product_name": "Desk Chair",
                                    "price": "150.00",
                                    "category": "Furniture"
                                },
                                {
                                    "product_id": "3",
                                    "product_name": "Notebook",
                                    "price": "2.50",
                                    "category": "Stationery"
                                },
                                {
                                    "product_id": "4",
                                    "product_name": "Monitor",
                                    "price": "150.00",
                                    "category": "Electronics"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>product_id</th><th>product_name</th><th>price</th><th>category</th></tr><tr><td>1</td><td>Laptop</td><td>1200.00</td><td>Electronics</td></tr><tr><td>2</td><td>Desk Chair</td><td>150.00</td><td>Furniture</td></tr><tr><td>3</td><td>Notebook</td><td>2.50</td><td>Stationery</td></tr><tr><td>4</td><td>Monitor</td><td>150.00</td><td>Electronics</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 28
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-9: View Products by Category**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c812c1e8-e7a1-4076-9e02-da78cc5a37de"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Select the product name and price from the Products table\r\n",
                "SELECT product_name, price\r\n",
                "-- Filter results to show only products in the 'Electronics' category\r\n",
                "FROM Products\r\n",
                "WHERE category = 'Electronics';\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "2b21228c-f873-410d-abde-fbb472686a79"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(2 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.043"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 29,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "price"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "product_name": "Laptop",
                                    "price": "1200.00"
                                },
                                {
                                    "product_name": "Monitor",
                                    "price": "150.00"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>product_name</th><th>price</th></tr><tr><td>Laptop</td><td>1200.00</td></tr><tr><td>Monitor</td><td>150.00</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 29
        },
        {
            "cell_type": "markdown",
            "source": [
                "<span style=\"color: rgba(0, 0, 0, 0.87); font-family: Helvetica, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\">This SQL query retrieves the product_name and price of all products that belong to the 'Electronics' category from the Products table. The WHERE clause filters the records to include only those whose category matches 'Electronics'. The query is useful for displaying a list of electronic products along with their prices.</span>"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "7d8a4243-0ed2-449a-abf9-552f7e68f5a4"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-10: Check Total Value of Inventory**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "02d3317f-8f14-4483-a084-c0127036543d"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Select the product name, quantity, price, and calculate total value for each product\r\n",
                "SELECT p.product_name, i.quantity, p.price, \r\n",
                "       (i.quantity * p.price) AS total_value\r\n",
                "-- Join the Inventory table with the Products table based on product_id\r\n",
                "FROM Inventory i\r\n",
                "JOIN Products p ON i.product_id = p.product_id;\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "1e298b36-e800-4616-8877-4d5fa3e6024e"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(3 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.009"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 30,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "quantity"
                                    },
                                    {
                                        "name": "price"
                                    },
                                    {
                                        "name": "total_value"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "product_name": "Laptop",
                                    "quantity": "20",
                                    "price": "1200.00",
                                    "total_value": "24000.00"
                                },
                                {
                                    "product_name": "Desk Chair",
                                    "quantity": "17",
                                    "price": "150.00",
                                    "total_value": "2550.00"
                                },
                                {
                                    "product_name": "Monitor",
                                    "quantity": "20",
                                    "price": "150.00",
                                    "total_value": "3000.00"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>product_name</th><th>quantity</th><th>price</th><th>total_value</th></tr><tr><td>Laptop</td><td>20</td><td>1200.00</td><td>24000.00</td></tr><tr><td>Desk Chair</td><td>17</td><td>150.00</td><td>2550.00</td></tr><tr><td>Monitor</td><td>20</td><td>150.00</td><td>3000.00</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 30
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "This SQL query retrieves the product\\_name, quantity, price, and the total\\_value (calculated as quantity \\* price) for each product by joining the Inventory and Products tables. The JOIN operation connects the two tables through the product\\_id, ensuring that the quantity from the Inventory table corresponds to the matching product from the Products table. This query helps calculate the total value of each product's stock"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "e6b3d58a-0cff-4aaa-a51c-42be24d0eb08"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-11: View Products Not Sold in a Given Period**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "584deeb9-11d3-4da7-82ce-a9c51af0d6a6"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Left join Products with Transactions to include all products, even those with no matching transactions\r\n",
                "SELECT p.product_name\r\n",
                "FROM Products p\r\n",
                "LEFT JOIN Transactions t ON p.product_id = t.product_id \r\n",
                "-- Only consider transactions that are of type 'sale'\r\n",
                "AND t.transaction_type = 'sale'\r\n",
                "-- Filter for products with no transaction or transactions before September 1, 2024\r\n",
                "WHERE t.transaction_date IS NULL OR t.transaction_date < '2024-09-01';\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "bd7e4384-3867-4051-85ba-52f049d1c21e"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(3 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.011"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 31,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_name"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "product_name": "Desk Chair"
                                },
                                {
                                    "product_name": "Notebook"
                                },
                                {
                                    "product_name": "Monitor"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>product_name</th></tr><tr><td>Desk Chair</td></tr><tr><td>Notebook</td></tr><tr><td>Monitor</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 31
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Explanation:**\n",
                "\n",
                "This SQL query retrieves the product\\_name from the Products table for products that either have no sales transactions or only had sales transactions before September 1, 2024. The query uses a LEFT JOIN to ensure that all products are listed, even those without a corresponding sales record in the Transactions table. The WHERE clause filters for products with no transactions (t.transaction\\_date IS NULL) or transactions that occurred before the specified date. This helps identify products that are not recently sold or haven't been sold at all."
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "c7a444c4-e17d-4e5c-902b-8aa48569863b"
            },
            "attachments": {}
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-12: Calculate Total Revenue for a Given Period**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "fc0196cd-2aac-44fa-8220-e6dac558ae9d"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT *from TRANSACTIONS"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "f4238964-c9a6-49f2-b3a1-81179a2df8ef"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(4 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.140"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 33,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "transaction_id"
                                    },
                                    {
                                        "name": "product_id"
                                    },
                                    {
                                        "name": "transaction_type"
                                    },
                                    {
                                        "name": "transaction_date"
                                    },
                                    {
                                        "name": "quantity"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "transaction_id": "1",
                                    "product_id": "1",
                                    "transaction_type": "purchase",
                                    "transaction_date": "2025-09-26",
                                    "quantity": "10"
                                },
                                {
                                    "transaction_id": "2",
                                    "product_id": "2",
                                    "transaction_type": "purchase",
                                    "transaction_date": "2025-09-26",
                                    "quantity": "20"
                                },
                                {
                                    "transaction_id": "3",
                                    "product_id": "3",
                                    "transaction_type": "purchase",
                                    "transaction_date": "2025-09-26",
                                    "quantity": "100"
                                },
                                {
                                    "transaction_id": "4",
                                    "product_id": "1",
                                    "transaction_type": "sale",
                                    "transaction_date": "2025-09-26",
                                    "quantity": "5"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>transaction_id</th><th>product_id</th><th>transaction_type</th><th>transaction_date</th><th>quantity</th></tr><tr><td>1</td><td>1</td><td>purchase</td><td>2025-09-26</td><td>10</td></tr><tr><td>2</td><td>2</td><td>purchase</td><td>2025-09-26</td><td>20</td></tr><tr><td>3</td><td>3</td><td>purchase</td><td>2025-09-26</td><td>100</td></tr><tr><td>4</td><td>1</td><td>sale</td><td>2025-09-26</td><td>5</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 33
        },
        {
            "cell_type": "code",
            "source": [
                "-- Calculate the total revenue by multiplying the quantity sold by the product price\r\n",
                "SELECT SUM(t.quantity * p.price) AS total_revenue\r\n",
                "-- Join the Transactions table with the Products table to access product price\r\n",
                "FROM Transactions t\r\n",
                "JOIN Products p ON t.product_id = p.product_id\r\n",
                "-- Filter for only 'sale' transactions\r\n",
                "WHERE t.transaction_type = 'sale'\r\n",
                "-- Only include transactions within the date range of October 1 to October 31, 2024\r\n",
                "AND t.transaction_date BETWEEN '2024-10-01' AND '2024-10-31';\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "dfba1ab3-af16-4563-af74-38b9f7512443"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(1 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.011"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 32,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "total_revenue"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "total_revenue": "NULL"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>total_revenue</th></tr><tr><td>NULL</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 32
        },
        {
            "cell_type": "markdown",
            "source": [
                "**Query-13: Find the Most Sold Product**"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "70897bd5-603a-4de6-ac14-b36401ef1880"
            },
            "attachments": {}
        },
        {
            "cell_type": "code",
            "source": [
                "-- Select the product name and the total quantity sold\r\n",
                "SELECT p.product_name, SUM(t.quantity) AS total_sold\r\n",
                "-- Join the Transactions table with the Products table to link products to transactions\r\n",
                "FROM Transactions t\r\n",
                "JOIN Products p ON t.product_id = p.product_id\r\n",
                "-- Filter for only 'sale' transactions\r\n",
                "WHERE t.transaction_type = 'sale'\r\n",
                "-- Only include transactions that occurred between October 1 and October 31, 2024\r\n",
                "AND t.transaction_date BETWEEN '2024-10-01' AND '2024-10-31'\r\n",
                "-- Group the results by product name to calculate the total quantity sold for each product\r\n",
                "GROUP BY p.product_name\r\n",
                "-- Order the products by the total quantity sold in descending order (most sold first)\r\n",
                "ORDER BY total_sold DESC\r\n",
                "-- Limit the result to the top-selling product (one result)\r\n",
                "LIMIT 1;\r\n",
                ""
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "094542cd-19e4-4ed7-aa04-475f27a9283f"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(0 row(s) affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.021"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 34,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "product_name"
                                    },
                                    {
                                        "name": "total_sold"
                                    }
                                ]
                            },
                            "data": []
                        },
                        "text/html": "<table><tr><th>product_name</th><th>total_sold</th></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 34
        }
    ]
}