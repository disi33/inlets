package main

import (
	"github.com/disi33/inlets/cmd"
)

// These values will be injected into these variables at the build time.
var (
	Version   string
	GitCommit string
)

func main() {
	if err := cmd.Execute(Version, GitCommit); err != nil {
		panic(err)
	}
}
