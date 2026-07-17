## ⚠️ Important

This is a **community port** of GuildPlugin v1.6.7 to **Minecraft 1.20.6**.
Original project by [chenasyd](https://github.com/chenasyd).

## 📦 Downloads

| File | Use |
|---|---|
| `guild-plugin-1.6.7.jar` | Put in each sub-server's `plugins/` folder |
| `guild-bungee-1.6.7.jar` | Put in BungeeCord/Waterfall `plugins/` folder |

## ✨ What's New in v1.6.7

### 🔒 OP-Only Guild Creation (configurable)

Added a new config option `guild.op-only-create` (default: `true`) to restrict guild creation to OP players only. When enabled, non-OP players cannot create guilds even if they have the `guild.create` permission.

**Configuration** (`plugins/GuildPlugin/config.yml`):
```yaml
guild:
  # ... existing settings ...
  op-only-create: true   # Set to false to allow all players with guild.create permission
```

**Permission** (`plugins/GuildPlugin/plugin.yml`):
- `guild.create` now defaults to `op` instead of `true`

**How to allow all players to create guilds:**
1. Set `guild.op-only-create: false` in `config.yml`
2. Grant `guild.create` permission to desired groups/players

## 🔧 Requirements

| Software | Version |
|---|---|
| Minecraft Server | **1.20.6** (Spigot / Paper / Purpur / Folia) |
| Java | 17+ |
| PlaceholderAPI | Optional (for variable placeholders) |
| Vault | Optional (for economy features) |

## 🚀 Quick Start

```
/guild create MyGuild TAG My awesome guild
/guild sethome
/guild invite Steve
/guild deposit 500
/guild chat Hello guild!
```

See [Wiki/GETTING-STARTED.md](https://github.com/ohto-ai/GuildPlugin/blob/port/1.20.6/Wiki/GETTING-STARTED.md) for full tutorial.

## 📋 All Commands

See [Wiki/COMMANDS.md](https://github.com/ohto-ai/GuildPlugin/blob/port/1.20.6/Wiki/COMMANDS.md) for complete command reference.

## 🌐 BungeeCord Setup

1. All sub-servers must share the **same MySQL database**
2. Edit `plugins/GuildPlugin/database.yml` on each sub-server:
   ```yaml
   type: mysql
   mysql:
     host: localhost
     port: 3306
     database: guild
     username: root
     password: "your_password"
   ```
3. Place `guild-bungee-1.6.7.jar` in BungeeCord's `plugins/`

## 🛠 Building from source

```bash
./mvnw clean package -DskipTests
```

---

*Ported by [ohto-ai](https://github.com/ohto-ai). Original plugin by [chenasyd](https://github.com/chenasyd).*
