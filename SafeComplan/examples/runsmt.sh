#!/bin/bash

z3 constraints.smt2 > z3_output
perl processoutputfile.pl
