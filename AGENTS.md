# Repository Guidelines

## Project Structure & Module Organization
This repository is a small Go utility for saving and revisiting filesystem locations.

- `src/` contains the Go sources: `main.go` for CLI flow, `tp.go` for core location logic, and `utils.go` for helpers.
- `bin/tpbin` is the compiled binary output from `make`.
- `adapters/` contains shell adapters for `bash`, `fish`, and `zsh`.
- `demoPictures/` holds screenshots used by the README.

## Build, Test, and Development Commands
- `make` builds the binary into `bin/tpbin` from `src/*.go`.
- `./bin/tpbin -h` prints the CLI help after building.
- `./bin/tpbin -l` lists saved locations.
- `./bin/tpbin -c name /path/to/dir` saves a location.

There is no dedicated test suite in the repository today.

## Coding Style & Naming Conventions
Follow standard Go formatting and keep the code `gofmt`-compatible.

- Use tabs for indentation in Go files.
- Prefer short, descriptive names for CLI actions and helpers.
- Keep exported names capitalized only when they must be shared across files; most code in this repo is package-private.
- Shell adapter paths should stay explicit and simple, for example `TP_BIN="/home/user/opt/Teleport/bin/tpbin"`.

## Testing Guidelines
No automated tests are currently defined. When changing behavior, validate manually with the built binary:

- create a location
- list locations
- print a saved path
- remove a saved path

If you add tests later, place them next to the Go sources using standard Go naming such as `*_test.go`.

## Commit & Pull Request Guidelines
Recent commit messages are short, imperative, and informal, such as `Changed readme` or `Adapters for bash and zsh!`.

- Keep commits focused on one change.
- In pull requests, describe the user-visible behavior change and any shell-specific impact.
- Include screenshots only when the UI or README images change.

## Configuration Notes
The binary stores locations under `~/.config/Teleport/locations/` and uses `/tmp/tp` for temporary state. Be careful when changing those paths, since the adapters and shell behavior depend on them.
