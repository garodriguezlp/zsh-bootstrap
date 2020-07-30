#!/bin/bash

escape_character="\u001b"; \
reset_escape_sequence="${escape_character}[0m"; \
for foreground in {0..7}; do \
    printf "Normal:  "; \
    for background in {0..7}; do \
        color_escape_sequence="${escape_character}[3${foreground};4${background}m"; \
        printf "${color_escape_sequence} Hello World\! ${reset_escape_sequence}  "; \
    done; \
    printf "\n"; \
    printf "Bright:  "; \
    for background in {0..7}; do \
        bright_color_escape_sequence="${escape_character}[1;3${foreground};4${background}m"; \
        printf "${bright_color_escape_sequence} Hello World\! ${reset_escape_sequence}  "; \
    done; \
    printf "\n"; \
done
