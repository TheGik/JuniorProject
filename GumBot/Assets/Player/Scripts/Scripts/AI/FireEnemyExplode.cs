using UnityEngine;
using System.Collections;

public class FireEnemyExplode : MonoBehaviour {

    private TrackPlayer theTrackPlayer;
    private float targetDistance;
    public GameObject Explosion;
    public Transform explosionPoint;
    public float countdown = 3f;
    public float explodeStart = 5;
    public float damage = 1;
 
    public bool reloading;
    public string bulletTag;

    void Start()
    {
        theTrackPlayer = gameObject.GetComponent<TrackPlayer>();
    }

    // Update is called once per frame
    void Update () {
        targetDistance = theTrackPlayer.targetDistance;
  
    
        if (targetDistance < explodeStart && !reloading)
        {
            Instantiate(Explosion, explosionPoint.position, explosionPoint.rotation);
            StartCoroutine(waitToExplode());
        }

    }


    IEnumerator waitToExplode() {
        reloading = true;
        yield return new WaitForSeconds(countdown);
        reloading = false;
    }
}
