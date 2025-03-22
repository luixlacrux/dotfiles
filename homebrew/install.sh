# -------------------------
# Check if Homebrew is installed, if not, install it.
# -------------------------
if ! command -v brew &> /dev/null
then
    echo "Homebrew not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Homebrew installed. Updating Homebrew..."
brew update

echo "Installing Homebrew packages..."

# -------------------------
# Leaves
# -------------------------

$BREWFILE="$(dirname "$0")/Brewfile"
if [ ! -f "$BREWFILE" ]; then
    echo "Brewfile not found. Please create a Brewfile in the same directory as this script."
    exit 1
fi

echo "Installing Homebrew packages..."
brew bundle --file="$BREWFILE"

echo "Homebrew packages installed."
