# --- config ---
SRC := rerzoged

# --- phony ---
.PHONY: xex clean run runa cp rel showver distclean

# --- build ---
xex:
	xasm $(SRC).xsm -l $(SRC).lst -o $(SRC).xex

# --- release with auto-incremented version + timestamp ---
rel: xex
	@set -e; \
	V=$$(cat VERSION 2>/dev/null || echo 0); \
	N=$$((V+1)); \
	echo $$N > VERSION; \
	TS=$$(date +"%Y-%m-%d_%H-%M"); \
	cp "$(SRC).xex" "$(SRC)-r$$N-$$TS.xex"; \
	echo "Created: $(SRC)-r$$N-$$TS.xex (VERSION=$$N, built at $$TS)"

# --- show current version ---
showver:
	@echo "VERSION=$$(cat VERSION 2>/dev/null || echo 0)"

# --- runners ---
run: xex
	atari800 -nojoystick -run $(SRC).xex

runa: xex
	wine c:/altirra/altirra64.exe $(SRC).xex

# --- cleanup ---
clean:
	rm -f *.xex *.lst

distclean: clean
	rm -f VERSION
