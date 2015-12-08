using UnityEngine;
using System.Collections;

public class CarbonCounter : MonoBehaviour {

    public static int carbontotal = 0;
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    void OnGUI()
    {
        string carbontext = "Carbon Count: " + carbontotal;
        GUI.Box(new Rect(Screen.width - 150, 20, 130, 20), carbontext);
    }
}
