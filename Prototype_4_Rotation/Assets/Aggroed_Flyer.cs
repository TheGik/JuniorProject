using UnityEngine;
using System.Collections;

public class Aggroed_Flyer : MonoBehaviour {

    public GameObject unaggroed_Flyer;
	public int enemy_Number = -1;
	public int maxRange = 4;

    const string PLAYER = "Player";
    const float RETURN_HEIGHT = .75f;

    Transform player_Transform;

    Vector3 direction_Of_Player;
    Vector3 player_Position;

    // Update is called once per frame
    void Update()
    {
        player_Transform = GameObject.FindWithTag(PLAYER).transform;
        direction_Of_Player = (GameObject.FindWithTag(PLAYER).transform.position - this.transform.position).normalized;

        if (Vector3.Distance(this.transform.position, GameObject.FindWithTag(PLAYER).transform.position) <= maxRange)
        {
			Follow_Player();
        }
        else
        {
			Object_Destructor();
        }
    }

    // Follow player while aggroed
	void Follow_Player()
	{
		this.GetComponent<Rigidbody>().velocity = new Vector3(0.0f, 0.0f, 0.0f);
		this.transform.rotation = Quaternion.LookRotation(direction_Of_Player);
		
		player_Position = GameObject.FindWithTag(PLAYER).transform.position;
		this.GetComponent<NavMeshAgent>().SetDestination(player_Position);
	}

    // Destroy the flyer and instantiate an Unaggroed_Flyer upon losing aggro
    void Object_Destructor()
	{
		GameObject unaggroed_Flyer_Clone = (GameObject)Instantiate(unaggroed_Flyer, new Vector3(this.transform.position.x, RETURN_HEIGHT, this.transform.position.z), Quaternion.identity);
		unaggroed_Flyer_Clone.GetComponent<Unaggroed_Flyer>().enemy_Number = enemy_Number;
        unaggroed_Flyer_Clone.GetComponent<Enemy_Health>().enemy_Number = enemy_Number;
        Destroy(this.gameObject);
	}
}
