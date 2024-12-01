import type { FC } from 'react';
interface ButtonProps {
    label: string;
    type?: 'button' | 'submit' | 'reset';
}
declare const Button: FC<ButtonProps>;
export default Button;
