# psHelpers

Small PowerShell utility functions.

## Installation

```powershell
install-module psHelpers
```

## Usage

`get-textFromInput <param>` resolves an input value as follows:

- If the value of `<param>` is `clipboard`, it returns the content of the clipboard.
- If it corresponds to the path of an existing file, it returns the file contents as a single string.
- Any other value is returned unchanged.

```powershell
get-textFromInput clipboard
get-textFromInput ./input.txt
get-textFromInput 'literal text'
```
