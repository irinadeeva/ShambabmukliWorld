# ShambabmukliWorld

## Overview

**ShambabmukliWorld** is an application for the demigod Shambabmukli. This application allows users to create a new world composed of cells that can either be alive or dead. With each button press, a new cell is added to the list based on the following rules:

- Each cell has an equal probability of being either alive or dead.
- Life emerges if three consecutive cells are alive.
- If three consecutive cells are dead, nearby life fades away.

## Features

**Cell Creation Screen:**
- Displays a list of all created cells.
  
Each cell follows these key properties:
- A cell can be either alive or dead.
- The sequence of cells influences life or death patterns in the world.
  
**Life Rules:**
- Life starts when three live cells appear in a row.
- Life extinguishes when three dead cells appear consecutively.

## Technologies Used

- **Swift**: The primary programming language used for iOS development.
- **MVVM**: A design pattern that separates the app's logic from the UI, improving code organization and reusability.

## Installation

To run the project locally, follow these steps:

1. Clone the repository from GitHub:
   ```bash
   git clone https://github.com/irinadeeva/ShambabmukliWorld.git
2. Open the project in Xcode:
   ```bash
   open ShambabmukliWorld.xcodeproj

   
