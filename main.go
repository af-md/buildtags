package main

import (
	"flag"
	"fmt"
	"os"
)

// These variables will be set during build time
var (
	version = "v0.0.0"
	commit  = "none"
	date    = "unknown"
)

func main() {
	// Add a version flag to display build information
	versionFlag := flag.Bool("version", false, "Display version information")
	flag.Parse()

	if *versionFlag {
		fmt.Printf("Version: %s\nCommit: %s\nBuild Date: %s\n", version, commit, date)
		os.Exit(0)
	}

	// Normal program execution
	fmt.Println("Hello, World!")
	fmt.Println("Run with -version flag to see build information")
}