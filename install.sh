#!/bin/bash
# idea-to-product setup script
# Run: bash install.sh

set -e

echo "Setting up idea-to-product..."

# 1. Clone only the needed superpowers skills (not the full repo)
mkdir -p ~/.claude/skills/superpowers

BASE_URL="https://raw.githubusercontent.com/obra/superpowers/main/skills"

for skill in brainstorming writing-plans executing-plans; do
    TARGET="$HOME/.claude/skills/superpowers/${skill}"
    if [ -d "$TARGET" ]; then
        echo "✓ superpowers:${skill} already installed"
    else
        echo "→ Installing superpowers:${skill}..."
        mkdir -p "$TARGET"
        curl -fsSL "$BASE_URL/${skill}/SKILL.md" -o "$TARGET/SKILL.md" 2>/dev/null && \
            echo "✓ superpowers:${skill} installed" || \
            echo "⚠️  Failed to install superpowers:${skill} — check network"
    fi
done

# 2. Install idea-to-product skill
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -d ~/.claude/skills/idea-to-product ]; then
    echo "✓ idea-to-product already installed"
else
    echo "→ Installing idea-to-product..."
    mkdir -p ~/.claude/skills/idea-to-product
    cp "$SCRIPT_DIR/SKILL.md" ~/.claude/skills/idea-to-product/
    echo "✓ idea-to-product installed"
fi

# 3. Verify
echo ""
echo "Verifying installation..."
if [ -f ~/.claude/skills/idea-to-product/SKILL.md ]; then
    echo "✓ idea-to-product skill found"
else
    echo "✗ idea-to-product skill MISSING"
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
