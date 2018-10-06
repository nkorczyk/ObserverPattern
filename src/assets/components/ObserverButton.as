package assets.components
{
	import assets.core.IObserver;
	
	import spark.components.Button;
	
	public class ObserverButton extends Button implements IObserver
	{
		public static const HIDE_BUTTON:String = "hideBtnEvt";
		public static const SHOW_BUTTON:String = "showBtnEvt";
		
		public function ObserverButton()
		{
			super();
		}
		
		public function update(notification:String):void
		{	
			switch (notification)
			{			
				case HIDE_BUTTON:
				{
					this.alpha = .1;
					break;
				}
				case SHOW_BUTTON:
				{
					this.alpha = 1;
					break;
				}
			}			
		}
	}
}