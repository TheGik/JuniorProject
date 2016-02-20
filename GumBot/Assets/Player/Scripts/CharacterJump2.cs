using UnityEngine;
using System.Collections;
//so that audio stuff. Temporary audio implementation
using FMODUnity;

public class CharacterJump2 : MonoBehaviour {

	public CharacterMotor2 theCharacterMotor;
	public GroundCheck theGroundCheck;
	
	//jumping variables
	public bool doubleJumped;
	
	//audio emitter
	public StudioEventEmitter jumpSound;
	
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
		if (theGroundCheck.grounded && !doubleJumped) {
			theCharacterMotor.VerticalVelocity ();
			//plays the jump sound audio event
			jumpSound.Play ();
		}
		else if (!doubleJumped) 
		{
			theCharacterMotor.VerticalVelocity ();
			doubleJumped = true;
			//plays the jump sound audio event
			jumpSound.Play ();
		}
	}

}//End of Monobehavior
