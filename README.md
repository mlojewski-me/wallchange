# Wallchange

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/mlojewski-me/wallchange ~/.local/share/wallchange
cd ~/.local/share/wallchange
```

### 2. Adjust configuration

```bash
cp -v .env.template .env
# Edit .env file
```

### 3. Install the Service

```bash
cp wallchange.{service,timer} ~/.config/systemd/user/
systemctl --user enable --now wallchange.timer
```
