create table "public"."profile" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "username" text not null,
    "location" text not null,
    "age" text not null,
    "male" boolean not null default true
);


alter table "public"."profile" enable row level security;

CREATE UNIQUE INDEX profile_pkey ON public.profile USING btree (id);

alter table "public"."profile" add constraint "profile_pkey" PRIMARY KEY using index "profile_pkey";

create policy "Allow All"
on "public"."profile"
as permissive
for all
to public
using (true);



