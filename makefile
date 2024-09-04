# Define variables
VENV_DIR = .venv
PYTHON = $(VENV_DIR)/Scripts/python
PIP = $(VENV_DIR)/Scripts/pip
REQUIREMENTS = requirements.txt
SCRIPT = main.py

# Default target
all: run

# Create virtual environment
$(VENV_DIR)/Scripts/activate:
	@echo "Creating virtual environment..."
	@python -m venv $(VENV_DIR)

# Install requirements
install: $(VENV_DIR)/Scripts/activate
	@echo "Installing requirements..."
	@$(PIP) install -r $(REQUIREMENTS)

# Run the script
run: install test
	@echo "Running the script..."
	@$(PYTHON) $(SCRIPT)

# Run tests with pytest
test: install
	@echo "Running tests..."
	@$(VENV_DIR)/Scripts/pytest -vv

# Clean up the virtual environment
clean:
	@echo "Removing virtual environment..."
	@rm -rf $(VENV_DIR)

.PHONY: all install run test clean
