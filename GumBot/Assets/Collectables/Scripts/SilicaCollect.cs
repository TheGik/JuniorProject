﻿using UnityEngine;
using System.Collections;

public class SilicaCollect : MonoBehaviour {

    public CarbonCounter carbon;

    // Use this for initialization
    void Start()
    {
        carbon = gameObject.GetComponent<CarbonCounter>();
    }

    // Update is called once per frame
    void Update()
    {

    }
    void OnTriggerEnter(Collider Collider)
    {
        if (Collider.gameObject.tag == "Player")
        {
            CarbonCounter.silicatotal++;
            Destroy(gameObject);
        }
    }
}