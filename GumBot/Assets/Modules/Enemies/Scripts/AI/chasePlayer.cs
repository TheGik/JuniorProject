using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class chasePlayer : MonoBehaviour
{

    public List<Vector3> posCache;
    Transform target;
    public float jumpSpeed = 3f;
    public float speed = 6f;
    public float closeEnough = 2f;
    public float jump = 3f;
    float differenceY = 0f;
    bool isGrounded = false;

    // Use this for initialization
    void Start()
    {
        posCache = new List<Vector3>();
        target = GameObject.FindWithTag("Player").transform;

    }

    // Update is called once per frame
    void Update()
    {

        if (Time.frameCount % 50 == 0)
            addPoint();

        if (posCache.Count > 0)
        {
            Vector3 targetHeading = posCache[0] - transform.position;
            Vector3 targetDirection = targetHeading.normalized;
            transform.rotation = Quaternion.LookRotation(targetDirection);
            transform.eulerAngles = new Vector3(0, transform.eulerAngles.y, 0);
            transform.position += transform.forward * speed * Time.deltaTime;

            if (Vector2.Distance(transform.position, posCache[0]) <= closeEnough || posCache.Count > 5f)
            {
                posCache.RemoveAt(0);
            }
        }

        differenceY = posCache[0].y - transform.position.y;

        if (differenceY > jump && isGrounded == true)
            this.GetComponent<Rigidbody>().velocity = transform.TransformDirection(new Vector3(0, jumpSpeed, 0)); 

    }

    void OnCollisionStay(Collision collider)
    {
        if (collider.gameObject.layer == 8)
        isGrounded = true;
    }

    void OnCollisionExit(Collision collider)
    {
        if (collider.gameObject.layer == 8)
        isGrounded = false;
    }

    
    void addPoint()
    {
        posCache.Add(target.position);

    }


}
