using UnityEngine;
using System.Collections;

public class turret : MonoBehaviour {

    public float targetDistance;
    public float attackDistance;
    public float enemyMovementSpeed;
    public float enemyLookDistance;
    public float enemyStopDistance;
    public float damping;
    public Transform enemyShotStart;
    public Transform enemyShotStart2;
    public Transform enemyShotStart3;
    public Transform Target;
    public GameObject EnemyShot;
    public float nextEnemyFire;
    Rigidbody theRigidbody;
    public float nextEnemyFireMax;

    // Use this for initialization
    void Start()
    {
        theRigidbody = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        targetDistance = Vector3.Distance(Target.position, transform.position);

        if (targetDistance < attackDistance && nextEnemyFire <= 0)
        {
            nextEnemyFire = nextEnemyFireMax;
            // nextEnemyFire = Time.deltaTime + nextEnemyFire;
            shootPlease();
        }
        nextEnemyFire -= Time.deltaTime;
    }


    void shootPlease()
    {
        Instantiate(EnemyShot, enemyShotStart.position, enemyShotStart.rotation);
        Instantiate(EnemyShot, enemyShotStart2.position, enemyShotStart2.rotation);
        Instantiate(EnemyShot, enemyShotStart3.position, enemyShotStart3.rotation);
    }

}
