
//Carry bodybags
class Extended_Init_EventHandlers
{
    class ACE_bodyBagObject
    {
        class carryBodyBag
        {
            init = "[(_this select 0), true, [0,1,1], 90] call ace_dragging_fnc_setCarryable;";
        };
    };
};

//Reduced weapon sway 75%
class CfgImprecision
{
	class Primary
	{
		verticalRadius = 0.125;
		horizontalRadius = 0.025;
	};
	class Secondary
	{
		verticalRadius = 0.025;
		horizontalRadius = 0.125;
	};
};

