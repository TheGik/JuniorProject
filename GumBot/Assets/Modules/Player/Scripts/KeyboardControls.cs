using UnityEngine;
using System.Collections;

public class KeyboardControls : MonoBehaviour {
	
	private CharacterMotor theCharacterMotor;
	private CharacterJump theCharacterJump;

	// Use this for initialization
	void Start () 
	{
		theCharacterMotor = gameObject.GetComponent<CharacterMotor> ();
		theCharacterJump = gameObject.GetComponent<CharacterJump> ();
	}

	void Update ()
	{
		if (Input.GetKeyDown (KeyCode.Space))
			theCharacterJump.Jump ();

	}

	void FixedUpdate () 
	{

		if (Input.GetKey (KeyCode.D)) 
		{

			if (!theCharacterMotor.facingRight)
				theCharacterMotor.Flip ();

			theCharacterMotor.HorizontalVelocity ();
		}


		if (Input.GetKey (KeyCode.A)) 
		{
			if (theCharacterMotor.facingRight)
				theCharacterMotor.Flip();

			theCharacterMotor.HorizontalVelocity ();
		}


		
		
	}
	
}
