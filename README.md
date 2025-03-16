

# **DappCord**  

## **Technology Stack & Tools**  
- **Solidity** – Smart contract development  
- **JavaScript** – Used for both frontend (React) and testing  
- **[Hardhat](https://hardhat.org/)** – Development and testing framework  
- **[Ethers.js](https://docs.ethers.io/v5/)** – Blockchain interaction library  
- **[React.js](https://reactjs.org/)** – Frontend framework  
- **[Socket.io](https://socket.io/)** – Real-time client-server communication  

## **Requirements**  
- Install **[Node.js](https://nodejs.org/en/)**  

## **Project Setup**  

### **1️⃣ Clone the Repository**  
```sh
git clone https://github.com/manashatwar/discord-dapp.git
cd discord-dapp
```

### **2️⃣ Install Dependencies**  
```sh
npm install
```

### **3️⃣ Run Tests**  
```sh
npx hardhat test
```

### **4️⃣ Start Hardhat Local Blockchain**  
```sh
npx hardhat node
```

### **5️⃣ Deploy Smart Contracts**  
Run the deployment script in another terminal:  
```sh
npx hardhat run ./scripts/deploy.js --network localhost
```

### **6️⃣ Start the Socket.io Server**  
```sh
node server.js
```

### **7️⃣ Start the Frontend**  
In a separate terminal, run:  
```sh
npm start
```

---

## **Building for Production**  
To generate an optimized production build:  
```sh
npm run build
```
This creates a `build` folder ready for deployment.  

---

## **Additional Information**  

### **Ejecting the App (Optional)**  
If you want full control over configurations:  
```sh
npm run eject
```
⚠️ **Note:** This action is irreversible!  

### **Useful Links**  
- **[React Docs](https://reactjs.org/)**  
- **[Hardhat Docs](https://hardhat.org/docs/)**  
- **[Create React App Guide](https://facebook.github.io/create-react-app/docs/getting-started)**  

---




