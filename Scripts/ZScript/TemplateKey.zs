class TemplateKey : key
{
	Default
	{
		Inventory.Pickupmessage "$PICKUP_TKEYA";
		Inventory.Icon "TKEYA0";
	}
	
	States
	{
		Spawn:
			TKEY A 5;
			TKEY A 5 bright;
			loop;
	}
}

class TemplateBossKey : key
{
	Default
	{
		Inventory.Pickupmessage "$PICKUP_TKEYB";
		Inventory.Icon "TKEYB0";
	}
	
	States
	{
		Spawn:
			TKEY B 5;
			TKEY B 5 bright;
			loop;
	}
}