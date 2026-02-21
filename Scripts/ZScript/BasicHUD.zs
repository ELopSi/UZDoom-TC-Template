// Insert "BasicHUD" on "ZMAPINFO Gameinfo -> StatusBarClass" is required

class BasicHUD : BaseStatusBar
{
	override void Init()
	{
		super.Init();
		console.printf("\nWelcome to the ZDoom Template!");
	}
	
    override void Draw(int state, double TicFrac) 
	{ 			
		let player = players[consoleplayer].mo;
		let customSmallFont = HUDFont.Create(smallfont);
		let customBigFont = HUDFont.Create(BIGFONT);
		
		// HEALTH -------------------
		let customHealthString = String.Format("H: %d", CPlayer.health);
		let customHealthPosition = (5, 170);
				
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
		
		let customArmorString = String.Format("A: %d", armorCount);
		let customArmorPosition = (5, 185);
		
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
		let customMedalPosition = (315, 190);
		
		// DRAW HUD -------------------
		Super.Draw(state, TicFrac);
        
        if (state == HUD_StatusBar)
        {
            BeginStatusBar();
            DrawString(customBigFont, customHealthString, customHealthPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_LEFT, Font.CR_White);
			DrawString(customBigFont, customArmorString, customArmorPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_LEFT, Font.CR_White);
			DrawString(customSmallFont, customMedalString, customMedalPosition, DI_SCREEN_LEFT_BOTTOM | DI_TEXT_ALIGN_RIGHT, Font.CR_White);
		}
	}
}