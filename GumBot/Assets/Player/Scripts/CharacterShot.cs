﻿// Author: Jeremy Graham
// Description: Shoots a bullet

using UnityEngine;
using System.Collections;
//so that audio things can happen here. Like several things, this is temporary audio implementation
using FMODUnity;

// CharacterShot
// Script will instatiate a bullet at the shootingPoint

public class CharacterShot : MonoBehaviour {

 
    public GameObject bullet;
    public Transform shootingPoint;
	public float damage = 1;
	public float reloadTime = 0.5f;
	public bool reloading;

	// This should either be EnemyBullet or PlayerBullet. Set it to that in the editor
	public string bulletTag;

	// audio
	public StudioEventEmitter shotSound;

    public void shot()
    {
		if (!reloading) 
		{
			bullet.GetComponent<bulletMovement> ().theCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();
			bullet.GetComponent<bulletMovement> ().damage = damage;
			bullet.gameObject.tag = bulletTag;
			Instantiate (bullet, shootingPoint.position, shootingPoint.rotation);
			StartCoroutine ("ShotCo");
			// audio
			shotSound.Play ();
		}

    }

	IEnumerator ShotCo()
	{
		reloading = true;

		yield return new WaitForSeconds (reloadTime);

		reloading = false;
		
	}
}
