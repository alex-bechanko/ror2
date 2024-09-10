-- Risk of Rain 2 item viewer
-- Copyright (C) 2024 Alex Bechanko
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.
let Schema = ../schema.dhall

let items_category
    : List Schema.GameItem
    =
      -- starting with common items
      [ ./repulsion_armor_plate.dhall
      , ./mocha.dhall
      , ./topaz_broach.dhall
      , ./tougher_times.dhall
      , ./tri-tip_dagger.dhall
      , ./armor-piercing_rounds.dhall
      , ./lens-makers_glasses.dhall
      , ./crowbar.dhall
      , ./bundle_of_fireworks.dhall
      , ./bison_steak.dhall
      , ./delicate_watch.dhall
      , ./roll_of_pennies.dhall
      , ./cautious_slug.dhall
      , ./power_elixir.dhall
      , ./pauls_goat_hoof.dhall
      , ./gasoline.dhall
      , ./medkit.dhall
      , ./bustling_fungus.dhall
      , ./focus_crystal.dhall
      , ./oddly-shaped_opal.dhall
      , ./personal_shield_generator.dhall
      , ./white_item_scrap.dhall
      , ./backup_magazine.dhall
      , ./energy_drink.dhall
      , ./sticky_bomb.dhall
      , ./stun_grenade.dhall
      , ./soldiers_syringe.dhall
      , ./monster_tooth.dhall
      , ./rusted_key.dhall
      , ./warbanner.dhall
      , ./predatory_instincts.dhall
      , ./bandolier.dhall
      , ./ghors_tome.dhall
      , ./ukulele.dhall
      , ./death_mark.dhall
      , ./war_horn.dhall
      , ./fuel_cell.dhall
      , ./old_guillotine.dhall
      , ./will-o-the-wisp.dhall
      , ./hopoo_feather.dhall
      , ./kjaros_band.dhall
      , ./shipping_request_form.dhall
      , ./harvesters_scythe.dhall
      , ./runalds_band.dhall
      , ./infusion.dhall
      , ./wax_quail.dhall
      , ./atg_missile_mk_1.dhall
      , ./hunters_harpoon.dhall
      , ./old_war_stealthsuit.dhall
      , ./shuriken.dhall
      , ./regenerating_scrap.dhall
      , ./green_item_scrap.dhall
      , ./leeching_seed.dhall
      , ./chronobauble.dhall
      , ./rose_buckler.dhall
      , ./red_whip.dhall
      , ./squid_polyp.dhall
      , ./ignition_tank.dhall
      , ./lepton_daisy.dhall
      , ./razorwire.dhall
      , ./berzerkers_pauldron.dhall
      , ./alien_head.dhall
      , ./shattering_justice.dhall
      , ./aegis.dhall
      , ./brilliant_behemoth.dhall
      , ./sentient_meat_hook.dhall
      , ./defensive_microbots.dhall
      , ./57_leaf_clover.dhall
      , ./laser_scope.dhall
      , ./ceremonial_dagger.dhall
      , ./spare_drone_parts.dhall
      , ./dios_best_friend.dhall
      , ./h3ad-5t_v2.dhall
      , ./happiest_mask.dhall
      , ./wake_of_vultures.dhall
      , ./frost_relic.dhall
      , ./bens_raincoat.dhall
      , ./rejuvenation_rack.dhall
      , ./brainstalks.dhall
      , ./resonance_disk.dhall
      , ./pocket_icbm.dhall
      , ./nkuhanas_opinion.dhall
      , ./symbiotic_scorpion.dhall
      , ./interstellar_desk_plant.dhall
      , ./bottled_chaos.dhall
      , ./red_item_scrap.dhall
      , ./unstable_tesla_coil.dhall
      , ./soulbound_catalyst.dhall
      , ./hardlight_afterburner.dhall
      , ./artifact_key.dhall
      , ./queens_gland.dhall
      , ./shatterspleen.dhall
      , ./molten_perforator.dhall
      , ./titanic_knurl.dhall
      , ./charged_perforator.dhall
      , ./defense_nucleus.dhall
      , ./genesis_loop.dhall
      , ./planula.dhall
      , ./pearl.dhall
      , ./empathy_cores.dhall
      , ./yellow_item_scrap.dhall
      , ./irradiant_pearl.dhall
      , ./mired_urn.dhall
      , ./little_disciple.dhall
      , ./halcyon_seed.dhall
      , ./beads_of_fealty.dhall
      , ./brittle_crown.dhall
      , ./corpsebloom.dhall
      , ./defiant_gouge.dhall
      , ./egocentrism.dhall
      , ./essence_of_heresy.dhall
      , ./eulogy_zero.dhall
      , ./focused_convergence.dhall
      , ./gesture_of_the_drowned.dhall
      , ./hooks_of_heresy.dhall
      , ./light_flux_pauldron.dhall
      , ./mercurial_rachis.dhall
      , ./purity.dhall
      , ./shaped_glass.dhall
      , ./stone_flux_pauldron.dhall
      , ./strides_of_heresy.dhall
      , ./transcendence.dhall
      , ./visions_of_heresy.dhall
      , ./effigy_of_grief.dhall
      , ./glowing_meteorite.dhall
      , ./helfire_tincture.dhall
      , ./spinel_tonic.dhall
      , ./benthic_bloom.dhall
      , ./encrusted_key.dhall
      , ./lost_seers_lenses.dhall
      , ./lysate_cell.dhall
      , ./needletick.dhall
      , ./newly_hatched_zoea.dhall
      , ./plasma_shrimp.dhall
      , ./pluripotent_larva.dhall
      , ./polylute.dhall
      , ./safer_spaces.dhall
      , ./singularity_band.dhall
      , ./tentabauble.dhall
      , ./voidsent_flame.dhall
      , ./weeping_fungus.dhall
      , ./blast_shower.dhall
      , ./disposable_missile_launcher.dhall
      , ./eccentric_vase.dhall
      , ./executive_card.dhall
      , ./foreign_fruit.dhall
      , ./forgive_me_please.dhall
      , ./fuel_array.dhall
      , ./gnarled_woodsprite.dhall
      , ./goobo_jr.dhall
      , ./gorags_opus.dhall
      , ./jade_elephant.dhall
      , ./milky_chrysalis.dhall
      , ./molotov_6-pack.dhall
      , ./ocular_hud.dhall
      , ./preon_accumulator.dhall
      , ./primordial_cube.dhall
      , ./radar_scanner.dhall
      , ./recycler.dhall
      , ./remote_caffeinator.dhall
      , ./royal_capacitor.dhall
      , ./sawmerang.dhall
      , ./super_massive_leech.dhall
      , ./the_back-up.dhall
      , ./the_crowdfunder.dhall
      , ./trophy_hunters_tricorn.dhall
      , ./trophy_hunters_tricorn_consumed.dhall
      , ./volcanic_egg.dhall
      ]

in  items_category
