-- Add migration script here
CREATE TABLE IF NOT EXISTS notes_metadata (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  title VARCHAR(256) NOT NULL,
  slug VARCHAR(256) UNIQUE NOT NULL,
  description VARCHAR(255) NOT NULL,
  categories VARCHAR(255) NOT NULL,
  date TIMESTAMP WITH TIME ZONE NOT NULL,
  lang VARCHAR(4) NOT NULL,
  sha VARCHAR(255) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);
