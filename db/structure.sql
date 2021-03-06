CREATE TABLE "admin_messages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "message" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "version" varchar(255) DEFAULT NULL, "download_url" varchar(255) DEFAULT NULL);
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "commentable_id" integer, "commentable_type" varchar(255), "text" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "hospitals" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "location_city" varchar(255), "location_area" varchar(255), "location_latitude" float, "location_logitude" float, "tel_number" varchar(255), "department" varchar(255), "detail" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "photos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "hospital_id" integer, "product_id" integer, "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime);
CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "hospital_id" integer, "name" varchar(255), "price" integer, "dc_rate" float, "event_start_at" datetime, "event_end_at" datetime, "read_count" integer DEFAULT 0, "favorite_count" integer DEFAULT 0, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "hot" boolean DEFAULT 'f', "show" boolean DEFAULT 't');
CREATE TABLE "products_users" ("product_id" integer, "user_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "udid" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120813204957');

INSERT INTO schema_migrations (version) VALUES ('20120815174621');

INSERT INTO schema_migrations (version) VALUES ('20120904110512');

INSERT INTO schema_migrations (version) VALUES ('20120912075720');

INSERT INTO schema_migrations (version) VALUES ('20120917071442');

INSERT INTO schema_migrations (version) VALUES ('20120918072623');