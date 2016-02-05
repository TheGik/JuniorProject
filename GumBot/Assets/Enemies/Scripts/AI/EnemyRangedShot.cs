using UnityEngine;
using System.Collections;

public class EnemyRangedShot : MonoBehaviour {


	public float shotDistanceMax = 20;
	public float shotDistanceMin = 10.1f;

	public float preShotAnimationTime = 1;
	public float postShotCoolDownTime = 3;

	private int tempSpeed;
	private Vector3 playerDistanceVector3;
	private bool shooting = false;
	private TrackPlayer theTrackPlayer;
	private CharacterMotor2 theCharacterMotor;
	private CharacterShot theCharacterShot;

	// Use this for initialization
	void Start ()
	{
		theTrackPlayer = gameObject.GetComponent<TrackPlayer> ();
		theCharacterMotor = gameObject.GetComponent<CharacterMotor2> ();
		theCharacterShot = gameObject.GetComponent<CharacterShot> ();
	}
	
	// Update is called once per frame
	void Update () 
	{
		playerDistanceVector3 = theTrackPlayer.frontOrBack;
		
		if (!shooting) 
		{
			if (playerDistanceVector3.x < shotDistanceMax && playerDistanceVector3.x > shotDistanceMin && playerDistanceVector3.y < 2.5f && playerDistanceVector3.y > -2f) 
				StartCoroutine ("ChargeCo");
		}
	}

	
	IEnumerator ChargeCo()
	{
		shooting = true;

		// Store the speed into a variable
		tempSpeed = theCharacterMotor.speed;
		
		// Turn the speed off for the charging start up animation
		theCharacterMotor.speed = 0;
		
		yield return new WaitForSeconds (preShotAnimationTime);
		
		theCharacterShot.shot();

		yield return new WaitForSeconds (1f);

		theCharacterMotor.speed = tempSpeed;

		yield return new WaitForSeconds (postShotCoolDownTime);
		
		shooting = false;
		
	}

}
