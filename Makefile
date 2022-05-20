XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/Custom\ Templates
XCODE_USER_SNIPPETS_DIR=~/Library/Developer/Xcode/UserData/CodeSnippets

TEMPLATES_DIR=Templates
SNIPPETS_DIR=Snippets

all:
	if [ ! -d $(XCODE_USER_TEMPLATES_DIR) ]; then \
		mkdir -p $(XCODE_USER_TEMPLATES_DIR); \
	fi
	if [ ! -d $(XCODE_USER_SNIPPETS_DIR) ]; then \
		mkdir -p $(XCODE_USER_SNIPPETS_DIR); \
	fi
	cp -R $(TEMPLATES_DIR)/* $(XCODE_USER_TEMPLATES_DIR)
	cp -R $(SNIPPETS_DIR)/* $(XCODE_USER_SNIPPETS_DIR)

templates:
	if [ ! -d $(XCODE_USER_TEMPLATES_DIR) ]; then \
		mkdir -p $(XCODE_USER_TEMPLATES_DIR); \
	fi
	cp -R $(TEMPLATES_DIR)/* $(XCODE_USER_TEMPLATES_DIR)

snippets:
	if [ ! -d $(XCODE_USER_SNIPPETS_DIR) ]; then \
		mkdir -p $(XCODE_USER_SNIPPETS_DIR); \
	fi
	cp -R $(SNIPPETS_DIR)/* $(XCODE_USER_SNIPPETS_DIR)

# uninstall_all:
# 	rm -fR $(XCODE_USER_TEMPLATES_DIR)
# 	rm -fR $(XCODE_USER_SNIPPETS_DIR)/*

uninstall_templates:
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)

# uninstall_snippets:
# 	for file in $(shell ls ${SNIPPETS_DIR}); do \
# 		echo $(XCODE_USER_SNIPPETS_DIR)/$${file}; \
# 	done;