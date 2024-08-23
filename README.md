# SupplyChain Smart Contract
![image](https://github.com/user-attachments/assets/2cfb3c41-dc20-4101-9aab-df2d86451154)


## Vision

The **SupplyChain** smart contract aims to revolutionize product tracking and management within supply chains using blockchain technology. By leveraging Ethereum smart contracts, this project provides a decentralized solution for creating, transferring, and updating the status of products, ensuring transparency, traceability, and authenticity throughout the product lifecycle.

## Flowchart
 +-------------------+
 |   Start           |
 +-------------------+
           |
           v
 +-------------------+
 |   Create Product  |
 |-------------------|
 | Input:            |
 | - Product ID      |
 | - Name            |
 | - Description     |
 +-------------------+
           |
           v
 +-------------------+
 |   Product Exists?|
 |-------------------|
 | Check if product  |
 | ID already exists |
 +-------------------+
           |
           +----> No ----> +-------------------+
           |              |   Error: Product   |
           |              |   Already Exists   |
           |              +-------------------+
           v
 +-------------------+
 |   Create Product  |
 |   and Store       |
 |-------------------|
 | - Set Creator     |
 | - Set Owner       |
 | - Set Status      |
 +-------------------+
           |
           v
 +-------------------+
 | Emit ProductCreated |
 | Event               |
 +-------------------+
           |
           v
 +-------------------+
 |   Transfer Product|
 |-------------------|
 | Input:            |
 | - Product ID      |
 | - New Owner Address |
 +-------------------+
           |
           v
 +-------------------+
 |   Product Exists?|
 |-------------------|
 | Check if product  |
 | ID exists and     |
 | sender is owner   |
 +-------------------+
           |
           +----> No ----> +-------------------+
           |              |   Error: Product   |
           |              |   Does Not Exist   |
           |              +-------------------+
           v
 +-------------------+
 |   Update Ownership|
 |   and Store History|
 |-------------------|
 | - Set New Owner   |
 | - Add History Entry |
 |   (Transferred)   |
 +-------------------+
           |
           v
 +-------------------+
 | Emit ProductTransferred |
 | Event                |
 +-------------------+
           |
           v
 +-------------------+
 |   Update Product Status|
 |-------------------|
 | Input:            |
 | - Product ID      |
 | - New Status      |
 +-------------------+
           |
           v
 +-------------------+
 |   Product Exists?|
 |-------------------|
 | Check if product  |
 | ID exists and     |
 | sender is owner   |
 +-------------------+
           |
           +----> No ----> +-------------------+
           |              |   Error: Product   |
           |              |   Does Not Exist   |
           |              +-------------------+
           v
 +-------------------+
 |   Update Status   |
 |   and Store History|
 |-------------------|
 | - Set Status      |
 | - Add History Entry|
 |   (Updated)       |
 +-------------------+
           |
           v
 +-------------------+
 | Emit ProductUpdated |
 | Event               |
 +-------------------+
           |
           v
 +-------------------+
 |   Get Product History |
 |-------------------|
 | Input:            |
 | - Product ID      |
 +-------------------+
           |
           v
 +-------------------+
 |   Retrieve History|
 |-------------------|
 | - Return history data|
 +-------------------+
           |
           v
 +-------------------+
 |   End             |
 +-------------------+


Here's a simplified flowchart of the **SupplyChain** contract functionalities:

1. **Create Product**
   - Input: Product ID, Name, Description
   - Check if product exists
   - Create and store product
   - Emit `ProductCreated` event

2. **Transfer Product**
   - Input: Product ID, New Owner Address
   - Check if product exists and sender is the owner
   - Update ownership
   - Add history entry
   - Emit `ProductTransferred` event

3. **Update Product Status**
   - Input: Product ID, New Status
   - Check if product exists and sender is the owner
   - Update status
   - Add history entry
   - Emit `ProductUpdated` event

4. **Get Product History**
   - Input: Product ID
   - Retrieve and return the product's history

## Networks 
Educhain
## Contract Address

This smart contract is deployed on the Ethereum blockchain. To interact with the contract, you will need the contract address. The address will vary depending on the network (e.g., Mainnet, Ropsten).

**Contract Address:** 0xfef83f3fB5fbE2478070A1d1E350f24533c75a3e
![image](https://github.com/user-attachments/assets/3801abda-05e5-470f-b6e3-66a0e1893bef)


## Future Scope

1. **Enhanced Security:** Implement additional access control mechanisms to ensure only authorized users can update or transfer products.
2. **Integration with IoT:** Connect with IoT devices to automatically update product status based on real-world conditions.
3. **User Interface:** Develop a web or mobile application to interact with the smart contract easily.
4. **Advanced Analytics:** Incorporate analytics to monitor product flows, identify trends, and optimize the supply chain.

Contact Details
For any queries or further information about the SupplyChain project, please reach out:
**Developer** : Ayush Goel
**Email**: ghottegoyal1001@gmail.com
**GitHub**: [Ayushgoel223](https://github.com/Ayushgoel223)

Thank you for your interest in the SupplyChain smart contract!
