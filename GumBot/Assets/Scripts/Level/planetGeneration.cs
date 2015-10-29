using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class planetGeneration : MonoBehaviour {

	GameObject[] planets;
	
	public int numWorlds = 3;
	int index;
	int rotationDegree;
	int rotationValue = 0;
	int sectionsPerWorld = 4;
	int minPlanets = 4;
	int maxPlanets = 9;
	int lrgPlanetSections = 8;
	int medPlanetSections = 6;
	int smlPlanetSections = 4;
	
	int ringAmount = 1;
	
	public List<GameObject> sections = new List<GameObject>();
	
	public List<GameObject> smlSections = new List<GameObject>();
	public List<GameObject> medSections = new List<GameObject>();
	public List<GameObject> lrgSections = new List<GameObject>();


	// Use this for initialization
	void Awake () {

		int planetSize = 1;

		// Start Generating Worlds
		for(int i = 0; i < numWorlds; i++){
			
			// Choose a random planet size
			int randRingAmount = Random.Range (1, 3);
			ringAmount = randRingAmount;



			// Assign the Shards to the list "sections"
			if(planetSize == 1){
				sectionsPerWorld = smlPlanetSections;
				
				for (int y = 0; y < sectionsPerWorld; y++){
					sections.Add(smlSections[y]);
				}
			} else if (planetSize == 2){
				sectionsPerWorld = medPlanetSections;
				
				for (int y = 0; y < sectionsPerWorld; y++){
					sections.Add(medSections[y]);
				}
			} else {
				sectionsPerWorld = lrgPlanetSections;
				
				for (int y = 0; y < sectionsPerWorld; y++){
					sections.Add(lrgSections[y]);
				}
			}
			
			// Get the proper amount the shards need to be rotated
			rotationDegree = 360/sectionsPerWorld;
			
			// Create an empty game object to parent all the shards to
			GameObject planet = new GameObject();

			
			// Place the planet origin
			planet.transform.position = new Vector3 (0 , 0, 0);
			

			
			// Name the first planet "Planet" and the rest "Moon"
			// If it is a "Moon", parent it to the "Planet"
			if(i != 0){
				GameObject mainPlanet = GameObject.Find ("Core");
				
				planet.name = "Ring" + i;
				
				planet.transform.parent = mainPlanet.transform;
			} else {

				// Assign the proper components to the planet
				planet.AddComponent<Attractor> ();
				/* Don't need these unless we want to switch gravity
				planet.AddComponent<SphereCollider> ();
				planet.GetComponent<SphereCollider>().isTrigger = true;
				planet.GetComponent<SphereCollider>().transform.localScale = new Vector3 (30, 30, 5);
				*/
				planet.name = "Core";
			}
			
			// Randomly choose shards from the list of shards
			for(int n = 0; n < sectionsPerWorld; n++){
				
				int rand = Random.Range (0, sections.Count);
				GameObject value = sections[rand];
				
				// Place shard
				GameObject obj = Instantiate (sections[rand], new Vector3(planet.transform.position.x, planet.transform.position.y, (planet.transform.position.z - 1)), Quaternion.Euler(planet.transform.rotation.x, planet.transform.rotation.y, planet.transform.rotation.z + rotationValue)) as GameObject;
				
				// Parent to Planet or Moon respectivly
				obj.transform.parent = planet.transform;
				
				// Add MeshCollider (This could be done in the prefab) If so, remove this code
				obj.AddComponent<MeshCollider> ();
				
				// Rename the Shard
				obj.name = "Shard" + n;
				
				// Remove Shard from list to not choose duplicates
				sections.RemoveAt(rand);
				
				// Change Rotation Value for the next shard
				rotationValue += rotationDegree;
				
				
			}
			
			planetSize++;
			
			
			
		}
	} // Awake End


}