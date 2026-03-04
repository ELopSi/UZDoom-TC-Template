class BloodSplat : Actor
{
	Default
	{
		+NOBLOCKMAP
		+NOTELEPORT
		+ALLOWPARTICLES
	}
	
	States
	{
		Spawn:
			BSPL ABCD 4;
			Stop;
	}
}