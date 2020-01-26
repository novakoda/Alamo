_faction = paramsArray select 7;

switch (_faction) do {
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

      pistol = ["hgun_P07_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F"];
      rifle = ["arifle_Mk20C_F"];
      gl = ["arifle_Mk20_GL_F"];
      mg = ["LMG_Mk200_F"];
      at = ["launch_NLAW_F"];
      dmr = ["srifle_EBR_F"];
      sniperOptic = ["optic_DMS"];

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

      pistol = ["hgun_Rook40_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F"];
      rifle = ["arifle_Katiba_F"];
      gl = ["arifle_Katiba_GL_F"];
      mg = ["LMG_Zafir_F"];
      at = ["launch_RPG32_F"];
      dmr = ["srifle_DMR_01_F"];
      sniperOptic = ["optic_DMS"];

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

      pistol = ["hgun_Pistol_heavy_01_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F"];
      rifle = ["arifle_MX_F", "arifle_MXC_F"];
      gl = ["arifle_MX_GL_F"];
      mg = ["arifle_MX_SW_F", "LMG_Mk200_F"];
      at = ["launch_NLAW_F"];
      dmr = ["srifle_EBR_F"];
      sniperOptic = ["optic_DMS"];

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

      pistol = ["hgun_P07_F", "hgun_Rook40_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F"];
      rifle = ["arifle_TRG20_F", "arifle_Mk20C_plain_F"];
      gl = ["arifle_TRG21_GL_F", "arifle_Mk20_GL_plain_F"];
      mg = ["LMG_Mk200_F", "LMG_Zafir_F"];
      at = ["launch_NLAW_F", "launch_RPG32_F"];
      dmr = ["srifle_EBR_F"];
      sniperOptic = ["optic_DMS"];

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

      pistol = ["hgun_P07_F", "hgun_Rook40_F", "hgun_Pistol_01_F"];
      smg = ["SMG_02_F", "hgun_PDW2000_F", "SMG_01_F", "SMG_05_F"];
      rifle = ["arifle_AK12_F", "arifle_AKM_F", "arifle_AKS_F"];
      gl = ["arifle_AK12_GL_F"];
      mg = ["LMG_Mk200_F", "LMG_03_F"];
      at = ["launch_RPG7_F", "launch_RPG32_F"];
      dmr = ["srifle_EBR_F"];
      sniperOptic = ["optic_DMS"];

      offroads =[ "I_C_Offroad_02_LMG_F"];
      mraps = ["I_MRAP_03_hmg_F"];
      wheeled = ["I_APC_Wheeled_03_cannon_F"];
      tracked = ["I_APC_tracked_03_cannon_F"];
      tanks = ["I_MBT_03_cannon_F"];
  };
  case (5): {
  // RHS (Russian)
      uniforms = ["rhs_uniform_vmf_flora"];
      masks = ["rhs_scarf", "rhs_balaclava", "rhs_balaclava1_olive"];
      vest0 = ["rhs_6sh92", "rhs_6sh92_headset", "rhs_6sh92_radio"];
      vest1 = ["V_TacVest_oli"];
      vest2 =["rhs_6b23_rifleman", "rhs_6b23_engineer"];
      vest3 = ["rhs_6b13_Flora_6sh92", "rhs_6b13_Flora_6sh92_radio"];
      hats = ["rhs_Booniehat_flora", "rhs_beanie_green", "rhs_fieldcap_vsr"];
      helm = ["rhs_6b7_1m", "rhs_6b26", "rhs_6b26_ess", "rhs_6b26_green", "rhs_6b26_ess_green"];
      backpacks = ["rhs_assault_umbts","rhs_sidor"];

      pistol = ["rhs_weap_makarov_pm"];
      smg = ["rhs_weap_pp2000"];
      rifle = ["rhs_weap_ak74m", "rhs_weap_ak103", "rhs_weap_ak105", "rhs_weap_ak74_2", "rhs_weap_ak74_3", "rhs_weap_akm", "rhs_weap_akmn", "rhs_weap_akms", "rhs_weap_aks74u", "rhs_weap_asval"];
      gl = ["rhs_weap_ak103_gp25", "rhs_weap_akm_gp25", "rhs_weap_ak74_gp25", "rhs_weap_ak74m_gp25", "rhs_weap_ak74m_fullplum_gp25"];
      mg = ["rhs_weap_pkm", "rhs_weap_pkp"];
      at = ["rhs_weap_rpg26", "rhs_weap_rpg7"];
      dmr = ["rhs_weap_svdp"];
      sniperOptic = ["rhs_acc_pso1m21"];

      offroads =[ "rhs_tigr_sts_vmf", "rhs_tigr_sts_3camo_vmf"];
      mraps = ["rhsgref_BRDM2_vmf"];
      wheeled = ["rhs_btr60_vmf", "rhs_btr80a_vmf"];
      tracked = ["rhs_brm1k_vmf", "rhs_bmp2d_vmf", "rhs_bmp1p_vmf"];
      tanks = ["rhs_t90saa_tv", "rhs_t80a", "rhs_t14_tv"];
  };
  case (6): {
  // CUSTOM
	  // Uniform and Armor
	  
      uniforms = [""];

      // masks start spawning on units after wave 15
      masks = [""];

      // vest array for waves 1-9. Recommended having no ballistic protection
      vest0 = [""];

      // vest array for waves 6-14. Recommended having low ballistic protection
      vest1 = [""];

      // vest array for waves 11-19. Recommended having medium ballistic protection
      vest2 =[""];

      // vest array for waves after 15. Recommended having max ballistic protection
      vest3 = [""];
	
      hats = [""];
      helm = [""];
      backpacks = [""];


	  // Weapons
	  
	  //  Units spawn with pistols for waves 1 and 2
      pistol = [""];
	  // Units spawn with smgs for waves 2-4
      smg = [""];
	  
	  // Next weapons for units during all other waves
      rifle = [""];
      gl = [""];
      mg = [""];
      at = [""];
	  
	  // Only Snipers use DMR & optic
      dmr = [""];
      sniperOptic = [""];
	  

	  //Vehicles
	  
      offroads =[ ""];
      mraps = [""];
      wheeled = [""];
      tracked = [""];
      tanks = [""];
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
