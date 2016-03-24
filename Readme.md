# Git Scrum

Git scripts om het ontwikkelen met EduArte te vergemakkelijken.

## Installatie

Clone deze repository op een locatie waar je er makkelijk bij kan `$HOME/scripts/git-scrum`.

Voeg de directory toe aan je path, b.v. voeg toe in jouw `.bash_profile`:

    export PATH=$HOME/bin/git-scrum:$PATH

Start jouw shell opnieuw op om van het nieuwe pad gebruik te maken.

## Overview

Er zijn 4 source/bron branches:

1. master/release (volgende release)
2. valuepack (volgende value pack)
3. acceptatie (patches voor de acceptatie versie)
4. patch (patches voor de productie versie)

Ontwikkeling vindt plaats op een *feature branch* op basis van 1 van de bovengenoemde branches.
Er is ook nog een productie branch, hier wordt niet op ontwikkeld.

## Commando's
- `task-start` - maak een feature branch (geef aan welke source branch je gebruikt)
- `task-update` - merge de source branch in jouw feature branch
- `task-merge` - merge de feature branch naar de source branch en verwijder de feature branch
- `task-switch` - wissel tussen tasks (feature branches)
- `task-sync` - synchroniseer met upstream en verwijder branches die niet meer bestaan
- `task-list` - geef een lijst van alle openstaande feature branches
- `task-status` - geef de status van een specifieke task (done, busy, ...)

## Workflow

    git task-start $ID
    
    echo "hello world" > hello.txt
    git add hello.txt
    git commit
    
    git task-update $ID
    git task-merge $ID
