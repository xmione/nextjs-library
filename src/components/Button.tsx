// src/components/Button.tsx
import React, { type FC } from 'react'; 

interface ButtonProps {
  label: string;
  type?: 'button' | 'submit' | 'reset';
}

const Button: FC<ButtonProps> = ({ label, type = 'button' }) => {
  return <button type={type}>{label}</button>;
};

export default Button;
