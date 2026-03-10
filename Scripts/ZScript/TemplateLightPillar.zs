class TemplateLightPillar : Actor
{
	Default
	{
		+SOLID
		+FIXMAPTHINGPOS;

		Radius 2.5;
		Height 64;
	}

	States
	{
		Spawn:
			LIGH A -1;
			stop;
	}
}