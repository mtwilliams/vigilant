# Vigilant

Vigilant is a simple unit test generator for C/C++. It generates a single compilable file based off of a directory of .tests. Tests are hierarchical, so use folders to represent test suites.

# Usage

Make sure you have a vigilant.options file in the root of the directory that looks something like this:

    {
      "output": "run_tests.cc",
      "includes": "bt/foundation.h"
    }

Run the `vigilant` binary and pass it your .tests directory:

    $ vigilant gen tests
    Generating tests...
    tests/foundation/array/resize.test
    tests/foundation/array/iterator.test
    tests/foundation/array/swap.test
    ---
    tests/foundation/byte_buffer/read_and_write.test
    Generated 23 tests.

# Installing

    $ gem install vigilant

# Contributing

Just fork, branch `feature-name`, and send a pull-request.

# License

MIT, see LICENSE.md for more info.