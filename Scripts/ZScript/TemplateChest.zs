class TemplateChest : Actor
{
	// Chest State
	bool chestOpened;
	
	// Delay to check if the chest can be opened
	uint checkDelay;

	default
	{
		+SOLID
		
		Height 64;
	}
	
	states
	{
		Spawn:
			CHES A 1;
			goto Check;
		Check:
			CHES A 2 A_CheckPlayerCanOpen();			// Custom Player check
			CHES A 0 A_JumpIf(chestOpened, "Opened");	// Check the chest status
			loop;
		Opened:
			CHES B -1;
			stop;
	}
	
	private void A_CheckPlayerCanOpen()
	{
		// Small delay to check again
		if (checkDelay > 0) checkDelay--;
		
		// End early if chest is open or delay is still running.
		if (chestOpened) return;
		if (checkDelay > 0) return;
		
		// If player is holding 'USE' button, lacks Template Boss Key, and is within 64 units,
		// trigger the warning.
		if (players[consoleplayer].buttons & BT_USE && !players[consoleplayer].mo.FindInventory("TemplateBossKey") && A_CheckProximity("Check", "TemplatePlayer", 64))
		{
			checkDelay = 30;
			console.printf("You need the Template Boss Key to open the chest");
			return;
		}
		
		// If the above condition passes, the code below is skipped.		
		
		// If player holds USE, has Template Boss Key, and is within 64 units,
		// open the chest.
		if (players[consoleplayer].buttons & BT_USE && A_CheckProximity("Opened", "TemplatePlayer", 64))
		{
			chestOpened = true;	// Change the status
			bSOLID = false;		// Remove the SOLID flag
			
			console.printf("Template Chest Opened");
			
			// Spawn 10 Medals
			for (int i = 0; i < 10; i++)
			{
				string randomItem = random(0, 12) == 0 ? "TemplateMedkit" : 
									random(0, 12) == 1 ? "TemplateShield" : 
														 "Medal";
														 
				A_SpawnItemEx(randomItem, xvel:frandom(-1, 1), yvel:frandom(2, 3), zvel:frandom(7, 12), self.Angle * -1);
			}
			
			return;
		}
	}
}