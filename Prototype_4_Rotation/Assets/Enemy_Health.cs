using UnityEngine;
using System.Collections;

public class Enemy_Health : MonoBehaviour {
    public GameObject object_One;
    public GameObject object_Two;
    public GameObject object_Three;

    public int enemy_Number;
    public int Flyer_Health = 5;
    public int Walker_Health = 10;

    const int HUNDRED = 100;
    const int FIFTY = 50;
    const int TWENTY = 20;
    const int FIVE = 5;

    int rand;

    // Use this for initialization
    void Start () {
        Type_Check_and_Set();
	}
	
	// Update is called once per frame
	void Update () {
        Random_Drops(Health_Drop());
        Death(Health_Drop());
	}

    void Type_Check_and_Set() {
        if (Enemy_Driver.Enemy_List[enemy_Number].Get_Enemy_Type() == Enemy_Driver.Enemy_Type.Flyer)
            Enemy_Driver.Enemy_List[enemy_Number].Set_health(Flyer_Health);
        else if (Enemy_Driver.Enemy_List[enemy_Number].Get_Enemy_Type() == Enemy_Driver.Enemy_Type.Walker)
            Enemy_Driver.Enemy_List[enemy_Number].Set_health(Flyer_Health);
    }

    void Random_Drops(bool dead) {
        rand = Random.Range(0, HUNDRED);
        if (dead == true)
        {
            if (rand >= FIVE) 
                Instantiate(object_One, this.transform.position, Quaternion.identity);
            else if (rand < FIVE && rand >= TWENTY)
                Instantiate(object_Two, this.transform.position, Quaternion.identity);
            else if (rand < TWENTY && rand >= FIFTY)
                Instantiate(object_Three, this.transform.position, Quaternion.identity);
        }   
    }

    // **************************************Need completion****************************************
    bool Health_Drop() { return false; }
    // *********************************************************************************************
    
    void Death(bool dead)
    {
        if (dead == true)
        {
            Enemy_Driver.Enemy_List[enemy_Number].Set_Life_Statues(false);
            Destroy(this.gameObject);
        }
    }
}
