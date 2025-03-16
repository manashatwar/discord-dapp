

## Technology Stack & Tools

DappCord
Tech Stack & Tools
Solidity – Smart contract development
JavaScript – Used for both frontend (React) and testing
Hardhat – Development and testing framework for Ethereum
Ethers.js – Library for blockchain interactions
React.js – Frontend framework for building UI
Socket.io – Enables real-time communication between client and server
Prerequisites
Install Node.js
Getting Started
1️⃣ Clone the Repository
sh
Copy
Edit
git clone https://github.com/manashatwar/discord-dapp.git
cd discord-dapp
2️⃣ Install Project Dependencies
sh
Copy
Edit
npm install
3️⃣ Run Tests
sh
Copy
Edit
npx hardhat test
4️⃣ Launch Hardhat Local Blockchain
sh
Copy
Edit
npx hardhat node
5️⃣ Deploy Smart Contracts
Run the deployment script in another terminal:

sh
Copy
Edit
npx hardhat run ./scripts/deploy.js --network localhost
6️⃣ Start the Socket.io Server
sh
Copy
Edit
node server.js
7️⃣ Run the Frontend
In a separate terminal, start the frontend server:

sh
Copy
Edit
npm start
Building for Production
To generate a production-ready build, use:

sh
Copy
Edit
npm run build
This creates an optimized build folder for deployment.

Additional Information
Ejecting the App (Optional)
For full control over configurations, you can eject the default setup:

sh
Copy
Edit
npm run eject
⚠️ Note: This action is irreversible!

Useful Links
React Docs
Hardhat Docs
Create React App Guide


