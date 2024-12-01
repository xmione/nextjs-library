// src/components/Button.tsx
import type { FC } from 'react'; // Import only the FC type from React

interface ButtonProps {
  label: string;
  type?: 'button' | 'submit' | 'reset';
}

const Button: FC<ButtonProps> = ({ label, type = 'button' }) => {
  return <button type={type}>{label}</button>;
};

export default Button;
