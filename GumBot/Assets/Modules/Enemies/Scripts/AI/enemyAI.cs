using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class enemyAI : MonoBehaviour
{


    private CharacterMotor theCharacterMotor;
    private CharacterJump theCharacterJump;

    public Rigidbody rb;

    public List<Vector3> posCache;

    Transform target;
    Transform core;

    public float jumpSpeed = 3f;
    public float speed = 6f;
    public float closeEnough = 2f;
    public float jump = 3f;

    private float differenceY = 0f;
    private float differenceX = 0f;

    private Vector3 distFromCorePlayer;
    private Vector3 distFromCoreEnemy;
    private Vector3 distBetween;

    bool isGrounded = false;
    bool shouldJump = false;

    // Use this for initialization
    void Start()
    {
        theCharacterMotor = gameObject.GetComponent<CharacterMotor>();
        theCharacterJump = gameObject.GetComponent<CharacterJump>();

        posCache = new List<Vector3>();

        target = GameObject.FindWithTag("Player").transform;
        core = GameObject.Find("Core").transform;
    }

    // Update is called once per frame
    void Update()
    {
        //how many frames pass between each cache of the player's position
        if (Time.frameCount % 50 == 0)
            addPoint();

        if (posCache.Count > 0)
        {
            //change heading and rotation based on the first point in the list
            /*
            Vector3 targetHeading = posCache[0] - transform.position;
            Vector3 targetDirection = targetHeading.normalized;
            transform.rotation = Quaternion.LookRotation(targetDirection);
            transform.eulerAngles = new Vector3(0, transform.eulerAngles.y, 0);
            */

            //trying a differnt way to make it face the first point in the list *didn't work*
            transform.LookAt(posCache[0]);

            //move enemy
            //transform.position += transform.forward * speed * Time.deltaTime;

            //using velocity to move the enemy instead
            theCharacterMotor.HorizontalVelocity();

            //remove the points in the list as the enemy reaches them
            if (Vector2.Distance(transform.position, posCache[0]) <= closeEnough || posCache.Count > 5f)
            {
                posCache.RemoveAt(0);
            }
        }

        /*
        Using the differnce between the posion in the list and the enemy's position to determine
        if he needs to face left/right or if he needs to jump won't work, because the x and y 
        variables will be all messed as they move around the world.

        Solution for jump: Use the point at the core of the planet to determine the player's distance from the core
        and compare that value with the enemy's distance from the core?

        How do I determine which way the enemy is facing?
        */

        /*
        distance formula:
        point 1 (x,y) = (a,b)
        point 2 (x,y) = (c,d)
        distance = Sqrt ( (b-a)^2 + (d-c)^2 )

        or to compare the distance between:
        core = x, target = y, enemy = a
        ((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)) < ((x1-x2)*(x1-x2)+(a1-a2)*(a1-a2))

        if the is distance between the target and the core is greater than the distance between the enemy and the core...
        then the enemy should jump.
        if not then it should not jump
        if ((core.position.y - core.position.x) * (core.position.y - core.position.x) + (posCache[0].y - posCache[0].x) * (posCache[0].y - posCache[0].x) > (core.position.y - core.position.x) * (core.position.y - core.position.x) + (transform.position.y - transform.position.x) * (transform.position.y - transform.position.x))
            shouldJump = true;
            else
            shouldJump = false;
            
        */

        //could simplify this by putting the math in a method
        if ((core.position.y - core.position.x) * (core.position.y - core.position.x) + (posCache[0].y - posCache[0].x) * (posCache[0].y - posCache[0].x) < (core.position.y - core.position.x) * (core.position.y - core.position.x) + (transform.position.y - transform.position.x) * (transform.position.y - transform.position.x))
            shouldJump = true;
        else
            shouldJump = false;

        if (shouldJump == true)
            theCharacterJump.Jump();

    }//end update

    void addPoint()
    {
        posCache.Add(target.position);
    }
    
}



