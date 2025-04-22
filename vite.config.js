import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import react from '@vitejs/plugin-react';

export default defineConfig({
    plugins: [
        laravel({
            input: ['resources/css/react/app.css',  'resources/js/react/user/UserApp.jsx',
                'resources/js/react/admin/AdminApp.jsx',
                'resources/js/react/projectManager/ProjectManagerApp.jsx'],
            refresh: true,
        }),
        react(),
    ],
});
