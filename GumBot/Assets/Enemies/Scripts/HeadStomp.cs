using UnityEngine;
using System.Collections;

public class HeadStomp : MonoBehaviour {

	private CharacterHealth theCharacterHealth;

	void Start()
	{
		theCharacterHealth = GetComponentInParent<CharacterHealth> ();
	}


	void OnTriggerEnter (Collider collider)
	{
		if (collider.gameObject.layer == 9) 
		{
			GetComponentInParent<BoxCollider> ().enabled = false;
			theCharacterHealth.removeHealth (99);


		}
	}

}
