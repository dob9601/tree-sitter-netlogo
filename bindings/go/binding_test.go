package tree_sitter_netlogo_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_netlogo "github.com/tree-sitter/tree-sitter-netlogo/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_netlogo.Language())
	if language == nil {
		t.Errorf("Error loading NetLogo grammar")
	}
}
