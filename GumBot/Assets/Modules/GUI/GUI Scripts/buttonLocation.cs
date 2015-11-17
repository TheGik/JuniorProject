using UnityEngine;
using System.Collections;

public class buttonLocation : MonoBehaviour {

	private Vector3 vector3Pos;
	public Camera guiCam;

	// Use this for initialization
	void Start () {

		vector3Pos = new Vector3(0.0f, 1.0f, 0.25f);
		transform.position = guiCam.ViewportToWorldPoint(vector3Pos);//gui.camera.ViewportToWorldPoint(v3Pos)
	
	}
	
	// Update is called once per frame
	void Update () {

		vector3Pos = new Vector3(0.0f, 1.0f, 10f);
		transform.position = guiCam.ViewportToWorldPoint(vector3Pos);
	
	}
}
