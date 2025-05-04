import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import react from '@vitejs/plugin-react';

export default defineConfig({
    plugins: [
        laravel({
            input: ['resources/js/react/user/components/LayoutUser.jsx',
                'resources/js/react/admin/components/LayoutAdmin.jsx',
                'resources/js/react/projectManager/components/LayoutProjectManager.jsx'],
            refresh: true,
        }),
        react(),
    ],
});
