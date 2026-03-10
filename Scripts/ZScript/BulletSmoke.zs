class BulletSmoke : Actor
{
	Default
	{
		+NOBLOCKMAP
		+NOGRAVITY
		+ISPUFF
		+ALLOWPARTICLES

		RenderStyle "Translucent";
		Alpha 0.5;
		VSpeed 1;
	}

	States
	{
		Spawn:
			BSMO ABCD 4;
			Stop;
	}
}