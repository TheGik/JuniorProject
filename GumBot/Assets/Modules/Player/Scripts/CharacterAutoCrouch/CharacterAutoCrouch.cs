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
//		transform.position = target.position;
//		transform.rotation = target.rotation;

		if (!bottom && top && theGroundCheck.grounded) 
		{
			crouching = true;
			theCharacterMotor.transform.localScale = new Vector3 (theCharacterMotor.transform.localScale.x, 0.5f, 1);
			theCharacterAutoCrouchTop.transform.localScale = new Vector3 (1, 2, 1);
			theCharacterAutoCrouchBottom.transform.localScale = new Vector3 (1, 2, 1);
		}

		if (crouching && !top)
		{
			crouching = false;
			theCharacterMotor.transform.localScale = new Vector3 (theCharacterMotor.transform.localScale.x, 1, 1);
			theCharacterAutoCrouchTop.transform.localScale = new Vector3 (1, 1, 1);
			theCharacterAutoCrouchBottom.transform.localScale = new Vector3 (1, 1, 1);
		
		}

	}
}