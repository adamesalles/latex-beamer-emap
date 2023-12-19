#!/bin/bash

# Function to ask for input with a default value
ask() {
    local prompt="$1"
    local default="$2"

    # Read from the user's terminal
    read -p "$prompt [$default]: " input </dev/tty
    echo "${input:-$default}"
}

# Give a message to the user
echo "Welcome to the LaTeX Beamer Template for EMAp - by Adame"

# Define the repository URL
REPO_URL="https://github.com/adamesalles/latex-beamer-emap.git"

name=$(ask "Enter your project name" "latex-beamer-emap")

# # Clone the repository
git clone "$REPO_URL" "$name" || { echo "Failed to clone repository."; exit 1; }

# # Navigate to the repository directory
cd "$name" || { echo "Repository not found."; exit 1; }


# Function to format authors based on count
format_authors() {
    local count="$1"
    local authors=""
    local email=""

    if [ $count -lt 1 ] || [ $count -gt 5 ]; then
        echo "Invalid number of authors."
        exit 1
    fi

    for ((i = 1; i <= count; i++)); do
        author_name=$(ask "Enter name of author $i" "Author $i")
        author_email=$(ask "Enter email of author $i" "email$i@example.com")

        if [ $i -gt 1 ]; then
            if [ $i -eq 2 ]  || [ $i -eq 4 ]; then
                authors+="\n \\\and \n"
            elif [ $i -eq 3 ] || [ $i -eq 5 ] || [ $count -gt 3 ]; then
                authors+="\\\\\\\\ \\\vspace{.2cm} \\\hspace{.2cm}\n"
            elif [ $i -eq 3 ] || [ $count -eq 3 ]; then
                authors+="\\\\\\\\ \\\vspace{.2cm} \n"
            fi

        fi

        authors+="\\\newauthor{$author_name}{$author_email}"
    done

    echo "$authors"
}

# Ask for presentation details
title=$(ask "Enter the title" "Default Title")
num_authors=$(ask "Enter number of authors (1-5)" 1)
authors=$(format_authors "$num_authors")
date=$(ask "Enter the date" "\\\today")
place=$(ask "Enter the place" "Rio de Janeiro, Brazil")
special_thanks=$(ask "Enter special thanks" "Crazy Frog")
# language=$(ask "Enter the language (Portuguese/English)" "English")

# Replace placeholders in main.tex
sed -i "s/:title:/$title/g" main.tex
sed -i "s/:authors:/$authors/g" main.tex
sed -i "s/:date:/$date/g" main.tex
sed -i "s/:place:/$place/g" main.tex
sed -i "s/:special\-thanks:/$special_thanks/g" main.tex
# sed -i "s/\:language\:/$language/g" main.tex

echo "Enjoy your presentation!"
