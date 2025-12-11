#   My goal is to be the best iOS developer!

## Projects 🚀

### [1 - TodoList 📋](https://github.com/eneseken95/Swift_Projects/tree/main/TodoList)
<img width="520" alt="todolist" src="https://github.com/eneseken95/Swift_Projects/assets/144843964/89adf00e-80b7-4406-aa03-b41663c512e6">

#### 🚀 I've taken a new step forward and developed my own Todo list app using SwiftUI! 📱💼 
##### -> This app, developed using the MVVM architecture, helps me increase my productivity. 
##### -> MVVM ensures that the code is more readable, easier to maintain, and reusable.

### [2 - BYS 🎓](https://github.com/eneseken95/Information_Management_System)
<img src="https://github.com/eneseken95/Information_Management_System/blob/main/Screenshoots.png" alt="Screenshoots" width="350" height="550" />

#### 🚀 I've developed Information Management System (BYS) app! 📚🏫
##### -> This application allows students to select their courses and teachers to view the courses they teach.
##### -> My Medium article about my BYS app ✏️ <a href="https://medium.com/@eneseken85/student-management-system-423d9b1c4cc7">BYS</a>

#### Key Features:
##### -> Students: Can select their courses.
##### -> Teachers: Can view the courses they teach.
##### -> Admins: Have access to a dedicated control panel for system management.

#### Technologies Used:
##### -> Frontend: Dynamic and flexible UI design with SwiftUI.
##### -> Backend: Developed the API with Node.js, enabling seamless front-end and back-end integration through a RESTful architecture.
##### -> Database: MySQL, easily managed via XAMPP.

#### Architectures Used in the Application:
##### -> Frontend: MVVM (Model-View-ViewModel)
##### -> Backend: MVC (Model-View-Controller)

#### API Testing:
##### -> Tested API requests and responses with Postman to ensure reliability and accuracy.

### [3 - Person Scan 👥](https://github.com/eneseken95/PersonScan)
<img src="https://github.com/eneseken95/PersonScan/blob/main/Screenshots.png" alt="Screenshoots" width="520" height="400" />

#### 🚀 I've developed Person Scan app! 🧍‍♂️🔎 
##### -> Person Scan is an iOS application built using Swift, SwiftUI, Vision, and AVFoundation that detects and counts people in real-time using the device’s camera.

#### 🔍 Key Features:
##### -> 🧍 Real-time human body detection using Vision’s VNDetectHumanRectanglesRequest.
##### -> 🙂 Accurate face detection with VNDetectFaceRectanglesRequest.
##### -> 🎥 Live camera feed with animated detection overlays.
##### -> 🧊 Clean, modern SwiftUI interface with dynamic updates.
##### -> 🛡️ Automatically handles camera permissions.

### [4 - UpQuest 💬](https://github.com/eneseken95/UpQuest)
<img src="https://github.com/eneseken95/UpQuest/blob/main/UpQuest-Screenshots.png" alt="Screenshoots" width="520" height="400" />

#### 🚀 I've developed UpQuest app! 💬 
##### -> I developed UpQuest, an iOS application that allows event participants to submit questions in real time, vote on them, and ensure the most popular questions get answered first.
##### -> My Medium article about my UpQuest app ✏️ <a href="https://medium.com/@eneseken85/upquest-an-ios-app-to-make-event-q-a-sessions-interactive-d498870dd1b1">UpQuest</a>

### [5 - Blockchain Sim+ 🔗](https://github.com/eneseken95/Blockchain_Sim_Plus)
<img src="https://github.com/eneseken95/Blockchain_Sim_Plus/blob/main/Screenshots/Screenshot1.png" alt="Screenshoots" width="520" height="400" />

#### 🚀 I’ve developed Blockchain Sim+ app! 🔗🧮
##### -> Blockchain Sim+ is a Swift/SwiftUI-powered interactive simulator that visualizes how blockchain systems work in real time.

#### 🔍 Key Features:
##### -> 🔗 Build and visualize blockchains (blocks, hashes, chain links)
##### -> ⚙️ Consensus simulation: Proof-of-Work & Proof-of-Stake
##### -> 🌿 Fork detection & chain reorganization
##### -> 📈 Live adjustable parameters (difficulty, block size, transaction rate)
##### -> 🧊 Clean, modern SwiftUI interface with real-time animations
##### -> 🧠 Modular architecture (MVVM + DI + Domain/Data/Presentation)
##### -> 🎓 Perfect for students, developers, and anyone exploring blockchain fundamentals

### [6 - Hashchat 🔐](https://github.com/eneseken95/Hashchat)
<img src="https://github.com/eneseken95/Hashchat/blob/main/Screenshots/Screenshot1.png" alt="Screenshoots" width="350" height="550" />
<img src="https://github.com/eneseken95/Hashchat/blob/main/Screenshots/Screenshot2.png" alt="Screenshoots" width="350" height="550" />

#### 🚀 I’ve developed Hashchat app! 🔐💬
##### -> Hashchat is a Swift/SwiftUI-powered real-time encrypted chat application that allows users to send messages secured with classical and modern cryptography — all implemented manually without external libraries.

#### 🔍 Key Features:
##### -> 🔐 Multiple encryption algorithms (Caesar, Vigenère, Hill, Columnar, Rail Fence, Euclid)
##### -> 🔒 Advanced cryptography support:
##### • AES-128 (CTR Mode) — pure Swift implementation
##### • DES (CBC Mode) — full manual implementation
##### -> 🧩 Dynamic cipher selection with custom key inputs for each algorithm
##### -> 🔄 Real-time encrypted messaging using WebSockets
##### -> 🧊 Clean and modern SwiftUI interface with smooth transitions
##### -> ⚙️ Modular architecture (MVVM + DI + clean cryptography modules)
##### -> 🧠 Educational design: perfect for learning how encryption works by actually sending encrypted messages
##### -> 📡 Automatic local encryption/decryption pipeline before and after message transfer

#### 🔐 AES & DES — Manual vs CommonCrypto Implementations:
##### -> Hashchat includes both manual and library-based cryptographic systems for comparison and educational purposes.
##### Manual Implementations:
##### -> AES-128 CTR and DES CBC fully written in Swift, including round functions, S-boxes, permutations, and key scheduling.
##### CommonCrypto Implementations:
##### -> High-performance AES-128 CTR and DES CBC using Apple’s optimized cryptographic engine.
##### Built-in Benchmark System:
##### -> Measures and compares execution times of manual vs CommonCrypto implementations directly inside the app.

##### Example output:
<img src="https://github.com/eneseken95/Hashchat/blob/main/Screenshots/Screenshot6.png" alt="Screenshoots" width="350" height="550" />

#### 🔑 RSA Encryption (Public-Key Cryptography)
##### -> Hashchat now includes full RSA encryption & decryption support — built without external libraries.
##### -> A 2048-bit RSA keypair is generated separately using a Swift Playground, exported in **DER format**, and encoded as Base64.
##### -> The app loads these DER-wrapped keys (SubjectPublicKeyInfo for the public key, PKCS#1 for the private key) and uses Apple's Security framework for OAEP-SHA256 encryption.

##### How it works:
- Messages are encrypted with the RSA **public key** using OAEP + SHA-256.
- The receiver decrypts the ciphertext using the **private key**.
- Both simulators/devices can decrypt each other’s messages as long as they share the same DER keypair.
- This implementation mirrors real-world public-key cryptography and demonstrates asymmetric encryption in a live chat environment.

##### Educational Purpose:
- Shows the difference between modern symmetric ciphers (AES/DES) and asymmetric ciphers (RSA).
- Helps visualize encryption pipelines: plaintext → ciphertext → transport → RSA decryption.
- Reinforces understanding of keypair management, DER structures, and OAEP padding.

#### 🛡️ Security Validation with Wireshark
##### -> To verify that messages are truly encrypted end-to-end, I used Wireshark to inspect live WebSocket packets.
##### -> All transmitted messages appear as encrypted byte streams — ensuring no plain-text data ever leaves the device.
##### -> This step helped validate the integrity of my AES and DES implementations and the overall security pipeline.
