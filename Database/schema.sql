
CREATE TABLE public.profiles (
  id uuid NOT NULL,
  full_name text NOT NULL,
  role text NOT NULL CHECK (role = ANY (ARRAY['doctor'::text, 'caregiver'::text])),
  specialty text,
  organization text,
  professional_id text,
  created_at timestamp with time zone DEFAULT now(),
  CONSTRAINT profiles_pkey PRIMARY KEY (id),
  CONSTRAINT profiles_id_fkey FOREIGN KEY (id) REFERENCES auth.users(id)
);
CREATE TABLE public.patients (
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  patient_code text NOT NULL UNIQUE,
  assigned_doctor_id uuid NOT NULL,
  baseline_age integer NOT NULL CHECK (baseline_age >= 0 AND baseline_age <= 120),
  baseline_date date NOT NULL,
  sex text CHECK (sex = ANY (ARRAY['Male'::text, 'Female'::text])),
  education_years integer CHECK (education_years >= 0 AND education_years <= 40),
  apoe4_count integer CHECK (apoe4_count >= 0 AND apoe4_count <= 2),
  created_at timestamp with time zone DEFAULT now(),
  CONSTRAINT patients_pkey PRIMARY KEY (id),
  CONSTRAINT patients_assigned_doctor_id_fkey FOREIGN KEY (assigned_doctor_id) REFERENCES public.profiles(id)
);
CREATE TABLE public.visits (
  id uuid NOT NULL DEFAULT gen_random_uuid(),
  patient_id uuid NOT NULL,
  visit_date date NOT NULL,
  visit_code text,
  cdr_sb numeric CHECK (cdr_sb >= 0::numeric AND cdr_sb <= 18::numeric),
  mmse numeric CHECK (mmse >= 0::numeric AND mmse <= 30::numeric),
  adas13 numeric CHECK (adas13 >= 0::numeric AND adas13 <= 85::numeric),
  faq numeric CHECK (faq >= 0::numeric AND faq <= 30::numeric),
  created_by uuid,
  created_at timestamp with time zone DEFAULT now(),
  CONSTRAINT visits_pkey PRIMARY KEY (id),
  CONSTRAINT visits_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id),
  CONSTRAINT visits_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.profiles(id)
);
