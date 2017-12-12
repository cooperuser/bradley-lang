import Targone

// Define parser
var parser = ArgumentParser(summary: "Interpreter for the esoteric programming language Bradley.")

// Add main arguments
parser.addArgument(PositionalArgument<String>("text", defaultValue: "test", help: "the text to print"))

// Add optional arguments
parser.addArgument(OptionalArgument<Int>("num", shortLabel: "n", defaultValue: 1, help: "how many times to print the text"))
parser.addArgument(OptionalArgument<String>("execute", shortLabel: "e", help: "Run code straight from a string"))

// Add flag arguments
parser.addArgument(FlagArgument("quotes", shortLabel: "q", help: "enclose the text within quotes"))

let args = parser.parse()

let repetitions = args.intValue("num")!
// let text = args.stringValue("text")!
let quotes = args.boolValue("quotes")!

// Main script logic

let quotedText = "test"//quotes ? "\"\(text)\"" : text

(0..<repetitions).forEach { _ in
	print(quotedText)
}
