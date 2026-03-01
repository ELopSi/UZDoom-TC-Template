class Medal : Inventory
{
	// Actor flags, properties and action special documentation:
	// https://zdoom.org/w/index.php?title=Actor_flags
	// https://zdoom.org/w/index.php?title=Actor_properties
	// https://zdoom.org/w/index.php?title=Action_specials
	
	default
	{
		+COUNTITEM
		+INVENTORY.ALWAYSPICKUP;
		
		Inventory.Amount 1;
		Inventory.MaxAmount 999;
		Inventory.PickupMessage "Picked up a medal!";
		Inventory.PickupSound "SFX/CoinTemplate";	
	}
	
	States
	{
		Spawn:
			MEDA ABCDEF 4;
			Loop;
	}
}
