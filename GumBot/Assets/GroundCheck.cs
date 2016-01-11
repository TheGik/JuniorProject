using UnityEngine;
using System.Collections;

public class GroundCheck : MonoBehaviour {

	public bool grounded;
	public Transform groundCheck;
	public LayerMask whatIsGround;

	private CharacterJump theCharacterJump;

	// Use this for initialization
	void Start () {
		groundCheck = gameObject.GetComponent<Transform> ();
		whatIsGround = LayerMask.GetMask ("Ground");
		theCharacterJump = GetComponentInParent<CharacterJump> ();
	}
	
	// Purpose: Set grounded to "true" if "groundCheck" enters a "Ground" object
	// Parameters: Collider
	// Returns: void
	// Pre-conditions: 
	// Post-conditions: 
	// -----------------------------------------------------------------
	void OnTriggerEnter (Collider collider)
	{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
		{
			grounded = true;
//			theCharacterJump.doubleJumped = false;
		}
		
	}
	void OnTriggerExit (Collider collider)
		{
		// Layer 8 is the ground Layer
		if (collider.gameObject.layer == 8) 
			grounded = false;
	}

} // END OF GroundCheck CLASS
