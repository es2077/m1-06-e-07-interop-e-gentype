import React from 'react';

interface Props {
  name: string;
  type?: "person" | "cat"
}

export default function MyTSDemoComponent({name, type}: Props) {
  if(type == "person")
    return <div>Hello, {name}</div>;
  if(type == "cat")
    return <div>Miau, {name}</div>;
  
    return <div>Yo, {name}</div>
}