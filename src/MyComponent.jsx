import React from 'react'

export default function MyComponent({ type, name }) {
  if (type == "user")
    return <div>Hello user, {name}!</div>
  if (type == "admin")
    return <div>Hi there admin, {name}!</div>

  return <div>Yo, {name}!</div>
}