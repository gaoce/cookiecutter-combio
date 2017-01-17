cookiecutter-combio-analysis
============================

A [cookiecutter](https://github.com/audreyr/cookiecutter) template for
organizing a general computational biology analysis project. It is suitable for
data analysis and visualization, but not for software development.

Instruction
-----------

To start a new computational biology project:

`cookiecutter gh:gaoce/cookiecutter-combio-analysis`

Then follow the steps below:

1. Put raw data into `data/raw/` folder.
1. Keep your code in `src/`, put them under version control.
1. Take a snapshot of your results regularly using `make stamp`<sup>[1]</sup>.
1. Tag your code corresponding to the current snapshot with `make tag`.
1. Write new target in `Makefile` to drive the computation of your code.

<sup>[1]</sup>It will create subfolders with date stamp in `data/`, `results/`,
    `notes` and `log/`, e.g. `data/data_20xx_xx_xx`. The latest subfolders are
    always aliased by `data/current`, `results/current`, `notes/current` and
    `log/current`, which can (should) be referenced in your code.

Requirements
------------
* [`cookiecutter`](https://github.com/audreyr/cookiecutter):
Install `cookiecutter` command line tool: `$ pip install cookiecutter`.

* [`GUN make`](https://www.gnu.org/software/make/): Available in most *nix
systems.

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

Details
-------

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
1) saves storage space and 2) avoids unnecessary common data re-building. These
huge data files should not be generated carelessly and by no means their sizes
alone be considered the project outcome.

License
-------
This project is licensed under the terms of the [MIT License](/LICENSE).

Origin
------
This project is based on
[cookiecutter-reproducible-science][1] and [cookiecutter-data-science][2]
[1]: https://github.com/mkrapp/cookiecutter-reproducible-science
[2]: https://github.com/drivendata/cookiecutter-data-science

Reference
---------

1. Noble WS (2009) A Quick Guide to Organizing Computational Biology Projects.
PLoS Comput Biol 5(7): e1000424. doi:10.1371/journal.pcbi.1000424
1. Wilson, Greg, et al. (2016) Good Enough Practices in Scientific Computing.
arXiv preprint arXiv:1609.00037

