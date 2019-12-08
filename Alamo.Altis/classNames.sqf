_mod = paramsArray select 2

switch (_mod) do {
  case (0): {
  // AAF
      uniforms = ["U_I_CombatUniform_shortsleeve", "U_I_CombatUniform", "U_I_OfficerUniform"];
      masks = ["G_Balaclava_oli", "G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport"];

      vest0 = ["V_BandollierB_rgr", "V_Chestrig_oli"];
      vest1 = ["V_TacVest_oli"];
      vest2 =["V_PlateCarrierIA1_dgtl"];
      vest3 = ["V_PlateCarrierIAGL_dgtl"];

      hats = ["H_Booniehat_dgtl", "H_MilCap_dgtl", "H_Cap_blk_Raven", "H_Watchcap_camo", "H_Bandanna_camo"];
      helm = ["H_HelmetIA"];

      backpacks = ["B_FieldPack_oli","B_Kitbag_sgg", "B_TacticalPack_oli"];

      // weapons
      pistol = ["hgun_P07_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F"];
      rifle = ["arifle_Mk20C_F"];
      gl = ["arifle_Mk20_GL_F"];
      mg = ["LMG_Mk200_F"];
      at = ["launch_NLAW_F"];
      dmr = ["srifle_EBR_F"];
      sniperOptic = ["optic_DMS"];

      // vehicles
      offroads =[ "I_G_Offroad_01_armed_F"];
      mraps = ["I_MRAP_03_hmg_F"];
      wheeled = ["I_APC_Wheeled_03_cannon_F"];
      tracked = ["I_APC_tracked_03_cannon_F"];
      tanks = ["I_MBT_03_cannon_F"];
  };
  case (1): {
  // CSAT
      uniforms = ["U_O_CombatUniform_ocamo","U_O_SpecopsUniform_ocamo"];
      masks = ["G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_shades", "G_Bandanna_sport"];

      vest0 = ["V_HarnessO_brn", "V_Chestrig_khk"];
      vest1 = ["V_TacVest_khk"];
      vest2 =["V_PlateCarrier1_blk"];
      vest3 = ["V_PlateCarrierSpec_blk"];

      hats = ["H_Cap_brn_SPECOPS", "H_Watchcap_cbr", "H_MilCap_ocamo", "H_Beret_blk"];
      helm = ["H_HelmetSpecO_ocamo","H_HelmetO_ocamo", "H_HelmetLeaderO_ocamo"];

      backpacks = ["B_FieldPack_ocamo","B_TacticalPack_ocamo", "B_Carryall_ocamo"];

      // weapons
      pistol = ["hgun_Rook40_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F"];
      rifle = ["arifle_Katiba_F"];
      gl = ["arifle_Katiba_GL_F"];
      mg = ["LMG_Zafir_F"];
      at = ["launch_RPG32_F"];
      dmr = ["srifle_DMR_01_F"];
      sniperOptic = ["optic_DMS"];

      // vehicles
      offroads =[ "I_G_Offroad_01_armed_F"];
      mraps = ["O_MRAP_02_hmg_F"];
      wheeled = ["O_APC_Wheeled_02_rcws_v2_F"];
      tracked = ["O_APC_Tracked_02_cannon_F"];
      tanks = ["O_MBT_02_cannon_F"];
  };
  case (2): {
  // NATO
      uniforms = ["U_B_CombatUniform_mcam_worn", "U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest"];
      masks = ["G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_shades", "G_Bandanna_sport"];

      vest0 = ["V_BandollierB_khk", "V_Chestrig_khk"];
      vest1 = ["V_TacVest_khk"];
      vest2 =["V_PlateCarrier2_rgr"];
      vest3 = ["V_PlateCarrierSpec_mtp"];

      hats = ["H_Booniehat_mcamo", "H_Watchcap_khk", "H_Bandanna_mcamo", "H_MilCap_mcamo", "H_Cap_tan_specops_US"];
      helm = ["H_HelmetB_sand", "H_HelmetB_snakeskin", "H_HelmetB"];

      backpacks = ["B_FieldPack_khk","B_TacticalPack_mcamo","B_Kitbag_mcamo"];

      // weapons
      pistol = ["hgun_Pistol_heavy_01_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F"];
      rifle = ["arifle_MX_F", "arifle_MXC_F"];
      gl = ["arifle_MX_GL_F"];
      mg = ["arifle_MX_SW_F", "LMG_Mk200_F"];
      at = ["launch_NLAW_F"];
      dmr = ["srifle_EBR_F"];
      sniperOptic = ["optic_DMS"];

      // vehicles
      offroads =[ "I_G_Offroad_01_armed_F"];
      mraps = ["B_MRAP_01_hmg_F"];
      wheeled = ["B_APC_Wheeled_01_cannon_F"];
      tracked = ["B_APC_Tracked_01_rcws_F"];
      tanks = ["B_MBT_01_cannon_F"];
  };
  case (3): {
  // FIA
      uniforms = ["U_BG_Guerilla2_1", "U_BG_Guerilla2_3", "U_BG_Guerilla3_1", "U_BG_leader", "U_BG_Guerilla1_1", "U_BG_Guerrilla_6_1", "U_BG_Guerilla2_2"];
      masks = ["G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_shades", "G_Bandanna_sport"];

      vest0 = ["V_BandollierB_rgr", "V_BandollierB_rgr", "V_Chestrig_oli", "V_BandollierB_khk", "V_Chestrig_khk", "V_Chestrig_blk"];
      vest1 = ["V_TacVest_oli", "V_TacVest_blk", "V_TacVest_camo"];
      vest2 =["V_PlateCarrier2_blk", "V_PlateCarrier2_rgr"];
      vest3 = ["V_PlateCarrierSpec_blk", "V_PlateCarrierSpec_rgr"];

      hats = ["H_Booniehat_oli", "H_Shemag_olive", "H_Shemag_tan", "H_Shemag_khk", "H_Booniehat_tan", "H_Booniehat_khk", "H_Cap_blk", "H_Cap_grn", "H_Cap_tan", "H_Watchcap_camo", "H_Watchcap_blk", "H_Watchcap_khk"];
      helm = ["H_HelmetB_sand", "H_HelmetB_snakeskin", "H_HelmetB", "H_HelmetB_black"];

      backpacks = ["B_FieldPack_oli", "B_FieldPack_cbr", "B_FieldPack_blk", "B_TacticalPack_oli", "B_TacticalPack_blk", "B_Kitbag_sgg", "B_Kitbag_cbr", "B_Kitbag_rgr"];

      // weapons
      pistol = ["hgun_P07_F", "hgun_Rook40_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F"];
      rifle = ["arifle_TRG20_F", "arifle_Mk20C_plain_F"];
      gl = ["arifle_TRG21_GL_F", "arifle_Mk20_GL_plain_F"];
      mg = ["LMG_Mk200_F", "LMG_Zafir_F"];
      at = ["launch_NLAW_F", "launch_RPG32_F"];
      dmr = ["srifle_EBR_F"];
      sniperOptic = ["optic_DMS"];

      // vehicles
      offroads =[ "I_G_Offroad_01_armed_F"];
      mraps = ["I_MRAP_03_hmg_F"];
      wheeled = ["I_APC_Wheeled_03_cannon_F"];
      tracked = ["I_APC_tracked_03_cannon_F"];
      tanks = ["I_MBT_03_cannon_F"];
  };
  case (4): {
  // Syndikat
  uniforms = ["U_I_C_Soldier_Camo_F", "U_I_C_Soldier_Para_2_F", "U_I_C_Soldier_Para_3_F", "U_I_C_Soldier_Para_4_F", "U_I_C_Soldier_Para_5_F", "U_I_C_Soldier_Para_1_F", "U_BG_Guerilla2_2"];
  masks = ["G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_shades", "G_Bandanna_sport"];

  vest0 = ["V_BandollierB_rgr", "V_BandollierB_rgr", "V_Chestrig_oli", "V_BandollierB_khk", "V_Chestrig_khk", "V_Chestrig_blk"];
  vest1 = ["V_TacVest_oli", "V_TacVest_blk", "V_TacVest_camo"];
  vest2 =["V_PlateCarrier2_blk", "V_PlateCarrier2_rgr"];
  vest3 = ["V_PlateCarrierSpec_blk", "V_PlateCarrierSpec_rgr"];

  hats = ["H_Booniehat_oli", "H_Shemag_olive", "H_Shemag_tan", "H_Shemag_khk", "H_Booniehat_tan", "H_Booniehat_khk", "H_Cap_blk", "H_Cap_grn", "H_Cap_tan", "H_Watchcap_camo", "H_Watchcap_blk", "H_Watchcap_khk"];
  helm = ["H_HelmetB_sand", "H_HelmetB_snakeskin", "H_HelmetB", "H_HelmetB_black"];

  backpacks = ["B_FieldPack_oli", "B_FieldPack_cbr", "B_FieldPack_blk", "B_TacticalPack_oli", "B_TacticalPack_blk", "B_Kitbag_sgg", "B_Kitbag_cbr", "B_Kitbag_rgr"];

  // weapons
  pistol = ["hgun_P07_F", "hgun_Rook40_F", "hgun_Pistol_01_F"];
  smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F", "SMG_05_F"];
  rifle = ["arifle_AK12_F", "arifle_AKM_F", "arifle_AKS_F"];
  gl = ["arifle_AK12_GL_F"];
  mg = ["LMG_Mk200_F", "LMG_03_F"];
  at = ["launch_RPG7_F", "launch_RPG32_F"];
  dmr = ["srifle_EBR_F"];
  sniperOptic = ["optic_DMS"];

  // vehicles
  offroads =[ "I_C_Offroad_02_LMG_F"];
  mraps = ["I_MRAP_03_hmg_F"];
  wheeled = ["I_APC_Wheeled_03_cannon_F"];
  tracked = ["I_APC_tracked_03_cannon_F"];
  tanks = ["I_MBT_03_cannon_F"];
  };
};



publicVariable "uniforms";
publicVariable "masks";
publicVariable "vest0";
publicVariable "vest1";
publicVariable "vest2";
publicVariable "vest3";
publicVariable "hats";
publicVariable "helm";
publicVariable "backpacks";
publicVariable "pistol";
publicVariable "smg";
publicVariable "rifle";
publicVariable "gl";
publicVariable "mg";
publicVariable "at";
publicVariable "dmr";
publicVariable "sniperOptic";
publicVariable "offroads";
publicVariable "mraps";
publicVariable "wheeled";
publicVariable "tracked";
publicVariable "tanks";
