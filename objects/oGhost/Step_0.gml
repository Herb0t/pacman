if (name == "blinky" || (name == "pinky" && instance_number(oDots) < 220) || 
   (name == "inky" && instance_number(oDots) < 200) || (name == "clyde" && instance_number(oDots) < 180)) {
    released = true;
}

GhostMovement(self);