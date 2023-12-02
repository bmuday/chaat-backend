alter table "public"."post" drop constraint "post_pkey";

drop index if exists "public"."post_pkey";

drop table "public"."post";


