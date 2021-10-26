/* TypeScript file generated from MagicTSOnlyComponent.res by genType. */
/* eslint-disable import/first */


import {default as defaultNotChecked} from './MagicTSOnlyComponent';

// In case of type error, check the type of 'default' in 'MagicTSOnlyComponent.re' and './MagicTSOnlyComponent'.
export const defaultTypeChecked: React.ComponentType<{ readonly name: string; readonly type?: "person" | "cat" }> = defaultNotChecked;

// Export '$$default' early to allow circular import from the '.bs.js' file.
export const $$default: unknown = defaultTypeChecked as React.ComponentType<{ readonly name: string; readonly type?: "person" | "cat" }>;

export default $$default;
