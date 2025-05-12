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
- [ox_inventory](https://github.com/overextended/ox_inventory) - Inventory system used for stash management
- [ox_lib](https://github.com/overextended/ox_lib) - Library providing callback functions and UI components
- [ox_target](https://github.com/overextended/ox_target) - Target system for interaction points
- [oxmysql](https://github.com/overextended/oxmysql) - MySQL wrapper for database operations

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

This is a specialized script developed for specific server needs. No support will be provided and only PR's be accepted.

## License

All rights reserved. Unauthorized distribution, modification, or commercial use is prohibited.
