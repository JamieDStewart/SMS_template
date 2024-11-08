# SMS_template

This is a repository demonstrating how to implement a basic Sega Master System development setup using Visual Studio Code with no dependencies on any existing libraries using CMake and WLA-DX to compile and link the binary.

The VS Code plugin Emulicious Debugger is used for debugging the binary.

This repository additoinally uses GitHub Actions to demonstrate how these can be used with a SMS development project to help maintain the stability of the build.

##Dependencies

Building the project requires the use of [CMake](https://cmake.org/download/) and [Ninja](https://github.com/ninja-build/ninja/releases). These can be installed from their respective links, once Ninja is installed you should add it to the PATH environment variable so that it will be picked up in the CMake build process for the project.

### VS Code Extensions

To make everything a bit nicer in VS code there are a couple of extensions that you will want to have installed:
  [Emulicious Debugger](https://marketplace.visualstudio.com/items?itemName=emulicious.emulicious-debugger)
  [RGBDS Z80](https://marketplace.visualstudio.com/items?itemName=donaldhays.rgbds-z80)
  [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake)
  [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)

##Emulators 

Unless you're going to build the rom and put it straight onto a physical SMS you will need to make use of an emulator for testing and debugging purposes. I recommend using [emulicious](https://emulicious.net/downloads/) as it has a works with debugging the way this repository is set up (on Windows -- sorry to those of you on Unix, though I will implement Unix support on this repo).  

**Note:** For Emulicious debugging to launch and work properly this to work properly you'll need to either install Emulicious to a folder within this workspace I use *_emulators* and install emulators to that directory. Or you can modify the following line in the **launch.json** file.
```
"emuliciousPath": "${workspaceFolder}/_emulators/Emulicious
```

## Building the Binary

Once all of the above has been squared away you should be able to make this project.

*Step 1:* Run the CMake Configuration by pressing ctrl+shift+p and selecting CMake:Configure. Read any output messages, to make sure there are no errors. If there are any ensure that you have the correct environment variables set up and that all dependencies are installed.

*Step 2:* Once CMake is configured then you can build the project by pressing ctrl+shift+p and selecting CMake:Build. This will fire off the build process and hopefully you'll get a build folder and an SMS_template.sms and an SMS_template.sym file produced at the end of the build process.

*Step 3:* Debugging the SMS rom. Press F5 to begin debugging, if all your paths are set up you should be good to go. You should then be presented with a debug view, where you can navigate through the code line by line and track individual values and memory addresses, set breakpoints and generally figure out what the code is doing!