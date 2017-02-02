clean:
	cd {{cookiecutter.project_slug}}; \
		rm -rf data log results reports history/*; \
		mkdir data log results reports; \
		touch data/.gitkeep log/.gitkeep results/.gitkeep reports/.gitkeep history/.gitkeep
