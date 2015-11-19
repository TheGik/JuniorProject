using UnityEngine;
using System.Collections;

public class Unaggroed_Flyer : MonoBehaviour {

	public GameObject Aggroed_Flyer;
    public int enemy_Number = -1;
	public int maxRange = 4;
    public int rotation_Speed = 20;
    public int speed = 3;

    const float RETURN_HEIGHT = .75f;
    const string BOARDER = "Boarder";
    const string TERRAIN = "Terrain";
    const string TERRAIN_UP = "Terrain_Up";
    const string TERRAIN_DOWN = "Terrain_Down";
    const string PLAYER = "Player";
    const string CENTER = "Center";
    const string FLYER = "Flyer";
    const float DIRECTION = 1.0f;
    const float NEGATIVE_DIRECTION = -1.0f;
	
    Vector3 direction_Of_Origin;
    Vector3 direction_Of_Center;
    Vector3 original_Position;
    Vector3 raised_Origin;
    public Vector3 original_Direction;

    Transform birdy_Transform;

    bool object_Return;
    bool terrain_Collision = false;
    bool reverse = false;
    bool first_Pass = true;
    int terrain_Type;
    int up_Down;
    float near = 0.05f;

    // Use this for initialization
    void Start()
    {
        if (enemy_Number == -1)
        {
            object_Return = false;
            enemy_Number = Enemy_Driver.Get_Enemy_Count();
			Enemy_Driver.Enemy new_Enemy = new Enemy_Driver.Enemy(Enemy_Driver.Enemy_Type.Flyer, this.transform.position);
			Enemy_Driver.Add_Enemy(new_Enemy);

            //***************** ALL Flyers have Direction set at the start******************
            //original_Direction = new_Enemy.Get_Original_Direction();
            //******************************************************************************

            //***************** ALL Flyers have to have their Direction set at the start ***
            if (original_Direction.y == DIRECTION)
                reverse = false;
            else if (original_Direction.y == NEGATIVE_DIRECTION)
                reverse = true;
            //******************************************************************************
        }
        else
        {
            object_Return = true;
            Enemy_Driver.Enemy this_Enemy = Enemy_Driver.Enemy_List[enemy_Number];
            original_Position = this_Enemy.Get_Original_Position();
            original_Direction = this_Enemy.Get_Original_Direction();
			raised_Origin = new Vector3(original_Position.x, RETURN_HEIGHT, original_Position.z);
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (object_Return == true)
			Object_Return ();
		else if (terrain_Collision == true)
			Terrain_Collision ();
		else
			this.transform.RotateAround (GameObject.FindWithTag (CENTER).transform.position, original_Direction, Time.deltaTime * rotation_Speed);

        if (Vector3.Distance(this.transform.position, GameObject.FindWithTag(PLAYER).transform.position) <= maxRange)
            Object_Destructor();
    }

    // Entering a collision with a terrain type or a flyer
    void OnCollisionEnter(Collision x)
    {
        if (x.gameObject.tag == TERRAIN)
        {
            terrain_Collision = true;
            terrain_Type = 0;
        }
        else if (x.gameObject.tag == TERRAIN_UP)
        {
            terrain_Collision = true;
            terrain_Type = 1;
        }
        else if (x.gameObject.tag == TERRAIN_DOWN)
        {
            terrain_Collision = true;
            terrain_Type = 2;
        }
        else if (x.gameObject.tag == FLYER)
        {
            if (reverse == true)
            {
                original_Direction = new Vector3(0.0f, DIRECTION, 0.0f);
                reverse = false;
            }
            else if (reverse == false)
            {
                original_Direction = new Vector3(0.0f, NEGATIVE_DIRECTION, 0.0f);
                reverse = true;
            }
        }
    }

    // Exiting a collision with a terrain type
    void OnCollisionExit(Collision x)
    {
        if (x.gameObject.tag == TERRAIN || x.gameObject.tag == TERRAIN_UP || x.gameObject.tag == TERRAIN_DOWN)
            terrain_Collision = false;
    }

    // Colliding with a Boarder (direction changer)
    void OnTriggerEnter(Collider x)
    {
        if (reverse == true && x.gameObject.tag == BOARDER)
        {
            original_Direction = new Vector3(0.0f, DIRECTION, 0.0f);
            reverse = false;
        }
        else if (reverse == false && x.gameObject.tag == BOARDER)
        {
            original_Direction = new Vector3(0.0f, NEGATIVE_DIRECTION, 0.0f);
            reverse = true;
        }
    }

    // While collided with a terrain type
    void Terrain_Collision()
    {
        birdy_Transform = this.GetComponent<Transform>();

        direction_Of_Center = (GameObject.FindWithTag(CENTER).transform.position - this.transform.position).normalized;
        this.transform.rotation = Quaternion.LookRotation(direction_Of_Center);
        this.transform.eulerAngles = new Vector3(this.transform.eulerAngles.x, this.transform.eulerAngles.y, this.transform.eulerAngles.z);

        if (terrain_Type == 0)
        {
            if (first_Pass == true)
            {
                up_Down = Random.Range(0, 2);
                first_Pass = false;
            }
            if (up_Down == 0)
                birdy_Transform.position -= birdy_Transform.forward * speed * Time.deltaTime;
            else if (up_Down == 1)
                birdy_Transform.position += birdy_Transform.forward * speed * Time.deltaTime;
        }
        else if (terrain_Type == 1)
            birdy_Transform.position -= birdy_Transform.forward * speed * Time.deltaTime;
        else if (terrain_Type == 2)
            birdy_Transform.position += birdy_Transform.forward * speed * Time.deltaTime;
    }

    // Returning to the place of origins before aggroed
    void Object_Return()
    {
        birdy_Transform = this.GetComponent<Transform>();

        direction_Of_Origin = (raised_Origin - this.transform.position).normalized;
        this.transform.rotation = Quaternion.LookRotation(direction_Of_Origin);
        this.transform.eulerAngles = new Vector3(this.transform.eulerAngles.x, this.transform.eulerAngles.y, this.transform.eulerAngles.z);

        birdy_Transform.position += birdy_Transform.forward * speed * Time.deltaTime;
        if (Vector3.Distance(this.transform.position, raised_Origin) <= near)
        {
            this.transform.position = original_Position;
            this.transform.RotateAround(GameObject.FindWithTag(CENTER).transform.position, original_Direction, Time.deltaTime * rotation_Speed);
            object_Return = false;

            if (original_Direction.y == DIRECTION)
                reverse = false;
            else if (original_Direction.y == NEGATIVE_DIRECTION)
                reverse = true;
        }
    }

    // Destroy the flyer and instantiate an Aggroed_Flyer upon being aggroed
    void Object_Destructor()
    {
		Enemy_Driver.Enemy_List [enemy_Number].Set_Original_Direction (original_Direction);
		Enemy_Driver.Enemy_List [enemy_Number].Set_Original_Position (this.transform.position);
		GameObject aggroed_Flyer_Clone = (GameObject)Instantiate(Aggroed_Flyer, this.transform.position, Quaternion.identity);
		aggroed_Flyer_Clone.GetComponent<Aggroed_Flyer>().enemy_Number = enemy_Number;
        aggroed_Flyer_Clone.GetComponent<Enemy_Health>().enemy_Number = enemy_Number;
        Destroy(this.gameObject);
    }
}
