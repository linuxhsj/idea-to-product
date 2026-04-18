#!/bin/bash
# idea-to-product setup script
# Run: bash install.sh

set -e

echo "Setting up idea-to-product..."

# 1. Clone superpowers (provides /superpowers:brainstorm, write-plan, execute-plan)
if [ -d ~/.claude/skills/superpowers ]; then
    echo "✓ superpowers already installed"
else
    echo "→ Cloning superpowers..."
    mkdir -p ~/.claude/skills
    git clone https://github.com/obra/superpowers.git ~/.claude/skills/superpowers
    echo "✓ superpowers installed"
fi

# 2. Clone awesome-design (provides UI design spec)
if [ -d ~/awesome-design-md ]; then
    echo "✓ awesome-design already installed"
else
    echo "→ Cloning awesome-design..."
    git clone https://github.com/VoltAgent/awesome-design-md.git ~/awesome-design-md
    echo "✓ awesome-design installed"
fi

# 3. Install idea-to-product skill
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -d ~/.claude/skills/idea-to-product ]; then
    echo "✓ idea-to-product skill already installed"
else
    echo "→ Installing idea-to-product skill..."
    mkdir -p ~/.claude/skills/idea-to-product
    cp "$SCRIPT_DIR/SKILL.md" ~/.claude/skills/idea-to-product/
    cp "$SCRIPT_DIR/commands/idea-to-product.md" ~/.claude/skills/idea-to-product/
    echo "✓ idea-to-product skill installed"
fi

echo ""
echo "Done! To activate:"
echo ""
echo "  Open Claude Code / OpenClaw / Cursor / Trae / Windsurf"
echo '  Type: /idea-to-product [your idea]'
echo ""
echo "Or paste this as your first message:"
echo ""
echo "  Follow the idea-to-product skill."
echo "  My idea: [describe what you want to build]"
