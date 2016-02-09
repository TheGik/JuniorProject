using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class enemyTest : MonoBehaviour
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

    Transform enemyTransform;

    public float rotationSpeed = 3f;
    public float detectionRange = 10;

    public int minRange = 3;
    public int maxRange = 10;

    // Use this for initialization
    void Start()
    {
        theCharacterMotor = gameObject.GetComponent<CharacterMotor>();
        theCharacterJump = gameObject.GetComponent<CharacterJump>();

        //get the enemy's Transform
        enemyTransform = this.GetComponent<Transform>();
    }

    // Update is called once per frame
    void Update()
    {

        target = GameObject.FindWithTag("Player").transform;
        Vector3 targetHeading = target.position - transform.position;
        Vector3 targetDirection = targetHeading.normalized;
        
        if (Vector3.Distance(transform.position, target.position) <= maxRange && Vector3.Distance(transform.position, target.position) >= minRange)
        {
            //enemy will flip to face player and move forwards
            transform.rotation = Quaternion.LookRotation(targetDirection);
            transform.eulerAngles = new Vector3(0, transform.eulerAngles.y, 0);

            enemyTransform.position += enemyTransform.forward * speed * Time.deltaTime;

        }//end update
    }

}
