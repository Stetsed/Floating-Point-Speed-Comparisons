# Parameters to run each of the languages.
(Language)(Compile(If Needed))(Run)

Python - X - python3 calculate.py

C++ - g++ calculate.cpp -o calculate - ./calculate

Rust - rustc -C debuginfo=0 -C opt-level=3 calculate.rs - ./calculate

JS - X - node calculate.js