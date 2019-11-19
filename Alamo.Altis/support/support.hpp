class CfgCommunicationMenu
{
  class artillery //wave 19
  {
      text = "Artillery Strike"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "_null = [6, 100, 5, 3, 1, 4, 'R_80mm_HE'] execVM 'support\mapclickarty.sqf'"; // Code executed upon activation (ignored when the submenu is not empty)
      icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\artillery_ca.paa"; // Icon displayed permanently next to the command menu
      cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 1; // 1 to remove the item after calling
  };
  class mortar // wave 10
  {
      text = "Mortar Strike"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "_null = [8, 50, 3, 3, 2, 2, 'R_60mm_HE'] execVM 'support\mapclickarty.sqf'"; // Code executed upon activation (ignored when the submenu is not empty)
      icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\mortar_ca.paa";
      cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 1; // 1 to remove the item after calling
  };
  class jdam // wave 14
  {
      text = "Laser Guided Missle"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "nul=[laserTarget player, getpos missilestart,'Missile_AGM_02_F',700] execvm 'support\launchmissile.sqf'"; // Code executed upon activation (ignored when the submenu is not empty)
      icon = "images\comm\jdam.paa";
      cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 1; // 1 to remove the item after calling
  };
  class uav_recon // wave 6
  {
      text = "UAV Recon"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "_null = execVM 'support\mapclickuav.sqf'";
      icon = "images\comm\uav_recon.paa";
      cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 1; // 1 to remove the item after calling
  };
  class cluster // wave 24
  {
      text = "Carpet Bomb"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "_null = [1, 100, 1, 90, 1, 6, 'R_60mm_HE'] execVM 'support\cluster\mapclickcluster.sqf'";
      icon = "images\comm\cluster.paa";
      cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 1; // 1 to remove the item after calling
  };
  class rearm
  {
      text = "Rearm (Current Arsenal Loadout)"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "execVM 'support\rearm.sqf'";
      icon = "images\comm\rearm.paa";
      cursor = ""; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 0; // 1 to remove the item after calling
  };
  class godmode
  {
      text = "God Mode (60 seconds)"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "execVM 'support\godmode.sqf'";
      icon = "images\comm\godmode.paa";
      cursor = ""; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 1; // 1 to remove the item after calling
  };
  class invisible
  {
      text = "Invisibility (60 seconds)"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "execVM 'support\invisible.sqf'";
      icon = "images\comm\invisible.paa";
      cursor = ""; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 1; // 1 to remove the item after calling
  };
  class heal
  {
      text = "Heal"; // Text displayed in the menu and in a notification
      submenu = ""; // Submenu opened upon activation
      expression = "execVM 'support\heal.sqf'";
      icon = "images\comm\heal.paa";
      cursor = ""; // Custom cursor displayed when the item is selected
      enable = "1"; // Simple expression condition for enabling the item
      removeAfterExpressionCall = 0; // 1 to remove the item after calling
  };
};
