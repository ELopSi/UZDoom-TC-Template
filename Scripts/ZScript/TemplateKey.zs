class TemplateKey : doomkey
{
	Default
	{
		Inventory.Pickupmessage "You got the Template Key!";
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

class TemplateBossKey : doomkey
{
	Default
	{
		Inventory.Pickupmessage "You got the Template Boss Key!";
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