help: ## Show this help message.
	@echo -e 'Usage:\n\tmake <target>\n\nTargets:'
	@sed -n -e 's/^\([^@:]*\):\(.*\)#\+ \+\(.*\)/\t\1#\3/p' ${MAKEFILE_LIST} | column -t -c 2 -s '#'

stamp:      stamp_str := $(shell date '+%Y_%m_%d')        ## Create sub-folders in `results`, `data`, `notes` and `log` with date stamp, pointed by `current`s inside.
stamp-time: stamp_str := $(shell date '+%Y_%m_%d-%H_%M')  ## In a rare situation, create sub-folders with date-time stamp.
dirs = results data notes log
stamp stamp-time:
	@# Remove `current` symlinks
	@for dir in ${dirs}; do rm -f $${dir}/current; done
	@# Create within each folder (${dirs}) a sub-folder with date or date-time stamp
	@for dir in ${dirs}; do mkdir -p $${dir}/$${dir}_${stamp_str}; done
	@# Link `current` to newly created sub-folders
	@for dir in ${dirs}; do cd $${dir}; ln -s $${dir}_${stamp_str} current; cd ..; done
	@# Report to stdout
	@echo "Project date[-time] stamp created."
	@for dir in ${dirs}; do printf "%11s/current -> %15s_${stamp_str}\n" $${dir} "$${dir}/$${dir}"; done

tag:  ## Create/update a git tag with the current date[-time] stamp
	@echo "Tagging current code status: $$(basename $$(readlink data/current) | sed 's/data_//')"
	@git tag -f $$(basename $$(readlink data/current) | sed 's/data_//')
