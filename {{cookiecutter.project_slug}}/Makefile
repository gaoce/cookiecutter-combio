help: ## [Supp] Show this help message. [Supp] indicates supporting utilities.
	@echo -e 'Usage:\n\tmake <target>\n\nTargets:'
	@sed -n -e 's/^\([^@:]*\):\(.*\)#\+ \+\(.*\)/\t\1#\3/p' ${MAKEFILE_LIST} | column -t -c 2 -s '#'

stamp:      stamp_str := $(shell date '+%Y_%m_%d')        ## [Supp] Create sub-folders in `results`, `data` and `log` with date stamp, pointed by `current`s inside.
stamp-time: stamp_str := $(shell date '+%Y_%m_%d-%H_%M')  ## [Supp] In a rare situation, create sub-folders with date-time stamp.
dirs = results data log
stamp stamp-time: tag
	@# Create within each folder (${dirs}) a sub-folder with date or date-time stamp
	@for dir in ${dirs}; do mkdir -p $${dir}/$${dir}_${stamp_str}; done
	@# Link `current` to newly created sub-folders
	@for dir in ${dirs}; do cd $${dir}; rm -f current; ln -sf $${dir}_${stamp_str} current; cd ..; done
	@# Report to stdout
	@echo "Project date[-time] stamp created."
	@for dir in ${dirs}; do printf "%11s/current -> %15s_${stamp_str}\n" $${dir} "$${dir}/$${dir}"; done

tag:  ## [Supp] Create/update a git tag with the current date[-time] stamp
	@if [ -a data/current ]; then git tag -f $$(basename $$(readlink data/current) | sed 's/data_//'); fi
	@if [ -a data/current ]; then echo "Tagging current code status: $$(basename $$(readlink data/current) | sed 's/data_//')"; fi
