class LightPillar : Actor
{
  
  Default
  {
	Radius 2.5;
	Height 64;

	+SOLID
	+FIXMAPTHINGPOS;
  }

  States
  {
		Spawn:
			LIGH A -1;
			stop;
  }
}