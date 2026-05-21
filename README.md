Seaward

A responsive 3D arcade-style boat platformer built to test and refine core movement mechanics and dynamic level progression in the Godot Engine.

---

Gameplay & Objective

In **Seaward**, you pilot a fast-paced boat through challenging aquatic courses. Your primary objective is to navigate and pass through all designated gates scattered across the map. Once all gates are successfully cleared, the final gate unlocks, granting passage to the next level.

Controls
W / Up Arrow: Move Forward
S/ Down Arrow: Move Backward
A/ Left Arrow: Turn Left
D / Right Arrow: Turn Right

---
Features

Arcade Boat Physics: Responsive, snappy, and instant handling designed for precision maneuvering without frustrating drift.
Dynamic Gate System: Built using an automated group-tagging architecture (gates and final_gate) that scales automatically with any custom level layout.
Unique Node Identification: Robust player tracking ensures precise collision detection without relying on strict hardcoded pathing.
Clean UI: Real-time on-screen counter tracking remaining objectives dynamically.

---

Built With

Engine: [Godot Engine v4.x](https://godotengine.org/)
Language: GDScript

---

## 📸 Screenshots

<p align="center">
  <img width="100%" alt="Seaward Gameplay Screenshot" src="https://github.com/user-attachments/assets/c4175e52-0fc8-43ca-91a8-44d7873ff2bf" />
</p>

---

Inspiration & Background

This project was developed as a hands-on practical exercise to master 3D environment scaling, signal handling, and player physics isolation in Godot. The development focus was placed entirely on achieving low-latency control feedback, minimal code overhead, and a polished core gameplay loop.

---

Future Improvements

Audio Design: Implement immersive ambient water loops, motor acceleration sound effects, and rewarding gate-collection cues.
Level Expansion: Design multi-tiered environments utilizing procedural asset placement.
Time Attack Mode: Introduce an active timer countdown and local high-score saving system to increase replay ability.
UI/UX Overhaul: Create a fully realized main menu, pause state settings, and animated HUD transitions.

---
Author
Moaaz Kamel - Core Development & Design - [GitHub Profile](https://github.com/MoaazKamel)
