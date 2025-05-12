# SP Lockers

A FiveM resource that allows law enforcement officers to securely store a citizen's personal items without having to confiscate their entire inventory. Citizens can later retrieve their stored items from designated locations.

## Features

- Law enforcement can store specific items from a citizen's inventory in a secure locker
- Citizens can retrieve their personal items from designated retrieval locations
- Configurable access locations with permission-based restrictions
- Support for different zone types (box, poly, sphere) for interaction points
- Easy to use interface for both officers and citizens

## Dependencies

This resource requires the following dependencies:

- [qb-core](https://github.com/qbcore-framework/qb-core) - The core framework that provides player data and other essential functions
- [ox_inventory](https://github.com/CommunityOx/ox_inventory) - Inventory system used for stash management
- [ox_lib](https://github.com/CommunityOx/ox_lib) - Library providing callback functions and UI components
- [ox_target](https://github.com/CommunityOx/ox_target) - Target system for interaction points
- [oxmysql](https://github.com/CommunityOx/oxmysql) - MySQL wrapper for database operations

## Installation

1. Ensure all dependencies are installed and working properly
2. Copy the `sp_lockers` folder to your server's resources directory
3. Add `ensure sp_lockers` to your server.cfg file after ensuring all dependencies
4. Configure the settings in the config.lua file to match your server's needs
5. Restart your server

## Configuration

The resource uses a configuration file (`config.lua`) where you can set up:

- Retrieval locations: Where citizens can access their stored items
- Access locations: Where officers can store items from citizens, with optional group restrictions
- Debug mode: Toggle visibility of target zones during development

## Usage

### For Officers:
1. Approach a configured access location
2. Use the target interaction "Store Personal Items"
3. Enter the citizen's ID when prompted
4. The citizen's personal locker will open for the officer to store items

### For Citizens:
1. Approach any configured retrieval location
2. Use the target interaction "Retrieve Personal Items"
3. Access your stored items

## Notes

This resource is designed to provide a more realistic and convenient way for law enforcement to handle personal items of citizens without completely confiscating their inventory via ox_inventory.

## Support

This is a specialized script developed for specific servers need they did not want to use it so I figured I would release it for everyone. No support will be provided and only PR's be accepted.

## 
Copyright © 2025 Snowpeak Studio https://github.com/Snowpeak-Studio

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see https://www.gnu.org/licenses/.