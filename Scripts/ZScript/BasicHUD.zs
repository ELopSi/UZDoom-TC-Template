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

		if (player)
		{
			let basicArmor = BasicArmor(player.FindInventory("BasicArmor"));
			
			if (basicArmor)
			{
				armorCount = basicArmor.Amount;
			}
		}
		
		let customArmorString = String.Format("%d", armorCount);
		let customArmorPosition = (40, 156);
		
		// MEDAL -------------------
		let medalCount = 0;
	
		if (player)
		{
			let medal = Medal(player.FindInventory("Medal"));
			
			if (medal)
			{
				medalCount = medal.Amount;
			}
		}
		
		let customMedalString = String.Format("Medal: %d", medalCount);
		let customMedalPosition = (305, 185);
		
		// DRAW HUD -------------------
		Super.Draw(state, TicFrac);
        
        if (state == HUD_StatusBar)
        {
            BeginStatusBar();
			DrawImage("HEALTH", (25, 200), DI_SCREEN_LEFT_BOTTOM);	
			DrawImage("ARMOR", (25, 180), DI_SCREEN_LEFT_BOTTOM);
            DrawString(customBigFont, customHealthString, customHealthPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_LEFT, Font.CR_White);
			DrawString(customBigFont, customArmorString, customArmorPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_LEFT, Font.CR_White);
			DrawString(customSmallFont, customMedalString, customMedalPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_RIGHT, Font.CR_White);
		}
	}
}