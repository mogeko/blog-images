IMAGE_DIRS       = $(shell pwd)/r

GIT = env git

new: $(IMAGE_DIRS)
	@echo "Directory \"$(IMAGE_DIRS)/$(NEW_IMAGE_DIR_ID)\" created."
	@mkdir -p $(IMAGE_DIRS)/$(NEW_IMAGE_DIR_ID)

commit:
	@-$(GIT) add .
	@-$(GIT) commit -m "Update: $(shell date +%Y-%m-%d)"

push: commit
	@-$(GIT) push
