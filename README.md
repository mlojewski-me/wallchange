# Wallchange

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/mlojewski-me/wallchange.git ~/.local/share/wallchange
cd ~/.local/share/wallchange
```

### 2. Adjust configuration

```bash
cp -v .env.template .env
# Edit .env file
# See: https://unsplash.com/documentation
```
Where:
- `UNSPLASH_CLIENT_ID` - Access Key obtained from Unsplash.
- `UNSPLASH_QUERY` - Limit selection to photos matching a search term.

### 3. Install the Service

```bash
cp wallchange.{service,timer} ~/.config/systemd/user/
systemctl --user enable --now wallchange.timer
```
