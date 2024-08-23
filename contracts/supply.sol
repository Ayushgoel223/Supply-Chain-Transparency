// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

contract SupplyChain {
    // Mapping of products to their current owner
    mapping (address => mapping (uint256 => Product)) public products;

    // Mapping of products to their history
    mapping (uint256 => History[]) public productHistory;

    // Event emitted when a product is created
    event ProductCreated(uint256 indexed productId, address indexed creator);

    // Event emitted when a product is transferred
    event ProductTransferred(uint256 indexed productId, address indexed from, address indexed to);

    // Event emitted when a product is updated
    event ProductUpdated(uint256 indexed productId, string indexed status);

    // Struct to represent a product
    struct Product {
        uint256 id;
        string name;
        string description;
        address creator;
        address currentOwner;
        string status;
    }

    // Struct to represent a history entry
    struct History {
        uint256 timestamp;
        address actor;
        string action;
        string status;
    }

    // Function to create a new product
    function createProduct(uint256 _id, string memory _name, string memory _description) public {
        // Check if the product already exists
        require(products[msg.sender][_id].id == 0, "Product already exists");

        // Create a new product
        Product memory product = Product(_id, _name, _description, msg.sender, msg.sender, "Created");

        // Add the product to the mapping
        products[msg.sender][_id] = product;

        // Emit an event
        emit ProductCreated(_id, msg.sender);
    }

    // Function to transfer a product
    function transferProduct(uint256 _id, address _to) public {
        // Check if the product exists and is owned by the sender
        require(products[msg.sender][_id].id != 0, "Product does not exist");
        require(products[msg.sender][_id].currentOwner == msg.sender, "Sender is not the current owner");

        // Update the product's current owner
        products[msg.sender][_id].currentOwner = _to;

        // Add a new history entry
        History memory history = History(block.timestamp, msg.sender, "Transferred", "In transit");
        productHistory[_id].push(history);

        // Emit an event
        emit ProductTransferred(_id, msg.sender, _to);
    }

    // Function to update a product's status
    function updateProductStatus(uint256 _id, string memory _status) public {
        // Check if the product exists and is owned by the sender
        require(products[msg.sender][_id].id != 0, "Product does not exist");
        require(products[msg.sender][_id].currentOwner == msg.sender, "Sender is not the current owner");

        // Update the product's status
        products[msg.sender][_id].status = _status;

        // Add a new history entry
        History memory history = History(block.timestamp, msg.sender, "Updated", _status);
        productHistory[_id].push(history);

        // Emit an event
        emit ProductUpdated(_id, _status);
    }

    // Function to get a product's history
    function getProductHistory(uint256 _id) public view returns (bytes memory) {
         History[] memory histories = productHistory[_id];
          bytes memory data = abi.encode("");
         return data;
    }
}
