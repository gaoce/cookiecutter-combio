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
    |-- lib                     Extenal code/binary files.
    |-- data                    Data folders.
    |   `-- raw                 Folder with raw data.
    |-- log                     Log files.
    |   |-- current
    |   |-- log_yyyy_mm_dd
    |   `-- ...
    |-- reports                 Reports, notes, figures for publication.
    |   |-- current
    |   |-- reports_yyyy_mm_dd
    |   `-- ...
    |-- results                 Results.
    |   |-- current
    |   |-- results_yyyy_mm_dd
    |   `-- ...
    `-- src                     Scripts/software created for this project.

Rationale and Assumptions
-------------------------

1. Data state should only depend on analytic scripts.
1. Storage is relatively cheap. Because no-reproducible method is perfect, we
   inevitably creaet some artifacts during result presentation. It is highly
   desirable to make a record of these results so that we can trace the history
   of the project.
1. A scripting language, such as python and R, is used.

Instructions
------------

A `Makefile` file is provided for development automation. The targets are
in two files: `config/make.help` has the basic utilities, `config/make.sync`
contains targets to sync with remote server (you need to fill in the server
info).

When the project is created, a git repo is initialized, but not committed.

The first step is `make stamp` to create date-stamped folders in `reports`,
`results` and `log` directories. There will be a `current` symlink points to
these folders, so your code should only consider `current`.

`data` directory has a `raw` folder, contains data from outside the project.
They should not be touched, ever.

Intermediate data should be kept in `data` and not date-stamped. This practice
1) saves storage space and 2) avoids unnecessary common data re-building.
