all: install

install:
	@true

build:
	@docker build -t amoceridf/dev-python .

start:
	@docker run -it --rm amoceridf/dev-python || true