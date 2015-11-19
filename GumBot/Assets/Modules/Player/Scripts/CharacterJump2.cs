﻿using UnityEngine;
using System.Collections;

public class CharacterJump2 : MonoBehaviour {

	public CharacterMotor2 theCharacterMotor;
	public GroundCheck theGroundCheck;
	
	//jumping variables
	public bool doubleJumped;
	
	
	
	// Use this for initialization
	void Start () {
		theGroundCheck = GetComponentInChildren<GroundCheck> ();
		theCharacterMotor = GetComponent<CharacterMotor2> ();
		
	}
	
	
	void FixedUpdate () 
	{
		if(theGroundCheck.grounded)
		{
			doubleJumped = false;
		}
	}
	
	//keyboard jumping
	public void Jump () {
		if (theGroundCheck.grounded && !doubleJumped)
			theCharacterMotor.VerticalVelocity ();
		else if (!doubleJumped) 
		{
			theCharacterMotor.VerticalVelocity ();
			doubleJumped = true;
		}
	}

}//End of Monobehavior