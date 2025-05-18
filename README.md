# StarlightVehicleBlacklist

A simple FiveM script to block and handle blacklisted vehicles.

## Features

- Block specific vehicle models
- Delete vehicle or kick player on detection
- Notifications via `ox_lib` (optional)
- Configurable blacklist and behavior

## Dependencies

- [ox_lib](https://github.com/overextended/ox_lib)

## Setup

1. Place the resource in your `resources` folder.
2. Add to `server.cfg`:
ensure ox_lib
ensure StarlightVehicleBlacklist

yaml
Copy
Edit
3. Edit `shared/config.lua` to customize.

## Usage

Players entering blacklisted vehicles will have their vehicle deleted or be kicked, based on config.

---
