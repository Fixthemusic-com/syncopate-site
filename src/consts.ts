export const SITE_TITLE = 'Syncopate';
export const SITE_DESCRIPTION = 'Provision smart, programmable Spaces for every client interaction. Bots that know your business, commands that get things done, and conversations your clients actually want to come back to.';
export const SITE_TAGLINE = 'Empower every user with a Space to engage with tools, agents, and each other.';

export const NAV_LINKS = [
  { label: 'Features', href: '/#features' },
  { label: 'How It Works', href: '/#how-it-works' },
  { label: 'Pricing', href: '/#pricing' },
  { label: 'Blog', href: '/blog' },
] as const;

export const FOOTER_LINKS = {
  product: [
    { label: 'Features', href: '/#features' },
    { label: 'Pricing', href: '/#pricing' },
    { label: 'How It Works', href: '/#how-it-works' },
  ],
  company: [
    { label: 'Manifesto', href: '/about' },
    { label: 'Blog', href: '/blog' },
  ],
  resources: [
    { label: 'Documentation', href: '/docs' },
    { label: 'API Reference', href: '/docs/api-python/bot' },
    { label: 'Bot SDK', href: '/docs/getting-started/overview' },
  ],
} as const;
