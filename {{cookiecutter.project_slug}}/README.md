{{cookiecutter.project_slug}}
=============================

{{cookiecutter.project_short_description}}

Project Organization
--------------------

    .
    |-- AUTHORS.md              Author information.
    |-- LICENSE                 [Optional] license.
    |-- Makefile                Provide targets for development automatation.
    |-- README.md               This file.
    |-- config                  Config files, not under version control.
    |   |-- make.help
    |   |-- make.sync
    |   `-- ...
    |-- notes                   Notes and documentations.
    |-- lib                     Extenal code/binary files.
    |-- data                    Data folders.
    |   |-- current             Symlink, points to the latest folder.
    |   |-- data_yyyy_mm_dd     Data files with date stamp.
    |   |-- ...
    |   `-- raw                 Folder with raw data.
    |-- log                     Log files.
    |   |-- current
    |   |-- log_yyyy_mm_dd
    |   `-- ...
    |-- reports                 Reports, polished figures for publication.
    |   |-- current
    |   |-- reports_yyyy_mm_dd
    |   `-- ...
    |-- results                 Results.
    |   |-- current
    |   |-- results_yyyy_mm_dd
    |   `-- ...
    `-- src                     Scripts/software created for this project.

Instructions
------------

A `Makefile` file is provided for development automation. The targets are
in two files: `config/make.help` has the basic utilities, `config/make.sync`
contains targets to sync with remote server (you need to fill in the server
info).

When the project is created, a git repo is initialized, but not committed.

The first step is `make stamp` to create date-stamped folders in `reports`,
`results`, `data` and `log` directories. There will be a `current` symlink
points to these folders, so your code should only consider `current`.

`data` directory has a `raw` folder, contains data from outside the project,
they should not be touched, ever.

Some intermediate data may look like results also, that's OK. As long as you
know where to find them.
