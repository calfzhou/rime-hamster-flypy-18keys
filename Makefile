SKIN_DIR := skin
DIST_DIR := dist

SKINS := $(notdir $(wildcard $(SKIN_DIR)/*))
HSKIN_FILES := $(addprefix $(DIST_DIR)/,$(addsuffix .hskin,$(SKINS)))

.PHONY: all rebuild hskin clean list

all: rebuild

rebuild: clean hskin

hskin: $(HSKIN_FILES)

$(DIST_DIR)/%.hskin: $(SKIN_DIR)/%
	@mkdir -p $(DIST_DIR)
	@cd $(SKIN_DIR) && zip -qr "../$(DIST_DIR)/$*.zip" "$*"
	@mv "$(DIST_DIR)/$*.zip" "$@"
	@echo "Built $@"

list:
	@printf '%s\n' $(SKINS)

clean:
	@rm -f $(DIST_DIR)/*.hskin $(DIST_DIR)/*.zip
