declare namespace NodeJS {
  export interface ProcessEnv {
    NODE_ENV?: 'development' | 'production';
    APP_PORT: string;
    FRONT_URL: string;
    SERVICE_URL: string;
  }
}
