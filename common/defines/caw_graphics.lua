-- Keep the title-screen background camera over open ocean (0 land provinces)
NDefines_Graphics.NFrontend.FRONTEND_POS_X = 350.0
NDefines_Graphics.NFrontend.FRONTEND_POS_Y = 450.0
NDefines_Graphics.NFrontend.FRONTEND_POS_Z = 1000.0
NDefines_Graphics.NFrontend.FRONTEND_LOOK_X = 350.0
NDefines_Graphics.NFrontend.FRONTEND_LOOK_Y = 0.0
NDefines_Graphics.NFrontend.FRONTEND_LOOK_Z = 1019.0

-- Flag texture atlases:
-- HOI4's dynamic_shrink algorithm truncates rows: rows = total_flags // cols.
-- If (total_flags % cols) != 0, flags above capacity overflow into Texture 1 which was never allocated.
-- If total_flags < cols, rows = 0 -> texture height = 0 -> D3D11 creation fails.
-- Mod currently has 53 country tags (a prime number).
-- To guarantee 0 overflow and height > 0:
-- cols must be exactly 53:
-- Medium flags (41x26): 53 * 41 = 2173 -> cols = 53, rows = 1, cap = 53 (0 overflow)
-- Small flags (10x7):   53 * 10 = 530  -> cols = 53, rows = 1, cap = 53 (0 overflow)
NDefines_Graphics.NGraphics.COUNTRY_FLAG_TEX_MAX_SIZE = 1024
NDefines_Graphics.NGraphics.COUNTRY_FLAG_MEDIUM_TEX_MAX_SIZE = 2173
NDefines_Graphics.NGraphics.COUNTRY_FLAG_SMALL_TEX_MAX_SIZE = 530
