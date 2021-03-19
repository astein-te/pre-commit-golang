
pre-commit-golang
=================

golang hooks for http://pre-commit.com/

### Using these hooks

Add this to your `.pre-commit-config.yaml`

    - repo: git://github.com/astein-te/pre-commit-golang
      rev: master
      hooks:
        - id: go-fmt
        - id: go-imports
        - id: go-unit-tests
        - id: go-build
        - id: go-mod-tidy

### Available hooks

- `go-fmt` - Runs `gofmt`, requires golang
- `go-imports` - Runs `goimports`, requires golang.org/x/tools/cmd/goimports
- `go-unit-tests` - run `go test -tags=unit -timeout 30s -short -v`
- `go-build` - run `go build`, requires golang
- `go-mod-tidy` - run `go mod tidy -v`, requires golang
- `staticcheck` - run `staticcheck`, requires [staticcheck](https://staticcheck.io/docs/#installation)
