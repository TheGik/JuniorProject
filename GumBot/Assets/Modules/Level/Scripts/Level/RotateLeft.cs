﻿using UnityEngine;
using System.Collections;

public class RotateLeft : MonoBehaviour {

	public float rotationSpeed = 1f;
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(new Vector3 (0, 0, GetComponent<Transform>().rotation.z + rotationSpeed) * Time.deltaTime);
	}
}
