create_readme:
        @> README.md

add_title:
        @echo -e "Peer Graded Assignment:Bash,make,git and git hub" >> README.md

add_date_time:
        @echo -e "Date and time :`date +'%D:%H:%M:%S'`" >> README.md

number_line:
        @echo -e "The number of line are ` wc -l guessinggame.sh|cut -d' ' -f1`" >> README.md

