export const SITE_TITLE = 'Syncopate';
export const SITE_DESCRIPTION = 'The chat-first platform where business happens. Rich messaging, granular permissions, transaction-first architecture, and AI-native operations.';
export const SITE_TAGLINE = 'The chat-first platform where business happens.';

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
