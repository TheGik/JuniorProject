// Author: Miles Meacham
// Description: Detect any damage given to the player. Passes this info to the health script
// *NOTE* There MUST be a "CharacterHealth" script attached to this gameobject

using UnityEngine;
using System.Collections;

// Character Health
// Base class for all character health

public class TakeDamage : MonoBehaviour {


	private CharacterHealth theCharacterHealth;

	// Use this for initialization
	public void Start () 
	{
		theCharacterHealth = GetComponent<CharacterHealth> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	// These are for all NON-trigger damage dealing objects
	void OnCollisionEnter (Collision collider)
	{
		// Touching enemy hurts you
		if (collider.gameObject.tag == "Enemy")
		{
			print ("Detecting a Hit");
			theCharacterHealth.removeHealth(1f);
			theCharacterHealth.Invincibility();
		}

	}

	// These are for all trigger damage dealing objects
	void OnTriggerEnter (Collider collider)
	{

		
	}
}
