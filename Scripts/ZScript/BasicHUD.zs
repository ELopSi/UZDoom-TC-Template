// Insert "BasicHUD" on "ZMAPINFO Gameinfo -> StatusBarClass" is required

class BasicHUD : BaseStatusBar
{
	// Trigger one time on the map load
	override void Init()
	{
		super.Init();
		console.printf("\nWelcome to the ZDoom Template!");
	}

	// Draw the entire hud each frame
	override void Draw(int state, double TicFrac)
	{
		// Check the list of player and pick the console owner
		let player = players[consoleplayer].mo;

		// Load fonts
		let customSmallFont = HUDFont.Create(smallfont);
		let customBigFont = HUDFont.Create(BIGFONT);

		// HEALTH -------------------
		let customHealthString = String.Format("%d", CPlayer.health);
		let customHealthPosition = (40, 174);

		// ARMOR -------------------
		let armorCount = 0;

		let _basicArmor = BasicArmor(player.FindInventory("BasicArmor"));

		if (_basicArmor)
		{
			armorCount = _basicArmor.Amount;
		}

		let customArmorString = String.Format("%d", armorCount);
		let customArmorPosition = (40, 156);

		// MEDAL -------------------
		let medalCount = 0;

		let _medal = Medal(player.FindInventory("Medal"));

		if (_medal)
		{
			medalCount = _medal.Amount;
		}

		let customMedalString = String.Format("Medal: %d", medalCount);
		let customMedalPosition = (305, 185);

		// TEMPLATE SHELL -------------------
		let shellCount = 0;

		let _templateShell = TemplateShell(player.FindInventory("TemplateShell"));

		if (_templateShell)
		{
			shellCount = _templateShell.Amount;
		}

		let customShellPosition = (260, 167);

		// KEYS -------------------

		let _hasTemplateKey = (player.FindInventory("TemplateKey"));
		let _hasTemplateBossKey = (player.FindInventory("TemplateBossKey"));

		// DRAW HUD -------------------
		Super.Draw(state, TicFrac);

		if (state == HUD_StatusBar)
		{
			// If no player is available or the automao is active, don't draw.
			if (!player) return;
			if (AutoMapActive) return;

			BeginStatusBar();
			DrawImage("HEALTH", (25, 200), DI_SCREEN_LEFT_BOTTOM);
			DrawImage("ARMOR", (25, 180), DI_SCREEN_LEFT_BOTTOM);

			if (shellCount > 0)
			{
				DrawImage("SHELA0", (250, 180), DI_SCREEN_RIGHT_BOTTOM);
				DrawString(customSmallFont, string.format(":%d", shellCount), customShellPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_LEFT, Font.CR_White);
			}

			if (_hasTemplateKey)
			{
				DrawImage("TKEYA0", (300, 70), DI_SCREEN_RIGHT_TOP);
			}

			if (_hasTemplateBossKey)
			{
				DrawImage("TKEYB0", (300, 90), DI_SCREEN_RIGHT_TOP);
			}

			DrawString(customBigFont, customHealthString, customHealthPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_LEFT, Font.CR_White);
			DrawString(customBigFont, customArmorString, customArmorPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_LEFT, Font.CR_White);
			DrawString(customSmallFont, customMedalString, customMedalPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_RIGHT, Font.CR_White);
		}
	}
}