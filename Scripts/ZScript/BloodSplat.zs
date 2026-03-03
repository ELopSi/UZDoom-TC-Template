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
		Spray:
			BSPL ABC 2;
			BSPL D 1;
			Stop;
	}
}