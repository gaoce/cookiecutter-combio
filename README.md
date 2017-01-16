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
