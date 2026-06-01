#!/usr/bin/env bash
# ════════════════════════════════════════════════════════════════════
# 10X WITH AI · COHORT STARTER · GBI Amsterdam 2026
# ════════════════════════════════════════════════════════════════════
# Install with ONE line:
#   curl -fsSL https://raw.githubusercontent.com/danielpaulai/GBI-cohort-2026/main/install.sh | bash
#
# This script will:
#   1. Verify Claude Code is installed
#   2. Install 3 proprietary cohort skills (Ikigai · Voice · Business Brain)
#   3. Install 18 public Claude Skills (when available)
#   4. Create your local 10X workspace
#   5. Download cohort templates
#   6. Print next steps
#
# Source: https://github.com/danielpaulai/GBI-cohort-2026
# Maintained by: Daniel Paul · Purely Personal
# Version: 1.0.0
# ════════════════════════════════════════════════════════════════════

set -euo pipefail

# ─── COLORS ─────────────────────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
BOLD='\033[1m'
NC='\033[0m'

# ─── CONFIG ─────────────────────────────────────────────────────────
COHORT_NAME="10X With AI · GBI Amsterdam 2026"
WORKSPACE_DIR="${HOME}/10x-with-ai"
GITHUB_REPO_BASE="https://raw.githubusercontent.com/danielpaulai/GBI-cohort-2026/main"
LOCAL_SKILLS_DIR="${HOME}/.claude/skills"
VERSION="1.0.0"

# ─── HELPERS ────────────────────────────────────────────────────────
log_step() { echo -e "\n${BLUE}${BOLD}▸ $1${NC}"; }
log_success() { echo -e "${GREEN}✓ $1${NC}"; }
log_warning() { echo -e "${YELLOW}⚠ $1${NC}"; }
log_error() { echo -e "${RED}✗ $1${NC}"; }

# ─── BANNER ─────────────────────────────────────────────────────────
clear
cat << 'EOF'
═══════════════════════════════════════════════════════════════════

  ██╗ █████╗ ██╗  ██╗    ██╗    ██╗██╗████████╗██╗  ██╗
  ╚██╗██╔══██╗╚██╗██╔╝    ██║    ██║██║╚══██╔══╝██║  ██║
   ╚██╔╝██║  ██║ ╚███╔╝     ██║ █╗ ██║██║   ██║   ███████║
   ██╔╝██║  ██║ ██╔██╗     ██║███╗██║██║   ██║   ██╔══██║
  ██╔╝ ╚█████╔╝██╔╝ ██╗    ╚███╔███╔╝██║   ██║   ██║  ██║
  ╚═╝   ╚════╝ ╚═╝  ╚═╝     ╚══╝╚══╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝

                     A I       C O H O R T

═══════════════════════════════════════════════════════════════════
EOF

echo -e "${BOLD}Welcome to the 10X With AI cohort.${NC}"
echo -e "GBI Amsterdam · July 21 → August 8, 2026"
echo -e "Version: ${VERSION}"
echo ""
sleep 2

# ─── STEP 1 · ENVIRONMENT CHECK ─────────────────────────────────────
log_step "STEP 1 · Checking your environment"

OS="$(uname -s)"
case "${OS}" in
    Linux*)     PLATFORM=Linux;;
    Darwin*)    PLATFORM=Mac;;
    CYGWIN*|MINGW*|MSYS*) PLATFORM=Windows;;
    *)          PLATFORM="UNKNOWN:${OS}"
esac

log_success "Operating system: ${PLATFORM}"

if ! command -v claude &> /dev/null; then
    log_error "Claude Code is not installed."
    echo ""
    echo "Please install Claude Code Desktop first:"
    echo "  Mac/Linux: curl -fsSL https://claude.ai/install.sh | bash"
    echo "  Windows:   Download from https://claude.ai/download"
    echo ""
    echo "After installing · re-run this script."
    exit 1
fi

CLAUDE_VERSION=$(claude --version 2>/dev/null | head -n 1 || echo "unknown")
log_success "Claude Code detected: ${CLAUDE_VERSION}"

# ─── STEP 2 · INSTALL 3 COHORT SKILLS FROM GITHUB ───────────────────
log_step "STEP 2 · Installing 3 cohort skills from GitHub"

mkdir -p "$LOCAL_SKILLS_DIR"

COHORT_SKILLS=(
    "ikigai-discovery-journey"
    "voice-profile-builder"
    "business-brain-builder"
)

INSTALL_COUNT=0

for skill in "${COHORT_SKILLS[@]}"; do
    echo -n "  Installing ${skill}... "
    skill_dir="${LOCAL_SKILLS_DIR}/${skill}"
    mkdir -p "${skill_dir}/prompts" "${skill_dir}/references"

    # Download SKILL.md (required)
    if curl -fsSL "${GITHUB_REPO_BASE}/skills/${skill}/SKILL.md" -o "${skill_dir}/SKILL.md" 2>/dev/null; then
        # Download companion files (optional · best effort)
        curl -fsSL "${GITHUB_REPO_BASE}/skills/${skill}/prompts/synthesis-prompt.md" -o "${skill_dir}/prompts/synthesis-prompt.md" 2>/dev/null || true
        curl -fsSL "${GITHUB_REPO_BASE}/skills/${skill}/references/design-styles.md" -o "${skill_dir}/references/design-styles.md" 2>/dev/null || true
        curl -fsSL "${GITHUB_REPO_BASE}/skills/${skill}/references/components.md" -o "${skill_dir}/references/components.md" 2>/dev/null || true

        # Find and download any template HTML files
        for tmpl in "ikigai-output-v2.html" "ikigai-template.html" "voice-profile-template.html" "business-brain-template.html"; do
            curl -fsSL "${GITHUB_REPO_BASE}/skills/${skill}/${tmpl}" -o "${skill_dir}/${tmpl}" 2>/dev/null || true
        done

        echo -e "${GREEN}✓${NC}"
        ((INSTALL_COUNT++))
    else
        echo -e "${YELLOW}⚠ failed${NC}"
    fi
done

log_success "${INSTALL_COUNT} of ${#COHORT_SKILLS[@]} skills installed"

# ─── STEP 3 · CREATE WORKSPACE ──────────────────────────────────────
log_step "STEP 3 · Creating your 10X workspace"

mkdir -p "$WORKSPACE_DIR"/{marketing,sales,operations,finance,ceo-brain,templates,my-work,state}

log_success "Workspace ready at ${WORKSPACE_DIR}"

# ─── STEP 4 · DOWNLOAD TEMPLATES ────────────────────────────────────
log_step "STEP 4 · Downloading cohort templates"

download_template() {
    local filename="$1"
    local description="$2"
    local target="${WORKSPACE_DIR}/templates/${filename}"

    echo -n "  Downloading ${description}... "

    if curl -fsSL "${GITHUB_REPO_BASE}/templates/${filename}" -o "$target" 2>/dev/null; then
        echo -e "${GREEN}✓${NC}"
        return 0
    else
        echo -e "${YELLOW}⚠ skipped${NC}"
        return 1
    fi
}

download_template "BUSINESS-BRAIN.md" "Business Brain template"
download_template "IKIGAI-WORKSHEET.html" "Ikigai Worksheet (printable)"

# ─── STEP 5 · WELCOME ───────────────────────────────────────────────
log_step "STEP 5 · Setup complete"

cat << EOF

${GREEN}${BOLD}══════════════════════════════════════════════════════════════════════${NC}
${GREEN}${BOLD}  ✓ INSTALLATION COMPLETE${NC}
${GREEN}${BOLD}══════════════════════════════════════════════════════════════════════${NC}

Your 10X With AI workspace is at:
  ${BOLD}${WORKSPACE_DIR}${NC}

Installed skills:
EOF

for skill in "${COHORT_SKILLS[@]}"; do
    echo "  ✓ ${skill}"
done

cat << EOF

${BOLD}NEXT STEPS:${NC}

  1. Open ${WORKSPACE_DIR}/templates/IKIGAI-WORKSHEET.html
     Print it · we use it in Day 1 live session

  2. Open Claude Code Desktop · type:
     ${BOLD}"Let's do my Ikigai"${NC}

  3. Bring to Day 1 (July 21 · 12pm CEST):
     - Your completed Ikigai worksheet
     - Your business website URL
     - 30 of your best LinkedIn posts (for Voice DNA on Day 2)

${BOLD}SUPPORT:${NC}
  WhatsApp Karthik (cohort tech support): [link]
  Response time: under 4 hours

${BOLD}SEE YOU TUESDAY · JULY 21 · 12PM CEST${NC}

EOF

exit 0
