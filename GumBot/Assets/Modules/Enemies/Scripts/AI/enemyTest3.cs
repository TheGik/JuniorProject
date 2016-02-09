using UnityEngine;
using System.Collections;

public class enemyTest3 : MonoBehaviour
{
    
    private CharacterMotor2 theCharacterMotor;
    
    public GameObject bulletEnemy;
    public Transform shootingPoint;

    public int lifeCounter = 3;

    Transform target;
    Transform enemyTransform;

    public int minRange = 3;
    public int maxRange = 10;
    bool patrol = true;

    // Use this for initialization
    void Start()
    {


        theCharacterMotor = gameObject.GetComponent<CharacterMotor2>();

        theCharacterMotor.RightActivation();


        //get the enemy's Transform
        enemyTransform = this.GetComponent<Transform>();


    }


    void OnTriggerEnter(Collider collider)
    {
        if ( patrol == true)
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
        }
            if (collider.gameObject.layer == 14)
            {
                lifeCounter += -1;
                print(lifeCounter);
            }
        

    }


    // Update is called once per frame
    void Update()
    {

        

        Vector3 targetHeading = target.position - transform.position;
        Vector3 targetDirection = targetHeading.normalized;


        if (Vector3.Distance(transform.position, target.position) <= minRange)
        {
            this.transform.position = new Vector3(0, 0, 0);
            //enemy will flip to face player
            transform.rotation = Quaternion.LookRotation(targetDirection);
            transform.eulerAngles = new Vector3(0, transform.eulerAngles.y, 0);
            target = GameObject.FindWithTag("Player").transform;
            transform.LookAt(target);

            patrol = false;

            if (Time.frameCount % 50 == 0)
                startShooting();
        }
        if (Vector3.Distance(transform.position, target.position) > minRange)
        {
            patrol = true;
        }




        if (Input.GetKey(KeyCode.X))
        {
            Destroy(gameObject);
        }
        if (lifeCounter <= 0)
        {
            Destroy(gameObject);
        }


    }
    
   
    

    void startShooting()
    {
            Instantiate(bulletEnemy, shootingPoint.position, shootingPoint.rotation);
        }
    }
