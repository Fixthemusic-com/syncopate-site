// @ts-check

import sitemap from '@astrojs/sitemap';
import starlight from '@astrojs/starlight';
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
	site: 'https://syncopate.chat',
	integrations: [
		starlight({
			title: 'Syncopate Docs',
			social: [
				{
					icon: 'github',
					label: 'GitHub',
					href: 'https://github.com/Fixthemusic-com/syncopate',
				},
			],
			sidebar: [
				{
					label: 'Getting Started',
					autogenerate: { directory: 'docs/getting-started' },
				},
				{
					label: 'Guides',
					autogenerate: { directory: 'docs/guides' },
				},
				{
					label: 'API — Python',
					autogenerate: { directory: 'docs/api-python' },
				},
				{
					label: 'API — TypeScript',
					autogenerate: { directory: 'docs/api-typescript' },
				},
			],
			customCss: ['./src/styles/starlight-overrides.css'],
		}),
		sitemap(),
	],
});
