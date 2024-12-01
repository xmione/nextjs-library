// src/components/Input.tsx
import type { FC } from 'react'; // Import only the FC type from React

interface InputProps {
  placeholder: string;
}

const Input: FC<InputProps> = ({ placeholder }) => {
  return <input placeholder={placeholder} />;
};

export default Input;