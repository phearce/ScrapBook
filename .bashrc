#!/bin/bash
ppath="/c/-projects/-github"
cd $USERPROFILE/Source/Repos
unset PROJECTS
PROJECTS+=(".")
i=0

echo
echo -e "projects:\n-------------"

for f in *
do
    if [ -d "$f" ]
    then
        PROJECTS+=("$f")
        echo -e $((++i)) "- \e[1m$f\e[0m"
    fi
done


if [ ${#PROJECTS[@]} -gt 1 ]
then
    echo -ne "\nchoose project: "
    read proj
    case "$proj" in
        [0-`expr ${#PROJECTS[@]} - 1`]) cd "${PROJECTS[proj]}" ;;
        *) echo " wrong choice" ;;
    esac
else
    echo "there are no projects"
fi
unset PROJECTS