import path from 'node:path';
import { fileURLToPath } from 'node:url';

// Define __filename and __dirname for ESM
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

export default {
  mode: 'production',
  entry: './src/index.ts',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'index.js',
    library: 'nextjsLibrary',
    libraryTarget: 'umd',
    globalObject: 'this',
  },
  resolve: {
    extensions: ['.ts', '.tsx', '.js', '.json'],
  },
  module: {
    rules: [
      {
        test: /\.(ts|tsx)$/,
        exclude: /node_modules/,
        use: [
          {
            loader: 'ts-loader',
            options: {
              transpileOnly: true,  // Use TypeScript without type-checking
              compilerOptions: {
                jsx: 'preserve',  // Keep JSX as-is for React to process
              },
            },
          },
          {
            loader: 'babel-loader',
            options: {
              presets: [
                '@babel/preset-env',  // Standard JS transformations
                '@babel/preset-react',  // Handle JSX
                '@babel/preset-typescript',  // Handle TypeScript
              ],
            },
          },
        ],
      },
    ],
  },
  externals: {
    react: 'react', // Externalize React dependency
    'react-dom': 'react-dom',
  },
};
