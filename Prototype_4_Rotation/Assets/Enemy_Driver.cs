using UnityEngine;
using System.Collections;

public class Enemy_Driver : MonoBehaviour {

    public enum Enemy_Type {None, Flyer, Walker};
    public static Enemy[] Enemy_List = new Enemy[1000];

    public struct Enemy {

        private Vector3 original_Position;
        private Vector3 original_Direction;
        private Enemy_Type type;
        private int health;
        private bool alive;

		public Enemy(Enemy_Type type, Vector3 original_Position)
        {
			this.original_Position = original_Position;
            original_Direction = new Vector3(0.0f, 1.0f, 0.0f);
			this.type = type;
            health = 0;
            alive = true;
        }

        public Vector3 Get_Original_Position() { return original_Position; }
        public Vector3 Get_Original_Direction() { return original_Direction; }
        public int Get_health() { return health; }
        public Enemy_Type Get_Enemy_Type() { return type; }
        public bool Get_Life_Statues() { return alive; }
        public void Set_Original_Position(Vector3 x) { original_Position = x; }
        public void Set_Original_Direction(Vector3 x) { original_Direction = x; }
        public void Set_health(int x) { health = x; } 
        public void Set_Life_Statues(bool x) { alive = x; }
    }

    static int count;

    // Use this for initialization
    void Start () {
        count = 0;
	}

	public static void Add_Enemy(Enemy new_Enemy)
    {
        Enemy_List[count] = new_Enemy;
        count++;
    }

    public static int Get_Enemy_Count() { return count; }
}
