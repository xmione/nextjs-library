// src/components/Input.tsx
import React, { type FC } from 'react';  

interface InputProps {
  placeholder: string;
}

const Input: FC<InputProps> = ({ placeholder }) => {
  return <input placeholder={placeholder} />;
};

export default Input;