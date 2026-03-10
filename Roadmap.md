# Doodle Jump Style Game – Development Plan

Goal: build a small vertical platform game inspired by Doodle Jump using Flutter + Flame.

The player climbs upward by jumping on platforms while lava rises from below.

---

# Phase 0 – Project Setup

### 1. Verify Flutter Project Runs
Run the default Flutter project to confirm the environment works.

Goal:
- Ensure the app launches correctly.
- Confirm device/emulator setup is working.

Command:
flutter run
#### _DONE_
---

### 2. Add Flame Engine
Add the Flame game engine dependency.

Goal:
- Enable a proper game loop.
- Use Flame components instead of Flutter widgets for gameplay.

Tasks:
- Add Flame to `pubspec.yaml`
- Run `flutter pub get`

---

### 3. Create the Base Game Class
Create the main game class using `FlameGame`.

Goal:
- Have a central game loop.
- Prepare a structure where components can be added.

Tasks:
- Create `game/doodle_game.dart`
- Extend `FlameGame`
- Display the game using `GameWidget`.

Result:
The screen should display a blank game canvas.

---

# Phase 1 – Core Player Mechanics

### 4. Create Player Component
Add a simple player object.

Goal:
- Represent the character in the game.

Tasks:
- Create `player.dart`
- Use a simple square or sprite.
- Add it to the game world.

---

### 5. Add Player Movement
Allow horizontal movement.

Goal:
- Player can move left and right.

Tasks:
- Implement joystick input.
- Update player position every frame.

---

### 6. Implement Jump System
Allow the player to jump manually.

Goal:
- Player presses a button to jump.
- Apply vertical velocity.

Tasks:
- Add jump button UI.
- Apply gravity and vertical velocity.

---

# Phase 2 – Platforms

### 7. Create Platform Component
Add platforms the player can land on.

Goal:
- Player can collide with platforms.

Tasks:
- Create `platform.dart`
- Detect collisions.

---

### 8. Platform Generation
Spawn platforms above the player.

Goal:
- Platforms continuously appear as the player climbs.

Tasks:
- Random platform positions
- Remove platforms below the screen

---

# Phase 3 – World Progression

### 9. Infinite Vertical Progression
Make the world move upward.

Goal:
- The player climbs infinitely.

Tasks:
- Move camera upward
  OR
- Move platforms downward.

---

### 10. Score System
Track how high the player climbs.

Goal:
- Increase score based on height.

Tasks:
- Display score on screen.

---

# Phase 4 – Danger System

### 11. Rising Lava
Add lava that rises from the bottom.

Goal:
- Force the player to keep moving upward.

Tasks:
- Create lava component.
- Increase lava speed gradually.

---

### 12. Game Over Logic
End the game when lava catches the player.

Goal:
- Stop gameplay.
- Show game over screen.

---

# Phase 5 – Menu & Persistence

### 13. Main Menu
Create a simple start screen.

Features:
- Start Game
- High Score
- Settings (optional)

---

### 14. High Score System
Save best score locally.

Goal:
- Store best score between sessions.

Tasks:
- Save score locally.
- Display on high score screen.

---

# Phase 6 – Polish (Optional)

If time allows:

Possible additions:
- Animated sprites
- Sound effects
- Moving platforms
- Breakable platforms
- Enemies
- Visual polish

---

# Project Architecture

Folder structure follows a simplified clean architecture:

core → utilities and constants  
game → main game engine  
entities → player, platforms, lava  
systems → physics, input, spawning  
ui → menus and overlays  
services → persistence (high score)

Rules:
- Single responsibility per class
- Avoid large files
- Use explicit variable names
- Avoid hardcoded values