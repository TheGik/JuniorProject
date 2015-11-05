using UnityEngine;
using System.Collections;

public class RotateRight : MonoBehaviour {

	public float rotationSpeed = -0.5f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(new Vector3 (GetComponent<Transform>().rotation.x, GetComponent<Transform>().rotation.y, GetComponent<Transform>().rotation.z + rotationSpeed) * Time.deltaTime);
	}
}
