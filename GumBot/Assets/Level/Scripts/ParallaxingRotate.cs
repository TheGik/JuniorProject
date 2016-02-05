﻿using UnityEngine;
using System.Collections;

public class ParallaxingRotate : MonoBehaviour {
	
	public Transform[] backgrounds;
	private float[] parallaxScales;
	public float smoothing;
	
	private Vector3 prevCamPos;
	
	// Use this for initialization
	void Start () 
	{
		
		prevCamPos = transform.position;
		
		parallaxScales = new float[backgrounds.Length];
		
		for (int i = 0; i < parallaxScales.Length; i++) 
			parallaxScales[i] = backgrounds[i].position.z * -1;
		
	}
	
	// Update is called once per frame
	void LateUpdate () 
	{
		for (int i = 0; i < backgrounds.Length; i++) 
		{
//			Quaternion parallax = (prevCamPos - transform.position) * (parallaxScales[i] / smoothing);
			
//			backgrounds[i].position = new Vector3 (backgrounds[i].position.x + parallax.x, backgrounds[i].position.y + parallax.y, backgrounds[i].position.z);
		}
		
		prevCamPos = transform.position;
	}
}