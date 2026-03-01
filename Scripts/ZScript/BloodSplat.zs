class BloodSplat : Blood
{
	Default
	{
		+NOBLOCKMAP
		+ISPUFF
		+ALLOWPARTICLES
	}
	
	States
	{
		Spawn:
			BSPL ABCD 4;
			Stop;
	}
}