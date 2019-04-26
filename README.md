# Haskell-Environment
This is a little starter setup I built for tinkering with Haskell. It is not optimal and I am not an expert in Haskell. Use at your own risk.

## Enter Haskell Environment
* run `./sshcontainer`
* You should be in the container in directory `/app/haskell-environment`

## Run Tests
* run `htest`
* This will run all specs in the `tests` directory and import modules from the `src` directory
* Specs need to follow to these rules to be automatically loaded
    * each spec must export a module with the member `spec` of type `Spec`
    * each spec module name must follow the directory structure under tests and end with the name of the file
        * `tests/Math/FunctionsSpec.hs` must declare the module as follows: `module Math.FunctionsSpec (spec) where`  
## Run Haskell Code manually
* Use `ghci` to enter the haskell repl
    * Load files with `:l /my/path/to/file.hs`
    * execute functions from that file like `doubleMe 2`
* Use `runhaskell /path/to/file.hs` to run a file that exports a `main :: IO ()` function

## Ressources:
* https://hspec.github.io/
* https://hspec.github.io/hspec-discover.html