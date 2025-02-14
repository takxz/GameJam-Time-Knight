var near = instance_nearest(other.x, other.y, obj_spawn_room1)

other.x = near.x
other.y = near.y

global.hp -= 1