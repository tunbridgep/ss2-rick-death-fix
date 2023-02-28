class rickObjectPlace extends SqRootScript
{
	//Run Once
	function OnBeginScript()
	{
		local obj = getParam("object",-1050);
		
		local created = Object.Create(obj);
		Object.Teleport(created, Object.Position(self), Object.Facing(self));
		Object.Destroy(self);
	}
	
	// fetch a parameter or return default value
	// blatantly stolen from RSD
	function getParam(key, defVal)
	{
		return key in userparams() ? userparams()[key] : defVal;
	}
}