/**
 * @file A TreeSitter parser for the NetLogo language
 * @author Dan O'Brien <dob9601@gmail.com>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "netlogo",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
