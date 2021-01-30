ZIP=zip
VERSION=0.0.1

AQUACULTURE_CONFIGS:=\
overrides/config/aquaculture-common.toml

BETTERCAVES_CONFIGS:=\
overrides/config/bettercaves-1_16.toml \
overrides/config/bettercaves/README.txt

BETTERMINESHAFTS_CONFIGS:=\
overrides/config/bettermineshafts-forge-1_16.toml \
overrides/config/bettermineshafts/README.txt

BIOMESOPLENTY_CONFIGS:=\
overrides/config/biomesoplenty/biomes.json \
overrides/config/biomesoplenty/client.toml \
overrides/config/biomesoplenty/generation.toml

CREATE_CONFIGS:=\
overrides/config/create-client.toml \
overrides/config/create-common.toml

QUARK_CONFIGS:=\
overrides/config/quark-common.toml

SERENESEASONS_CONFIGS:=\
overrides/config/sereneseasons/biome_info.json \
overrides/config/sereneseasons/fertility.toml \
overrides/config/sereneseasons/seasons.toml

JEI_CONFIGS:=\
overrides/config/jei-client.toml

FORGE_CONFIGS:=\
overrides/config/fml.toml \
overrides/config/forge-client.toml \
overrides/config/forge-common.toml

CONFIGS:=\
$(AQUACULTURE_CONFIGS) \
$(BETTERCAVES_CONFIGS) \
$(BETTERMINESHAFTS_CONFIGS) \
$(BIOMESOPLENTY_CONFIGS) \
$(CREATE_CONFIGS) \
$(QUARK_CONFIGS) \
$(SERENESEASONS_CONFIGS) \
$(JEI_CONFIGS) \
$(FORGE_CONFIGS)

build/Minekeller-$(VERSION).zip: manifest.json $(CONFIGS)
	$(ZIP) $@ $?

all: build/Minekeller-$(VERSION).zip
