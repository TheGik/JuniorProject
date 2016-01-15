using UnityEngine;
using System.Collections;

public class enemyBulletMovement : MonoBehaviour
{

    public float enemyShotVelocity;
    public Rigidbody rb;
    public float lifeDuration;

    // Use this for initialization
    void Start()
    {
        rb.velocity = transform.TransformDirection(new Vector3(0, -enemyShotVelocity, 0));
    }

    // Update is called once per frame
    void Update()
    {
        StartCoroutine("Destroybullet");
    }
    public IEnumerator Destroybullet()
    {
        yield return new WaitForSeconds(lifeDuration);
        Destroy(gameObject);
    }
}
