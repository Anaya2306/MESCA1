8051 Assembly Programs – MES CA-1

This repository contains 8051 Assembly Language Programs developed for Microprocessor and Embedded Systems (MES) – Continuous Assessment 1 (CA-1).
All programs are written with strict adherence to instruction constraints and verified on an 8051 simulator (EdSim51).

The purpose of this repository is to provide clean, runnable, and well-structured assembly code instead of simulator screenshots.

Student Information

Name: Anaya Shende

Semester: 4

Course: Microprocessor and Embedded Systems

Tools & Environment

Processor: Intel 8051

Simulator: EdSim51

Language: 8051 Assembly

Memory Used: Internal RAM

Program Summary
Q1. PRN Digit Generation (Arithmetic Instructions)

Generates the last four digits of the PRN

Uses arithmetic instructions only

Final output stored in Accumulator (A)

Q2. Unsigned Number Comparison

Compares values at RAM locations 50H and 51H

Does not use CJNE, DJNZ, or SUBB

Output encoding:

01H → 50H > 51H

00H → Equal

FFH → 50H < 51H

Q3. Direct vs Indirect Addressing

Demonstrates why direct and indirect addressing are not equivalent

Shows different results despite referencing the same memory address

Q4. PRN Digit Generation (Logical Instructions)

Generates the last four digits using logical instructions only

Avoids direct loading of the complete number

Q5. Internal RAM Data Compaction

Compacts data from 40H–5FH

Removes FFH, shifts valid data left, fills remaining space with 00H

Uses only indirect addressing

No extra RAM or stack usage

How to Run

Open EdSim51

Load the required .asm file

Assemble and run the program

Observe the Accumulator, Registers, and Internal RAM

Notes

Code is written for clarity, correctness, and exam compliance

Suitable for academic evaluation, viva, and revision

Structured for easy reuse and GitHub presentation

Author

Anaya Shende
B.Tech – Semester 4
