# DefiFundr - A decentralized crowdfunding platform for the Ethereum blockchain

[![CI](https://github.com/demola234/tdd_weather/actions/workflows/cl.yml/badge.svg)](https://github.com/demola234/tdd_weather/actions/workflows/cl.yml)
[![codecov](https://codecov.io/gh/demola234/deFICrowdFunding-Mobile/graph/badge.svg?token=VHYGUKF9YA)](https://codecov.io/gh/demola234/deFICrowdFunding-Mobile)

![Banner](https://github.com/demola234/defiraise_mobile/blob/main/screenshots/DefiFundr_Banner.png)

## What is DefiFundr?

DefiFundr is a decentralized crowdfunding platform built on the Ethereum blockchain. It allows users to create and contribute to crowdfunding campaigns, and allows campaign creators to set a funding goal and deadline. If the funding goal is met before the deadline, the campaign is successful and the funds are released to the campaign creator. If the funding goal is not met before the deadline, the campaign is unsuccessful and the funds are returned to the contributors.

## Prerequisites

- Flutter SDK
- Android Studio / Xcode
- Golang (for running the local blockchain)
- Ganache (for running the local blockchain)
- Metamask (for interacting with the blockchain)
- Solidity (for writing smart contracts)

<!-- Videos -->
## Video Demo

https://github.com/demola234/defiraise_mobile/screenshots/DefiFundr2.mp4

https://github.com/demola234/defiraise_mobile/screenshots/DefiFundr.mp4



## Installation
### Running with MakeFile

```bash
make clean
```

This command will remove the build folder and the .dart_tool folder.

```bash
make build
```

This command will build the project.

```bash
make run
```

Generate all freezed files and generated files

```bash
make gen
```

### Running with Flutter Commands

```bash
flutter clean
```

This command will remove the build folder and the .dart_tool folder.

```bash
flutter build apk
```

This command will build the project.

```bash
flutter run
```

Generate all freezed files and generated files

```bash
flutter pub run build_runner build
```

## Testing

```bash
flutter test
```

This command will run all the tests in the test folder.

```bash
flutter test --coverage
```

This command will run all the tests using the makefile

```bash
make test
```


## Features

- Create a new campaign
- Contribute to an existing campaign
- View all campaigns
- View a single campaign
- View the current balance of a campaign
- View the total amount raised by a campaign
- View the total number of contributors to a campaign
- View the deadline of a campaign
- View the funding goal of a campaign
- View the status of a campaign (successful or unsuccessful)
- View the creator of a campaign
- View the contributors to a campaign
- View the amount contributed by a contributor to a campaign
- View the total amount contributed by a contributor to all campaigns
- Change avatar image
- Biometrics authentication
- Otp authentication
- Email authentication
- Password authentication



## Screenshots

<img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/Registration.png" width="270" height="600"> <img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/Verify.png" width="270" height="600"> <img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/CreatePass.png" width="270" height="600">


<img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/SelectAvatar.png" width="270" height="600"> <img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/HomeScreen.png" width="270" height="600"> <img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/DonationDetails.png" width="270" height="600">

<img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/ActiveDonations.png" width="270" height="600"> <img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/AmountDonations.png" width="270" height="600"> <img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/ConfirmDonations.png" width="270" height="600">

<img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/DonationSuccess.png" width="270" height="600"> <img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/ProfileScreen.png" width="270" height="600"> <img src="https://raw.githubusercontent.com/demola234/defiraise_mobile/main/screenshots/CreateDonationScreen.png" width="270" height="600">