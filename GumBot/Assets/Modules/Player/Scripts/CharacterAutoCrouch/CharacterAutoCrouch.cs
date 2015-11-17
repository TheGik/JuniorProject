// Author: Miles Meacham
// Description: Character Auto Crouch class

// NOTE* Do NOT add this to your character. Attach the prefab "Auto Crouch"
// because this script needs two other scripts and box colliders to work.

using UnityEngine;
using System.Collections;

// Character Auto Crouch
// Makes the character crouch when he arrives at a crouchable area

public class CharacterAutoCrouch : MonoBehaviour {

	//public Transform target;

	public bool bottom;
	public bool top;

	public bool crouching;

	private CharacterMotor theCharacterMotor;
	public GroundCheck theGroundCheck;
	private CharacterAutoCrouchTop theCharacterAutoCrouchTop;
	private CharacterAutoCrouchBottom theCharacterAutoCrouchBottom;

	// Use this for initialization
	void Start () 
	{
		theCharacterMotor = GetComponentInParent<CharacterMotor> ();
		theCharacterAutoCrouchTop = GetComponentInChildren<CharacterAutoCrouchTop> ();
		theCharacterAutoCrouchBottom = GetComponentInChildren<CharacterAutoCrouchBottom> ();
	}
	
	// Update is called once per frame
	void Update () 
	{

		// if the bottom collider is not touching gorund and the top is touching ground
		// and the character is grounded, then crouch;
		if (!bottom && top && theGroundCheck.grounded && !crouching) 
		{
			crouching = true;

			// crouch
			theCharacterMotor.transform.localScale = new Vector3 (theCharacterMotor.transform.localScale.x, theCharacterMotor.transform.localScale.y / 2, theCharacterMotor.transform.localScale.z);

			// adjust the colliders because the shrink when the character crouches
			theCharacterAutoCrouchTop.transform.localPosition = new Vector3 (theCharacterAutoCrouchTop.transform.localPosition.x, theCharacterAutoCrouchTop.transform.localPosition.y * 2, 0);
			theCharacterAutoCrouchTop.transform.localScale = new Vector3 (theCharacterAutoCrouchTop.transform.localScale.x, theCharacterAutoCrouchTop.transform.localScale.y * 2, theCharacterAutoCrouchTop.transform.localScale.z);

		}


		// if the character is crouching and the box collider stops touching the ceiling, uncrouch
		if (crouching && !top)
		{
			crouching = false;
			// uncrouch
			theCharacterMotor.transform.localScale = new Vector3 (theCharacterMotor.transform.localScale.x, theCharacterMotor.transform.localScale.y * 2, theCharacterMotor.transform.localScale.z);

			// set the size and position of the colliders back to normal.
			theCharacterAutoCrouchTop.transform.localPosition = new Vector3 (theCharacterAutoCrouchTop.transform.localPosition.x, theCharacterAutoCrouchTop.transform.localPosition.y / 2, 0);
			theCharacterAutoCrouchTop.transform.localScale = new Vector3 (theCharacterAutoCrouchTop.transform.localScale.x, theCharacterAutoCrouchTop.transform.localScale.y / 2, theCharacterAutoCrouchTop.transform.localScale.z);

		}

	}
}