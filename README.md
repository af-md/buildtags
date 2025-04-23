### Step 3: Build the application

Run the build script to compile the application with version information:

bash./build.sh

### Step 4: Test the application

First, run it normally:

bash./versioned-app

This should output:
Hello, World!

Run with -version flag to see build information
Then check the version information:

bash./versioned-app -version

This should output something like:

Version: v1.2.3
Commit: abc1234
Build Date: 2025-04-23T12:34:56Z