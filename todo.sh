#!/bin/bash

TODO_FILE="$HOME/todo.txt"
while true
do
    echo ""
    echo "===== TO-DO LIST MANAGER ====="
    echo "1. View all tasks"
    echo "2. Add a new task"
    echo "3. Delete a task"
    echo "4. Exit the program"
    
    read -p "Choose an option: " choice
    case $choice in

# view task

        1)
            echo ""
            echo "Your Tasks:"
            nl -w2 -s'. ' "$TODO_FILE"
            ;;

# add new task

        2)
            read -p "Enter new task: " task
            echo "$task" >> "$TODO_FILE"
            echo "Task added!"
            ;;

# delete a task

        3)
            echo ""
            nl -w2 -s'. ' "$TODO_FILE"

            read -p "Enter task number to delete: " task_number

            sed -i '' "${task_number}d" "$TODO_FILE"

            echo "Task deleted!"
            ;;

# exit program

        4)
            echo "Goodbye!"
            break
            ;;

    esac
done
