#!/usr/bin/env zsh

. ~/dotfiles/.functions

psql -d test_database -f date-range.sql --no-align --field-separator ',' --pset footer=off | 
  ggplot 'ggplot(df, aes(x=year_month, y=value)) + 
    geom_col(fill="blue") + 
    labs(title="Monthly Data", x="Year-Month", y="Value")' | 
  imgc
