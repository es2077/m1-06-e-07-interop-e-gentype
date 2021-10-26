import React from 'react';
import { make as MagicComponent } from './MagicComponent.gen';

export default function Yo() {
  return <MagicComponent type="admin" name="Gabriel" />
}