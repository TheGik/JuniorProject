using UnityEngine;
using System.Collections;

//temporary audio implementation
using FMODUnity;

public class CharacterJump2 : MonoBehaviour {

	public CharacterMotor2 theCharacterMotor;
	public GroundCheck theGroundCheck;

	//temporary audio implementation
	public StudioEventEmitter jumpSound;
	
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
		if (theGroundCheck.grounded && !doubleJumped) {
			theCharacterMotor.VerticalVelocity ();
			//temporary audio implementation
			jumpSound.Play ();
		}
		else if (!doubleJumped) 
		{
			theCharacterMotor.VerticalVelocity ();
			doubleJumped = true;
			//temporary audio implementation
			jumpSound.Play ();
		}
	}

}//End of Monobehavior
