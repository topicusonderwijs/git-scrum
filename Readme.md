# Git scripts to simplify development using feature branches (Scrum tasks)


## Overview

There are 4 types of branches in this setup:

1. master
2. feature branches (tasks)
3. test branch(es)
4. release branch

Development takes place in *feature branches* that correspond to Scrum *tasks*. A feature branche is merged back into master after it has been tested and approved by the product owner. In theory this should mean that *master* is always stable. Bug-fixing for *tasks* that have already been merged into *master* (this shouldn't happen often) are done directly on *master*.
The *release branch* tracks the last result from a sprint and can be used for the product demo.
*Test branches* are used to test an in-progress task on an external environment (for example, a Jenkins task that periodically pulls, builds and tests the *test branch*).

## Commands

- `task-done` - merge the feature branch into master and delete it
- `task-list` - list all tasks and their status (both you and colleagues)
- `task-reject` - same as task-sync
- `task-start` - create a new remote+local feature branch
- `task-status` - display the status of a single task (done, busy, ...)
- `task-switch` - Switch between tasks (feature branches)
- `task-sync` - synchronize with upstream and remove branches that have already been fully merged into master
- `task-test`- push a task that is busy to a testing branch
- `task-update` - merge the commits in master back into your feature branch

## Example workflow

    git task-start $ID
    
    echo "hello world" > hello.exe
    git add hello.exe
    git commit
    
    git task-update
    git task-test
    git task done
    
    git task-sync



