#!/usr/bin/env zsh

. ~/dotfiles/.functions

mysql -u root test_database < date-range-small-mysql.sql |
  tsvtocsv |
  ggplot -f date-range-small.R |
  imgcat

mysql -u root test_database < date-range-large-mysql.sql |
  tsvtocsv |
  ggplot -f date-range-large.R |
  imgcat

