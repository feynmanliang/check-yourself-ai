import forms from '@tailwindcss/forms';
import typography from '@tailwindcss/typography';
import type { Config } from 'tailwindcss';

export default {
	content: ['./src/**/*.{html,js,svelte,ts}'],

	theme: {
		extend: {
      colors: {
        cream: {
          50: '#FDFBF7',
          100: '#FAF7F0',
        }
      },
      fontFamily: {
        serif: ['Fraunces', 'serif'], // Make sure to include this font in your project
      },
    },
	},

	plugins: [typography, forms]
} satisfies Config;
