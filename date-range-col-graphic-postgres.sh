#!/usr/bin/env zsh

. ~/dotfiles/.functions

psql -d test_database -f date-range-small-postgres.sql --no-align --field-separator ',' --pset footer=off |
  ggplot -f date-range-small.R |
  imgcat

psql -d test_database -f date-range-large-postgres.sql --no-align --field-separator ',' --pset footer=off |
  ggplot -f date-range-large.R |
  imgcat
