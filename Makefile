# Define the source directories
SRC_DIR := com/lox
TOOL_DIR := com/tool

# Define the output directory
OUT_DIR := out

# Define the main class (replace with your main class)
MAIN_CLASS := com.lox.Lox

# Java compiler and runtime
JAVAC := javac
JAVA := java
JAR := jar

# Find all Java source files in the SRC_DIR and TOOL_DIR
SOURCES := $(wildcard $(SRC_DIR)/*.java) $(wildcard $(TOOL_DIR)/*.java)

# Find the target class files in the OUT_DIR
CLASSES := $(SOURCES:$(SRC_DIR)/%.java=$(OUT_DIR)/%.class) $(SOURCES:$(TOOL_DIR)/%.java=$(OUT_DIR)/%.class)

# Name of the output JAR file
JAR_FILE := lox.jar

# Default target: build the project and create the JAR file
all: $(OUT_DIR) $(CLASSES) $(JAR_FILE)

# Compile all .java files to .class files
$(OUT_DIR)/%.class: $(SRC_DIR)/%.java
	$(JAVAC) -d $(OUT_DIR) $<

$(OUT_DIR)/%.class: $(TOOL_DIR)/%.java
	$(JAVAC) -d $(OUT_DIR) $<

# Create the output directory if it doesn't exist
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

# Package the classes into an executable JAR file
$(JAR_FILE): $(CLASSES)
	$(JAR) cfe $(JAR_FILE) $(MAIN_CLASS) -C $(OUT_DIR) .

# Run the program (with a file argument)
run: $(JAR_FILE)
	$(JAVA) -jar $(JAR_FILE) $(ARGS)

# Clean up compiled files and JAR file
clean:
	rm -rf $(OUT_DIR) $(JAR_FILE) boiler/

# .PHONY target for clean and run
.PHONY: clean run

