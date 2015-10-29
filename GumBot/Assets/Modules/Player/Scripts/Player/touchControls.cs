using UnityEngine;
using System.Collections;

public class touchControls : MonoBehaviour {


	private Movement playerMove;

	void start () {
		playerMove = FindObjectOfType<Movement> ();
	}

	public void LeftArrow()
	{
		playerMove.Move (-1);
	}
	
	public void RightArrow()
	{
		playerMove.Move (1);
	}
	
	public void UnpressedArrow()
	{
		playerMove.Move (0);
	}
	
	public void TouchJump()
	{
		playerMove.Jump ();
	}
	
	public void TouchShoot()
	{
		playerMove.Attack ();
	}
}
