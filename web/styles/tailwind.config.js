/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./web/src/**/*.{html,js,elm}",
  ],
  theme: {
    extend: {
      backgroundImage: {
        'rarity-common': "url('/images/backgrounds/common.png')",
        'rarity-rare': "url('/images/backgrounds/rare.png')",
        'rarity-legendary': "url('/images/backgrounds/legendary.png')",
        'rarity-boss': "url('/images/backgrounds/boss.png')",
        'rarity-lunar': "url('/images/backgrounds/lunar.png')",
        'rarity-void': "url('/images/backgrounds/void.png')",
        'rarity-equipment': "url('/images/backgrounds/equipment.png')",
      }
    },
  },
  plugins: [],
}
