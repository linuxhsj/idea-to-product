#!/bin/bash
# idea-to-product setup script
# Run: bash install.sh

set -e

echo "Setting up idea-to-product..."

# 1. Clone superpowers (full repo — 14 skills, all needed for cross-references)
if [ -d ~/.claude/skills/superpowers ]; then
    echo "✓ superpowers already installed"
else
    echo "→ Cloning superpowers..."
    mkdir -p ~/.claude/skills
    git clone --depth 1 https://github.com/obra/superpowers.git ~/.claude/skills/superpowers
    echo "✓ superpowers installed"
fi

# 2. Clone awesome-design (68 real website design specs, referenced in Step 4)
if [ -d ~/awesome-design-md ]; then
    echo "✓ awesome-design already installed"
else
    echo "→ Cloning awesome-design..."
    git clone --depth 1 https://github.com/VoltAgent/awesome-design-md.git ~/awesome-design-md
    echo "✓ awesome-design installed"
fi

# 3. Install idea-to-product skill
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -d ~/.claude/skills/idea-to-product ]; then
    echo "✓ idea-to-product already installed"
else
    echo "→ Installing idea-to-product..."
    mkdir -p ~/.claude/skills/idea-to-product
    cp "$SCRIPT_DIR/SKILL.md" ~/.claude/skills/idea-to-product/
    echo "✓ idea-to-product installed"
fi

# 4. Verify
echo ""
echo "Verifying installation..."
if [ -f ~/.claude/skills/idea-to-product/SKILL.md ]; then
    echo "✓ idea-to-product skill found"
else
    echo "✗ idea-to-product skill MISSING"
fi

SUPERPOWER_COUNT=$(find ~/.claude/skills/superpowers/skills -name "SKILL.md" 2>/dev/null | wc -l | tr -d ' ')
if [ "$SUPERPOWER_COUNT" -gt 0 ]; then
    echo "✓ superpowers ($SUPERPOWER_COUNT skills) found"
else
    echo "⚠️  superpowers skills not found — check network"
fi

if [ -d ~/awesome-design-md ]; then
    DESIGN_COUNT=$(find ~/awesome-design-md -name "DESIGN.md" 2>/dev/null | wc -l | tr -d ' ')
    echo "✓ awesome-design ($DESIGN_COUNT designs) found"
else
    echo "⚠️  awesome-design not found"
fi

echo ""
echo "========================================="
echo "Setup complete!"
echo ""
echo "Next step — activate in your tool:"
echo ""
echo "  Claude Code:"
echo "    (skills auto-discovered, no action needed)"
echo ""
echo "  OpenClaw / Cursor / Trae / Windsurf:"
echo '    Paste: Follow the idea-to-product skill.'
echo '    My idea: [your idea here]'
echo ""
echo "  Any AI tool:"
echo "    Copy the content of SKILL.md and paste it."
echo ""
echo "========================================="
