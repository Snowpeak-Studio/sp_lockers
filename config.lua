Config = {
    lockerWeight = 100000, -- weight of the locker
    lockerSlots = 50, -- slots of the locker
    retrievalLocations = {
        {
            type = 'box', -- box, poly, sphere, reference to docs https://overextended.dev/ox_lib/Modules/Zones/Shared
            coords = vec3(440.9035, -981.1573, 30.6896),
            size = vector3(1.0, 1.0, 1.0),
            rotation = 26.2787,
        },
    },
    accessLocations = {
        {
            type = 'box', -- box, poly, sphere, reference to docs https://overextended.dev/ox_lib/Modules/Zones/Shared
            coords = vec3(444.8509, -980.5554, 30.6896),
            size = vector3(1.0, 1.0, 1.0),
            rotation = 303.1299,
            groups = {
                --['job_name'] = 5, min grade
                ['police'] = 2
            }
        },

    },

}
