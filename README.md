# HVE Generate Tasks

An intelligent backlog generation tool that analyzes documents, transcripts, meeting notes, and requirements to automatically create structured backlogs with Epics, Features, User Stories, and Tasks.

## 🎯 Overview

This project provides an AI-powered assistant that transforms unstructured documentation into well-organized development backlogs. Perfect for product managers, engineering teams, and project stakeholders who need to quickly convert meeting transcripts and requirement documents into actionable development work.

## ✨ Features

- **Document Analysis**: Automatically processes transcripts, notes, requirement dumps, and specifications
- **Intelligent Parsing**: Identifies patterns, intent statements, technical requirements, and user needs
- **Structured Output**: Generates backlogs following standard Agile formats
- **Line References**: Traces backlog items back to source document lines for verification
- **Flexible Modes**: Choose between high-level decomposition or detailed backlogs
- **Multi-format Support**: Works with various document types and formats

## 🚀 Quick Start

### Prerequisites

- VS Code with GitHub Copilot extension
- Access to the workspace containing your documents

### Basic Usage

1. **Prepare your documents**: Place transcripts, meeting notes, or requirement documents in a folder
2. **Run the backlog generator**: Use the prompt with your document path
3. **Choose your mode**: Select either high-level or detailed backlog generation
4. **Review and save**: The tool will generate a structured backlog and offer to save it

### Example Command

```
Follow instructions in backlog-generator.prompt.md
document_path=/path/to/your/documents
mode=detailed
```

```
Go to copilot chat and run the prompt
/backlog-generator document_path=<path> mode=detailed
```

## 📁 Project Structure

```
.
├── .github/
│   └── prompts/
│       ├── backlog-generator.prompt.md    # Main prompt instructions
│       └── script/
│           └── line-number.sh             # Line numbering utility
├── docs/
│   └── transcripts/                       # Example documents
│       ├── transcript1.md                 # Sample meeting transcript
│       ├── transcript2.md                 # Sample technical discussion
│       └── BACKLOG_FROM_DOCUMENTS.md      # Generated backlog example
└── README.md                              # Project documentation
```

## 🔧 How It Works

### 1. Document Processing
The tool scans all documents in the specified path and runs a line-numbering script to enable precise referencing.

### 2. Requirement Extraction
- Parses all text content
- Identifies repeated patterns and themes
- Extracts problem statements and solution hints
- Groups related concepts into logical buckets

### 3. Backlog Generation

#### High-Level Mode
- Creates Epics with 2-3 line descriptions
- Adds Features under each Epic (1-2 lines)
- No User Stories or Tasks unless explicitly mentioned

#### Detailed Mode
- Full Epic → Feature → User Story → Task hierarchy
- User Stories in standard format: "As a [user], I want [capability] so that [benefit]"
- Actionable engineering tasks with checkboxes
- Line references for traceability

### 4. Output Structure

```markdown
# BACKLOG_FROM_DOCUMENTS

## Epic: [Epic Name]
Description: [2-3 lines]

### Feature: [Feature Name]
Description: [1-2 lines]

#### User Stories
- **User Story:** As a [user], I want [capability] so that [benefit].
Line Ref: [line number or "Not detected"]

#### Tasks
- [ ] Task 1
- [ ] Task 2
```

## 📋 Example Output

The tool generated a comprehensive backlog from sample transcripts including:

- **4 Epics**: Customer Support Automation, Device Onboarding, Smart Scheduling, Proactive Monitoring
- **8 Features**: Troubleshooting Assistant, Error Code Interpretation, Device Pairing, etc.
- **16 User Stories**: Complete with line references to source documents
- **42 Tasks**: Actionable engineering work items

See [BACKLOG_FROM_DOCUMENTS.md](docs/transcripts/BACKLOG_FROM_DOCUMENTS.md) for the complete example.

## 🎛️ Configuration

### Supported Document Types
- Meeting transcripts (`.md`)
- Requirement documents
- Brainstorming session notes
- Technical specifications
- User feedback compilations

### Modes
- **High-level**: `mode=high-level` - Epics and Features only
- **Detailed**: `mode=detailed` - Full hierarchy with User Stories and Tasks

## 📝 Best Practices

1. **Document Quality**: Ensure transcripts capture concrete requirements and user needs
2. **File Organization**: Group related documents in the same directory
3. **Review Generated Content**: Always validate the output against original requirements
4. **Iterative Refinement**: Use the tool as a starting point, then refine based on domain expertise

## ⚠️ Important Notes

- The tool extracts information only from provided documents - it doesn't invent requirements
- Generated backlogs should be reviewed and validated by domain experts
- Some nuances from original documents may not be fully captured by automated analysis
- Line references help trace back to source material for verification

---

*Generated backlogs should be reviewed by product managers and engineering teams to ensure accuracy and completeness.*