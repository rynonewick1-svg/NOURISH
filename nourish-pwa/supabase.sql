-- Run in Supabase SQL Editor. RLS ensures each signed-in user accesses only their own row.
create table if not exists public.user_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.user_data enable row level security;
create policy "Read own nutrition data" on public.user_data for select to authenticated using ((select auth.uid()) = user_id);
create policy "Insert own nutrition data" on public.user_data for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "Update own nutrition data" on public.user_data for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
