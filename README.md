# Run Bloaty McBloatface on your C++ binaries

Perform binary bloat analysis on your native binaries.

## Quickstart
```
    - name: Bloat analysis
        uses: djarek/bloaty-analyze@v1
        with:
            file: build/mylib.a
    - name: Bloat analysis - diff
        uses: djarek/bloaty-analyze@v1
        with:
            file: build/mylib.a
            base-file: build/mylib-prevcommit.a
```
## Usage

### Pre-requisites
Create a workflow `.yml` file in your repositories `.github/workflows`
directory. For more information, reference the GitHub Help Documentation for
[Creating a workflow
file](https://help.github.com/en/articles/configuring-a-workflow#creating-a-workflow-file).

### Inputs
* `demangle-mode` - Sets the demangle mode. Allowed values: `none`, `full`,
  `short`. Default value: `short`.
* `domain` - Sets the bloat domain. Allowed values: `vm`, `file`, `both`.
  Default value: `both`.
* `rows` - Maximum number of rows shown. Default value: `20`. Set to `0` to
  remove the limit.
* `sources` - Comma separated list of data sources.
* `file` - Input file to be analyzed. Required.
* `base-file` - Base file used for bloat diffs. Absolute will be shown if not
  set.

### Outputs
* `analysis-result` - Contains the human-readable analysis result.
