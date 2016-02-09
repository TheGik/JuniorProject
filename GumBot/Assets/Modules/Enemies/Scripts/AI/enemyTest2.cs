using UnityEngine;
using System.Collections;

public class enemyTest2 : MonoBehaviour {
    
    private CharacterMotor2 theCharacterMotor;

    public int lifeCounter = 3;

    // Use this for initialization
    void Start () {

        theCharacterMotor = gameObject.GetComponent<CharacterMotor2>();

        theCharacterMotor.RightActivation();

    }

    void OnTriggerEnter(Collider collider)
    {
        
        if (collider.gameObject.layer == 12)
        {
            theCharacterMotor.movingRight = false;
            theCharacterMotor.LeftActivation();

        }
        if (collider.gameObject.layer == 13)
        {
            theCharacterMotor.movingLeft = false;
            theCharacterMotor.RightActivation();

        }
        if (collider.gameObject.layer == 14)
        {
            lifeCounter += -1;
            print(lifeCounter);
        }

    }


    // Update is called once per frame
    void Update () {

        if (Input.GetKey(KeyCode.X))
        {
            Destroy(gameObject);
        }
        if (lifeCounter <= 0)
        {
            Destroy(gameObject);
        }

    }

 
}
