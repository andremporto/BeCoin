![ColorSense](./BeCoin/Assets.xcassets/Images/IphoneReadmeCapa.jpg)

# BeCoin - Cryptocurrency Wallet App

BeCoin is a cryptocurrency wallet application built in Swift using SwiftUI. This project leverages the MVVM architecture, Combine framework, CoreData for data persistence, multithreading for smooth performance, and publishers/subscribers for data flow management.

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
- [Installation](#installation)
- [Usage](#usage)
- [Architecture](#architecture)
- [Technologies](#technologies)
- [Contributing](#contributing)
- [Commit Convention](#commit-convention)
- [License](#license)

## Features

- **Cryptocurrency Wallet**: BeCoin allows users to manage their cryptocurrency holdings by adding, removing, and tracking various cryptocurrencies.

- **Real-Time Data**: The app provides cryptocurrency price updates and portfolio value calculations, keeping users informed about their investments.

- **Data Persistence**: Utilizes CoreData to securely store user data, including wallet information and history.

- **Multithreading**: Takes advantage of multithreading to ensure smooth performance and responsiveness even when dealing with large datasets.

- **Combine Framework**: Utilizes Combine to handle asynchronous operations and data flow, ensuring a reactive and scalable architecture.

## Screenshots

![Screenshot](./BeCoin/Assets.xcassets/Images/IphoneReadmeMockup.jpg)

## Getting Started

These instructions will help you set up and run the BeCoin app on your local machine for development and testing purposes.

To run the BeCoin app on your local development environment, follow these steps:

1. Clone the repository to your machine / Clone o repositório para sua máquina:

   ```bash
   git clone https://github.com/JonataKlabunde/ColorSense.git
   ```

2. Open the project in Xcode / Abra o projeto no Xcode:

   ```bash
   cd ColorSense
   open ColorSense.xcodeproj
   ```

3. Build and run the app in the Xcode simulator or on a physical device / Compile e execute o aplicativo no simulador do Xcode ou em um dispositivo físico.

### Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/andremporto/BeCoin.git
   ```

2. Open the project in Xcode:

   ```shell
   cd becoin
   open BeCoin.xcodeproj
   ```

3. Build and run the project in the Xcode simulator or on a physical iOS device.

### Usage

1. Launch the BeCoin app on your iOS device or simulator.
2. Add your cryptocurrency holdings to the wallet.
3. View real-time cryptocurrency prices and track your portfolio's value.
<!-- 4. Use biometric authentication or a PIN code to secure your wallet. -->

## Architecture

The BeCoin app follows the MVVM (Model-View-ViewModel) architecture pattern to separate concerns and maintain a clean and organized codebase:

- **Model**: Represents the data layer and includes the CoreData models for storing cryptocurrency and transaction information.

- **View**: Represents the user interface layer using SwiftUI views to display wallet data and interact with users.

- **ViewModel**: Acts as an intermediary between the Model and View, responsible for handling data manipulation, business logic, and interaction with external services (e.g., cryptocurrency price API). Combine is used for data binding between ViewModel and View.

## Technologies

- Swift
- SwiftUI
- Combine
- CoreData
- Multithreading
- Biometric Authentication (Face ID/Touch ID)
- PIN Code Security

## Contributing

If you'd like to contribute to the BeCoin project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and ensure all tests pass.
4. Submit a pull request with a clear description of your changes and why they are necessary.

## Commit Convention

| Commit type / Tipo de Commit | Description / Descrição                                               |
| ---------------------------- | --------------------------------------------------------------------- |
| `feat`                       | Adds new functionality to the project.                                |
| `fix`                        | Fixes a bug or problem in the project.                                |
| `docs`                       | Changes the project documentation. E.g. README, comments in the code. |
| `style`                      | Makes appearance changes without changing functionality.              |
| `refactor`                   | Make changes to code that do not change functionality.                |
| `test`                       | Adds or modifies tests in the project.                                |

##### Commit example

`feat: added new file`

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
