using UnityEngine;
using System.Collections;

public class bulletMovement : MonoBehaviour {
    public float shotVelocity;
    public Rigidbody rb;
    public CharacterMotor2 cm;
    public GameObject TheDude;
    public float lifeDuration;

    // Use this for initialization
    void Start () {
        rb = GetComponent<Rigidbody>();
        cm = FindObjectOfType<CharacterMotor2>();
        if (cm.facingRight == true)
        {
            rb.velocity = transform.TransformDirection (new Vector3(shotVelocity, 0, 0));
        }
        if (cm.facingRight == false)
        {
            rb.velocity = transform.TransformDirection(new Vector3(-shotVelocity, 0, 0));
        }

    }
	
	// Update is called once per frame
	void Update () {
        StartCoroutine("Destroybullet");
    }
    public IEnumerator Destroybullet()
    {
        yield return new WaitForSeconds(lifeDuration);
        Destroy(gameObject);
    }
}
