/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./web/src/**/*.{html,js,elm}",
  ],
  theme: {
    extend: {
      backgroundImage: {
        'rarity-common': "url('/images/ror2/backgrounds/common.png')",
        'rarity-rare': "url('/images/ror2/backgrounds/rare.png')",
        'rarity-legendary': "url('/images/ror2/backgrounds/legendary.png')",
        'rarity-boss': "url('/images/ror2/backgrounds/boss.png')",
        'rarity-lunar': "url('/images/ror2/backgrounds/lunar.png')",
        'rarity-void': "url('/images/ror2/backgrounds/void.png')",
        'rarity-equipment': "url('/images/ror2/backgrounds/equipment.png')",
      }
    },
  },
  plugins: [],
}
