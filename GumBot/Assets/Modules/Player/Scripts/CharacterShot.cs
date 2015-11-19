using UnityEngine;
using System.Collections;

public class CharacterShot : MonoBehaviour {

 
    public GameObject bullet;
    public Transform shootingPoint;

    // Use this for initialization
    void Start () {
        

    }
	
	// Update is called once per frame
    void Update () {
        if (Input.GetKeyDown(KeyCode.F))
        {
            Instantiate(bullet, shootingPoint.position, shootingPoint.rotation);

        
        }

        }
}
