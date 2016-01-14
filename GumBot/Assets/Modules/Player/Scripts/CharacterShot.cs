// Author: Jeremy Graham
// Description: Shoots a bullet

using UnityEngine;
using System.Collections;

// CharacterShot
// Script will instatiate a bullet at the shootingPoint

public class CharacterShot : MonoBehaviour {

 
    public GameObject bullet;
    public Transform shootingPoint;
	public float damage = 1;

	// This should either be EnemyBullet or PlayerBullet. Set it to that in the editor
	public string bulletTag;
	
	// Update is called once per frame
    void Update () 
	{
    	if(Input.GetKeyDown(KeyCode.F))
		{
			shot ();
		}
    }

    public void shot()
    {
		bullet.GetComponent<bulletMovement> ().theCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();
		bullet.GetComponent<bulletMovement> ().damage = damage;
		bullet.gameObject.tag = bulletTag;
        Instantiate(bullet, shootingPoint.position, shootingPoint.rotation);

    }
}
