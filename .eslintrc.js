module.exports = {
  root: true,
  extends: '@arcblock/eslint-config',
  ignorePatterns: ['scripts/**/*.mjs'],
  globals: {
    logger: true,
  },
};
