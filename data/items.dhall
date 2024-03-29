let Schema = ./schema.dhall
let items_category : Schema.Category = 
  { name = "Items"
  , items = 
    -- starting with common items
    [ ./items/repulsion_armor_plate.dhall
    , ./items/mocha.dhall
    , ./items/topaz_broach.dhall
    , ./items/tougher_times.dhall
    , ./items/tri-tip_dagger.dhall
    , ./items/armor-piercing_rounds.dhall
    , ./items/lens-makers_glasses.dhall
    , ./items/crowbar.dhall
    , ./items/bundle_of_fireworks.dhall
    , ./items/bison_steak.dhall
    , ./items/delicate_watch.dhall
    , ./items/roll_of_pennies.dhall
    , ./items/cautious_slug.dhall
    , ./items/power_elixir.dhall
    , ./items/pauls_goat_hoof.dhall
    , ./items/gasoline.dhall
    , ./items/medkit.dhall
    , ./items/bustling_fungus.dhall
    , ./items/focus_crystal.dhall
    , ./items/oddly-shaped_opal.dhall
    , ./items/personal_shield_generator.dhall
    , ./items/white_item_scrap.dhall
    , ./items/backup_magazine.dhall
    , ./items/energy_drink.dhall
    , ./items/sticky_bomb.dhall
    , ./items/stun_grenade.dhall
    , ./items/soldiers_syringe.dhall
    , ./items/monster_tooth.dhall
    , ./items/rusted_key.dhall
    , ./items/warbanner.dhall
    -- next is rare items
    , ./items/predatory_instincts.dhall
    , ./items/bandolier.dhall
    , ./items/ghors_tome.dhall
    , ./items/ukulele.dhall
    , ./items/death_mark.dhall
    , ./items/war_horn.dhall
    , ./items/fuel_cell.dhall
    , ./items/old_guillotine.dhall
    , ./items/will-o-the-wisp.dhall
    , ./items/hopoo_feather.dhall
    , ./items/kjaros_band.dhall
    , ./items/shipping_request_form.dhall
    , ./items/harvesters_scythe.dhall
    , ./items/runalds_band.dhall
    , ./items/infusion.dhall
    , ./items/wax_quail.dhall
    , ./items/atg_missile_mk_1.dhall
    , ./items/hunters_harpoon.dhall
    , ./items/old_war_stealthsuit.dhall
    , ./items/shuriken.dhall
    , ./items/regenerating_scrap.dhall
    , ./items/green_item_scrap.dhall
    , ./items/leeching_seed.dhall
    , ./items/chronobauble.dhall
    , ./items/rose_buckler.dhall
    , ./items/red_whip.dhall
    , ./items/squid_polyp.dhall
    , ./items/ignition_tank.dhall
    , ./items/lepton_daisy.dhall
    , ./items/razorwire.dhall
    , ./items/berzerkers_pauldron.dhall
    -- next is legendary items
    , ./items/alien_head.dhall
    , ./items/shattering_justice.dhall
    , ./items/aegis.dhall
    , ./items/brilliant_behemoth.dhall
    , ./items/sentient_meat_hook.dhall
    , ./items/defensive_microbots.dhall
    , ./items/57_leaf_clover.dhall
    , ./items/laser_scope.dhall
    , ./items/ceremonial_dagger.dhall
    , ./items/spare_drone_parts.dhall
    , ./items/dios_best_friend.dhall
    , ./items/h3ad-5t_v2.dhall
    , ./items/happiest_mask.dhall
    , ./items/wake_of_vultures.dhall
    , ./items/frost_relic.dhall
    , ./items/bens_raincoat.dhall
    , ./items/rejuvenation_rack.dhall
    , ./items/brainstalks.dhall
    , ./items/resonance_disk.dhall
    , ./items/pocket_icbm.dhall
    , ./items/nkuhanas_opinion.dhall
    , ./items/symbiotic_scorpion.dhall
    , ./items/interstellar_desk_plant.dhall
    , ./items/bottled_chaos.dhall
    , ./items/red_item_scrap.dhall
    , ./items/unstable_tesla_coil.dhall
    , ./items/soulbound_catalyst.dhall
    , ./items/hardlight_afterburner.dhall
    -- next is boss items
    , ./items/artifact_key.dhall
    , ./items/queens_gland.dhall
    , ./items/shatterspleen.dhall
    , ./items/molten_perforator.dhall
    , ./items/titanic_knurl.dhall
    , ./items/charged_perforator.dhall
    , ./items/defense_nucleus.dhall
    , ./items/genesis_loop.dhall
    , ./items/planula.dhall
    , ./items/irradiant_pearl.dhall
    , ./items/empathy_cores.dhall
    , ./items/yellow_item_scrap.dhall
    , ./items/pearl.dhall
    , ./items/mired_urn.dhall
    , ./items/little_disciple.dhall
    , ./items/halcyon_seed.dhall
    -- next is lunar items
    , ./items/beads_of_fealty.dhall
    , ./items/brittle_crown.dhall
    , ./items/corpsebloom.dhall
    , ./items/defiant_gouge.dhall
    , ./items/egocentrism.dhall
    , ./items/essence_of_heresy.dhall
    , ./items/eulogy_zero.dhall
    , ./items/focused_convergence.dhall
    , ./items/gesture_of_the_drowned.dhall
    , ./items/hooks_of_heresy.dhall
    , ./items/light_flux_pauldron.dhall
    , ./items/mercurial_rachis.dhall
    , ./items/purity.dhall
    , ./items/shaped_glass.dhall
    , ./items/stone_flux_pauldron.dhall
    , ./items/strides_of_heresy.dhall
    , ./items/transcendence.dhall
    , ./items/visions_of_heresy.dhall
    , ./items/effigy_of_grief.dhall
    , ./items/glowing_meteorite.dhall
    , ./items/helfire_tincture.dhall
    , ./items/spinel_tonic.dhall
    -- next is void items
    , ./items/benthic_bloom.dhall
    , ./items/encrusted_key.dhall
    , ./items/lost_seers_lenses.dhall
    , ./items/lysate_cell.dhall
    , ./items/needletick.dhall
    , ./items/newly_hatched_zoea.dhall
    , ./items/plasma_shrimp.dhall
    , ./items/pluripotent_larva.dhall
    , ./items/polylute.dhall
    , ./items/safer_spaces.dhall
    , ./items/singularity_band.dhall
    , ./items/tentabauble.dhall
    , ./items/voidsent_flame.dhall
    , ./items/weeping_fungus.dhall
    -- next is equipment
    , ./items/blast_shower.dhall
    , ./items/disposable_missile_launcher.dhall
    , ./items/eccentric_vase.dhall
    , ./items/executive_card.dhall
    , ./items/foreign_fruit.dhall
    , ./items/forgive_me_please.dhall
    , ./items/fuel_array.dhall
    , ./items/gnarled_woodsprite.dhall
    , ./items/goobo_jr.dhall
    , ./items/gorags_opus.dhall
    , ./items/jade_elephant.dhall
    , ./items/milky_chrysalis.dhall
    , ./items/molotov_6-pack.dhall
    , ./items/ocular_hud.dhall
    , ./items/preon_accumulator.dhall
    , ./items/primordial_cube.dhall
    , ./items/radar_scanner.dhall
    , ./items/recycler.dhall
    , ./items/remote_caffeinator.dhall
    , ./items/royal_capacitor.dhall
    , ./items/sawmerang.dhall
    , ./items/super_massive_leech.dhall
    , ./items/the_back-up.dhall
    , ./items/the_crowdfunder.dhall
    , ./items/trophy_hunters_tricorn.dhall
    , ./items/trophy_hunters_tricorn_consumed.dhall
    , ./items/volcanic_egg.dhall
    ]
  }
in items_category
