-- Next.js Fundamentals Learning Roadmap - Module Structure per BAB
-- Each BAB is a separate mstLearningModule, followed by its mstLearningSection records

-- ===== BAB A. Introduction to Next.js =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(105, 11, 'a-introduction-nextjs', 'A. Introduction to Next.js', '2h 00m', 'in-progress', 3, 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(105, 'A.1', 'What is Next.js and Why Use It', '<p>Next.js adalah fullstack framework yang dibangun di atas React. Memberikan structure dan tools untuk production-ready application dengan fitur SSR (Server-Side Rendering), SSG (Static Site Generation), dan API routes yang powerful.</p><p>Next.js populer karena setup cepat, performance out-of-the-box, dan ecosystem Vercel yang seamless.</p><blockquote><p>Analogi: Kalau React itu LEGO brick kosong, Next.js itu paket LEGO yang udah lengkap dengan blueprint dan panduan assembly lengkap.</p></blockquote>', '// pages/index.js
export default function Home() {
  return <h1>Welcome to Next.js</h1>;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(105, 'A.2', 'Key Features Overview', '<p>Next.js punya fitur-fitur transformatif: file-based routing otomatis (jangan setup router manual), SSR/SSG built-in, API routes embedded, dan image optimization bawaan.</p><blockquote><p>Analogi: Fitur-fitur Next.js itu seperti furniture IKEA. Sudah included, tinggal mounting saja, tidak perlu bikin dari kayu mentah.</p></blockquote>', '// Auto-routing: pages/blog/[id].js
// Akses via /blog/1, /blog/2, dst
export default function Post({ post }) {
  return <h1>{post.title}</h1>;
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(105, 'A.3', 'When to Use Next.js', '<p>Gunakan Next.js untuk: production-ready web apps, SEO-critical sites, fullstack applications, atau kala performance dan scalability penting. Jangan gunakan untuk simple static website atau prototype kilat.</p><blockquote><p>Analogi: React itu untuk research lab, Next.js untuk factory production.</p></blockquote>', '', 3, '1', NOW(), '', NOW());

-- ===== BAB B. Project Setup =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(106, 11, 'b-project-setup', 'B. Project Setup', '1h 30m', 'in-progress', 3, 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(106, 'B.1', 'Creating a Next.js Project', '<p>Setup Next.js dengan create-next-app sangat gampang. Pilih TypeScript atau JavaScript, gunakan ESLint setup otomatis, dan Tailwind opsional tapi recommended.</p><blockquote><p>Analogi: create-next-app itu scaffolding project. Seperti kontraktor yang pasang fondasi dan framework rumah, lo tinggal isi interior.</p></blockquote>', 'npx create-next-app@latest my-app
cd my-app
npm run dev

# Jalanin di http://localhost:3000', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(106, 'B.2', 'Project Structure Overview', '<p>Project structure di Next.js 13+ menggunakan app router: folder app/ untuk pages dan routes, public/ untuk static assets, dan root-level config files seperti next.config.js dan package.json.</p><blockquote><p>Analogi: app folder itu master blueprint rumah kamu, public folder itu gudang dekorasi.</p></blockquote>', 'my-app/
  app/
    page.js          // Home page
    layout.js        // Root layout
    blog/
      page.js        // /blog
      [id]/
        page.js      // /blog/1, /blog/2
  public/
    images/
  next.config.js
  package.json', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(106, 'B.3', 'Running and Building', '<p>npm run dev untuk development, npm run build untuk production build, npm run start untuk production server. Build process automatic optimisasi dan minify semua asset.</p><blockquote><p>Analogi: dev itu kitchen pribadi, production itu restaurant yang serve customers.</p></blockquote>', 'npm run dev       # Development server (localhost:3000)
npm run build     # Optimize untuk production
npm run start     # Production server
npm run lint      # Code quality check', 3, '1', NOW(), '', NOW());

-- ===== BAB C. File-Based Routing =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(107, 11, 'c-file-based-routing', 'C. File-Based Routing', '2h 00m', 'in-progress', 3, 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(107, 'C.1', 'Pages and Routing System', '<p>Next.js auto-route based on file structure di app/ folder. Jangan manual setup routing kayak React Router. File page.js itu route, folder adalah path segment.</p><blockquote><p>Analogi: File structure itu tree directory jalan tol. Folder hierarchy = path navigation.</p></blockquote>', 'app/
  page.js           // / (home)
  about/
    page.js         // /about
  blog/
    page.js         // /blog
    [id]/
      page.js       // /blog/123', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(107, 'C.2', 'Dynamic Routes and Parameters', '<p>Dynamic route dengan [param].js atau [slug].js. Access parameter via params prop di component. Untuk catch-all route pakai [...slug].js atau optional [...slug].js.</p><blockquote><p>Analogi: [id] itu placeholder variable. Seperti template form yang bisa diganti-replace dengan berbagai value.</p></blockquote>', '// app/blog/[id]/page.js
export default function BlogPost({ params }) {
  const { id } = params;
  return <h1>Blog Post {id}</h1>;
}

// Visit: /blog/123, /blog/456, dst', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(107, 'C.3', 'Navigation with Link Component', '<p>Gunakan Link component untuk navigasi antar page, bukan tag. Link auto-prefetch untuk performance, dan jalanin client-side navigation tanpa page refresh.</p><blockquote><p>Analogi: Link component itu teleport pin dalam game, navigasi instant tanpa loading screen panjang.</p></blockquote>', 'import Link from "next/link";

export default function Nav() {
  return (
    <nav>
      <Link href="/">Home</Link>
      <Link href="/about">About</Link>
      <Link href="/blog/1">Blog Post 1</Link>
    </nav>
  );
}', 3, '1', NOW(), '', NOW());

-- ===== BAB D. Layouts and Structure =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(108, 11, 'd-layouts-structure', 'D. Layouts and Structure', '1h 45m', 'in-progress', 2, 4, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(108, 'D.1', 'Layout Pattern and Nested Layouts', '<p>layout.js adalah template wrapper untuk semua page di folder itu dan subfolder. Nested layout bisa stack, jadi bisa punya header umum dan header per section.</p><blockquote><p>Analogi: Layout itu frame museum. Berbeda section punya frame berbeda tapi semuanya part dari satu museum besar.</p></blockquote>', '// app/layout.js (root layout)
export default function RootLayout({ children }) {
  return (
    <html>
      <body>
        <Header />
        {children}
      </body>
    </html>
  );
}

// app/blog/layout.js (nested layout)
export default function BlogLayout({ children }) {
  return (
    <div>
      <BlogSidebar />
      {children}
    </div>
  );
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(108, 'D.2', 'Shared UI Components Navbar Footer', '<p>Component shared (Navbar, Footer) bisa di-place di root layout atau nested layout sesuai scope. Mereka persist sepanjang navigation, tidak re-mount setiap kali page ganti.</p><blockquote><p>Analogi: Navbar dan Footer itu arsitektur permanen gedung, sedang page content itu pameran berganti-ganti.</p></blockquote>', '// Navbar persist di semua halaman
<layout>
  <Navbar />    // Tetap ada
  {children}       // Page ganti-ganti
  <Footer />    // Tetap ada
</layout>', 2, '1', NOW(), '', NOW());

-- ===== BAB E. Components in Next.js =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(109, 11, 'e-components-nextjs', 'E. Components in Next.js', '2h 00m', 'in-progress', 2, 5, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(109, 'E.1', 'Reusing React Components', '<p>Component di Next.js sama seperti React component. Bikin folder components/ dan organize by feature. Reuse component di berbagai page dan layout.</p><blockquote><p>Analogi: Component itu LEGO brick. Bisa slot berbeda tempat, bikin struktur berbeda dengan brick yang sama.</p></blockquote>', '// components/Card.js
export default function Card({ title, children }) {
  return (
    <div className="card">
      <h2>{title}</h2>
      {children}
    </div>
  );
}

// pages atau app sections
import Card from "@/components/Card";', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(109, 'E.2', 'Server Components vs Client Components', '<p>Default di Next.js 13+ adalah Server Component (render di server). Client Component perlu "use client" directive. Server component lebih aman, client component buat interactivity.</p><blockquote><p>Analogi: Server component itu chef di dapur (backend), client component itu waiter berinteraksi dengan customer (frontend).</p></blockquote>', '// Server Component (default)
export default function Page() {
  const data = fetchDataFromDatabase();
  return <div>{data}</div>; // Safe, database tidak expose
}

// Client Component
"use client";
import { useState } from "react";

export default function Counter() {
  const [count, setCount] = useState(0);
  return <button onClick={() => setCount(count + 1)}>{count}</button>;
}', 2, '1', NOW(), '', NOW());

-- ===== BAB F. Styling in Next.js =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(110, 11, 'f-styling-nextjs', 'F. Styling in Next.js', '2h 00m', 'in-progress', 2, 6, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(110, 'F.1', 'Global Styles and CSS Modules', '<p>Global CSS di app/globals.css import di root layout. CSS Modules untuk component-scoped styling. Hindari style collision dengan module system.</p><blockquote><p>Analogi: Global CSS itu paint umum rumah, CSS Module itu custom paint per ruangan supaya bebas pilih warna.</p></blockquote>', '// app/layout.js
import "./globals.css";

export default function Layout({ children }) {
  return <html>...{children}...</html>;
}

// components/Button.module.css
.primary {
  background: blue;
  color: white;
}

// components/Button.js
import styles from "./Button.module.css";

export default function Button() {
  return <button className={styles.primary}>Click</button>;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(110, 'F.2', 'Tailwind CSS Integration', '<p>Tailwind CSS adalah utility-first CSS framework yang popular di Next.js ecosystem. Setup bawaan dalam create-next-app, tinggal pakai class langsung di JSX.</p><blockquote><p>Analogi: Tailwind CSS itu furniture pre-made IKEA. Tinggal select dan kombinasi, tidak perlu design dari scratch.</p></blockquote>', 'export default function Card() {
  return (
    <div className="bg-white rounded-lg shadow-md p-4">
      <h2 className="text-2xl font-bold text-gray-900">Title</h2>
      <p className="text-gray-600">Description</p>
    </div>
  );
}', 2, '1', NOW(), '', NOW());

-- ===== BAB G. Data Fetching =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(111, 11, 'g-data-fetching', 'G. Data Fetching', '2h 30m', 'in-progress', 3, 7, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(111, 'G.1', 'getStaticProps for Static Generation SSG', '<p>getStaticProps (atau Server Component dengan async) fetch data saat build time, hasilnya static HTML. Perfect untuk content yang jarang berubah: blog, dokumentasi, product catalog.</p><blockquote><p>Analogi: SSG itu print katalog sekali, lepas ke toko. Tidak perlu print ulang kecuali ada produk baru.</p></blockquote>', '// pages/blog.js (Pages Router)
export async function getStaticProps() {
  const posts = await fetch("https://api.example.com/posts");
  return {
    props: { posts },
    revalidate: 60 // ISR: regenerate setiap 60 detik
  };
}

export default function Blog({ posts }) {
  return (
    <ul>
      {posts.map(post => <li key={post.id}>{post.title}</li>)}
    </ul>
  );
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(111, 'G.2', 'getServerSideProps for Server-Side Rendering SSR', '<p>getServerSideProps fetch data setiap request (di server). Slower than SSG tapi dinamis. Gunakan kala data real-time atau user-specific: dashboard, profile, personalized content.</p><blockquote><p>Analogi: SSR itu order makanan custom per customer. Real-time, personalized, tapi chef harus kerja setiap order.</p></blockquote>', 'export async function getServerSideProps(context) {
  const userId = context.params.id;
  const user = await fetchUser(userId);
  return { props: { user } };
}

export default function UserProfile({ user }) {
  return <h1>{user.name}</h1>;
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(111, 'G.3', 'Client-Side Data Fetching dan When to Use Each', '<p>Client-side fetch via useEffect atau library (SWR, React Query). Gunakan kala data tidak perlu SEO atau user-specific. Pilih strategy berdasarkan kebutuhan: SEO priority gunakan SSG/SSR, interactive dashboard gunakan client-side.</p><blockquote><p>Analogi: SSG untuk katalog, SSR untuk update real-time, client-side untuk widget personal user.</p></blockquote>', '"use client";
import useSWR from "swr";

export default function Dashboard() {
  const { data, isLoading } = useSWR("/api/user", fetch);
  
  if (isLoading) return <p>Loading...</p>;
  return <h1>{data.name}</h1>;
}', 3, '1', NOW(), '', NOW());

-- ===== BAB H. API Routes =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(112, 11, 'h-api-routes', 'H. API Routes Backend Inside Next.js', '2h 30m', 'in-progress', 3, 8, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(112, 'H.1', 'Creating API Routes', '<p>API route dibuat di app/api/ atau pages/api/ folder. File menjadi HTTP endpoint otomatis. Gunakan untuk backend logic: database query, external API call, business logic.</p><blockquote><p>Analogi: API route itu elevator backend di gedung Next.js. Lift request frontend, process di server, turunin response.</p></blockquote>', '// app/api/users/route.js (App Router)
export async function GET() {
  const users = await db.users.findAll();
  return Response.json({ data: users });
}

export async function POST(request) {
  const body = await request.json();
  const user = await db.users.create(body);
  return Response.json({ data: user }, { status: 201 });
}

// Akses di /api/users', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(112, 'H.2', 'Handling Requests and Responses', '<p>Handle berbagai HTTP method (GET, POST, PUT, DELETE) dalam single file. Return Response object atau Response.json(). Validasi input, handle error proper.</p><blockquote><p>Analogi: Handle method itu seperti resepsionis yang tahu route berbeda customer ke departemen berbeda.</p></blockquote>', '// app/api/posts/[id]/route.js
export async function GET(request, { params }) {
  const post = await db.posts.findById(params.id);
  if (!post) return Response.json({ error: "Not found" }, { status: 404 });
  return Response.json({ data: post });
}

export async function DELETE(request, { params }) {
  await db.posts.deleteById(params.id);
  return Response.json({ message: "Deleted" });
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(112, 'H.3', 'Basic CRUD Operations', '<p>CRUD = Create, Read, Update, Delete. Implement semua operation untuk full backend functionality. Combine dengan database (supabase, MongoDB, Prisma) untuk persistence.</p><blockquote><p>Analogi: CRUD itu empat operasi dasar: tambah barang (create), lihat inventory (read), update harga (update), hapus item (delete).</p></blockquote>', '// Create
POST /api/posts { title, content }

// Read
GET /api/posts -> List semua
GET /api/posts/[id] -> Detail satu

// Update
PUT /api/posts/[id] { title, content }

// Delete
DELETE /api/posts/[id]', 3, '1', NOW(), '', NOW());

-- ===== BAB I. Rendering Strategies =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(113, 11, 'i-rendering-strategies', 'I. Rendering Strategies Core Concept', '3h 00m', 'in-progress', 4, 9, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(113, 'I.1', 'CSR Client-Side Rendering', '<p>Browser render JavaScript dan bikin UI. SEO jelek karena search engine tidak execute JS. Gunakan untuk dashboard, admin panel, atau aplikasi internal yang tidak perlu indexing.</p><blockquote><p>Analogi: CSR itu resep dalam kotak tanpa bahan. Customer buka kotak, baca resep, cari/setup bahan sendiri di rumah.</p></blockquote>', '"use client";
import { useEffect, useState } from "react";

export default function Page() {
  const [data, setData] = useState(null);

  useEffect(() => {
    fetch("/api/data")
      .then(res => res.json())
      .then(data => setData(data));
  }, []);

  return <div>{data?.content}</div>;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(113, 'I.2', 'SSR Server-Side Rendering', '<p>Server render HTML setiap request, kirim ke browser. SEO bagus karena HTML siap index. Tapi performa tidak optimal karena server harus kerja setiap refresh.</p><blockquote><p>Analogi: SSR itu restoran kirim makanan already prepared. SEO bagus karena HTML lengkap, tapi server sibuk setiap order.</p></blockquote>', '// SSR example (App Router)
async function Page({ params }) {
  const data = await fetchDataFromServer();
  
  return (
    <div>
      <h1>{data.title}</h1>
      <p>{data.content}</p>
    </div>
  );
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(113, 'I.3', 'SSG Static Site Generation', '<p>Generate static HTML saat build time. Paling cepat, SEO sempurna, tapi content static. Gunakan untuk blog, documentation, landing page yang fix.</p><blockquote><p>Analogi: SSG itu print buku dan stock di rak. Super cepat (tinggal ambil dari rak), tapi konten fixed.</p></blockquote>', '// SSG example
export async function generateStaticParams() {
  const posts = await getPosts();
  return posts.map(post => ({ id: post.id }));
}

export default function Post({ params }) {
  const post = getPostById(params.id);
  return <article>{post.content}</article>;
}', 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(113, 'I.4', 'ISR Incremental Static Regeneration', '<p>SSG + revalidate interval. Generate static, tapi setiap N detik regenerate ulang. Best of both: performance + updated content. Gunakan untuk blog, news, product catalog.</p><blockquote><p>Analogi: ISR itu buku di rak di-update berkala. Kebanyakan dari stock (cepat), tapi author revisi chapter setiap minggu.</p></blockquote>', 'export async function generateStaticParams() {
  return [{ id: "1" }, { id: "2" }];
}

export const revalidate = 3600; // Regenerate setiap 1 jam

export default function Post({ params }) {
  const post = getPostById(params.id);
  return <article>{post.content}</article>;
}', 4, '1', NOW(), '', NOW());

-- ===== BAB J. Dynamic Routing =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(114, 11, 'j-dynamic-routing', 'J. Dynamic Routing and Parameters', '2h 00m', 'in-progress', 3, 10, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(114, 'J.1', 'Route Parameters and Context', '<p>Dynamic route params accessible via params prop. Gunakan untuk detail page, user profile, blog post, product detail.</p><blockquote><p>Analogi: Route parameter itu ID customer. Tiap customer punya halaman profile unique di /profile/[customerID].</p></blockquote>', '// app/products/[productId]/page.js
export default function ProductPage({ params }) {
  const { productId } = params;
  
  return (
    <div>
      <h1>Product {productId}</h1>
      <p>Details for product ID: {productId}</p>
    </div>
  );
}

// Access: /products/apple, /products/banana, dst', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(114, 'J.2', 'Catch-All Routes Flexible Path', '<p>Catch-all route [...slug].js capture path apapun. Gunakan untuk flexible routing atau nested structure dinamis.</p><blockquote><p>Analogi: Catch-all route itu universal remote yang control semua device. Satu pattern handle berbagai depth path.</p></blockquote>', '// app/docs/[...slug]/page.js
export default function DocsPage({ params }) {
  const { slug } = params; // Array: ["getting-started"]
  const path = slug.join("/"); // "getting-started"
  
  return <h1>Documentation: {path}</h1>;
}

// Access: /docs/getting-started, /docs/advanced/setup, dst', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(114, 'J.3', 'Query Parameters dan Search', '<p>Query parameter (search, filter, sort) dikirim di URL query string. Access via searchParams di App Router atau query object di Pages Router.</p><blockquote><p>Analogi: Query parameter itu filter belanja. /products?category=phone&sort=price itu belanja filter phone, sorted price.</p></blockquote>', '// app/products/page.js
export default function ProductList({ searchParams }) {
  const search = searchParams.q || "";
  const sort = searchParams.sort || "name";
  
  return (
    <div>
      <h1>Products (search: {search}, sort: {sort})</h1>
    </div>
  );
}

// Access: /products?q=phone&sort=price', 3, '1', NOW(), '', NOW());

-- ===== BAB K. Middleware =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(115, 11, 'k-middleware', 'K. Middleware Basic', '1h 30m', 'in-progress', 2, 11, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(115, 'K.1', 'What is Middleware and Request Interception', '<p>Middleware intercept request sebelum reach handler atau page. Gunakan untuk auth check, redirect, request modification, logging.</p><blockquote><p>Analogi: Middleware itu security checkpoint. Sebelum masuk area, check ticket dulu.</p></blockquote>', '// middleware.js (root)
import { NextResponse } from "next/server";

export function middleware(request) {
  // Check auth
  const token = request.cookies.get("token");
  
  if (!token && request.nextUrl.pathname.startsWith("/dashboard")) {
    return NextResponse.redirect(new URL("/login", request.url));
  }
  
  return NextResponse.next();
}

// Apply middleware ke path tertentu
export const config = {
  matcher: ["/dashboard/:path*", "/admin/:path*"]
};', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(115, 'K.2', 'Authentication Basics and Protection', '<p>Middleware ideal buat protect route. Cek token/session valid sebelum allow akses. Combine dengan server-side logic untuk security maksimal.</p><blockquote><p>Analogi: Auth middleware itu kasir check member card sebelum discount apply.</p></blockquote>', 'export function middleware(request) {
  const token = request.cookies.get("authToken")?.value;
  
  if (!token || !isValidToken(token)) {
    return NextResponse.redirect(new URL("/login", request.url));
  }
  
  // Add user info ke request
  const requestHeaders = new Headers(request.headers);
  requestHeaders.set("x-user-id", getUserIdFromToken(token));
  
  return NextResponse.next({
    request: {
      headers: requestHeaders
    }
  });
}', 2, '1', NOW(), '', NOW());

-- ===== BAB L. Image Optimization =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(116, 11, 'l-image-optimization', 'L. Image Optimization', '1h 30m', 'in-progress', 2, 12, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(116, 'L.1', 'Using next image Component', '<p>Use next/image untuk image optimization otomatis. Automatic resizing, lazy loading, format conversion (WebP). Jauh lebih performa dari HTML img.</p><blockquote><p>Analogi: next/image itu auto-resize fotokopi. Adjust ukuran sesuai kebutuhan printer, automatic best quality.</p></blockquote>', 'import Image from "next/image";

export default function Hero() {
  return (
    <Image
      src="/hero.jpg"
      alt="Hero image"
      width={800}
      height={600}
      quality={75}
      priority  // Load immediately, jangan lazy
    />
  );
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(116, 'L.2', 'Automatic Optimization and Lazy Loading', '<p>Next.js auto-generate berbagai size image. Lazy load di-scroll ke viewport. Convert ke WebP/modern format. Hasil: much faster loading dan bandwidth saving.</p><blockquote><p>Analogi: Image optimization itu video thumbnail YouTube. Auto-generate berbagai resolusi, serve best match, load cuma pas dibutuh.</p></blockquote>', 'import Image from "next/image";

export default function Gallery() {
  return (
    <>
      <Image src="/thumb.jpg" alt="Thumb" width={100} height={100} />
      <Image src="/hero.jpg" alt="Hero" width={800} height={600} priority />
    </>
  );
}
// Result: Next.js auto-generate 3 sizes (640w, 1280w, 1920w)', 2, '1', NOW(), '', NOW());

-- ===== BAB M. SEO Optimization =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(117, 11, 'm-seo-optimization', 'M. SEO Optimization', '1h 45m', 'in-progress', 3, 13, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(117, 'M.1', 'Meta Tags dan Head Management', '<p>Gunakan Metadata API di App Router untuk set title, description, open graph tags. Penting untuk SEO dan social sharing.</p><blockquote><p>Analogi: Meta tags itu label produk. Describe konten singkat, bikin customer (search engine) paham apa itu sebelum buka.</p></blockquote>', '// app/layout.js
export const metadata = {
  title: "My awesome blog",
  description: "Blog about web development",
  openGraph: {
    images: ["/og-image.jpg"]
  }
};

// app/blog/[id]/page.js
export async function generateMetadata({ params }) {
  const post = await getPost(params.id);
  return {
    title: post.title,
    description: post.excerpt,
    openGraph: {
      images: [post.heroImage]
    }
  };
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(117, 'M.2', 'Open Graph and Social Sharing', '<p>Open Graph tags control appearance saat di-share di social media. Set image, title, description, URL untuk shareable preview.</p><blockquote><p>Analogi: Open Graph itu poster produk. Menarik, informatif, bikin orang pengen click share.</p></blockquote>', 'export async function generateMetadata({ params }) {
  const post = await getPost(params.id);
  return {
    title: post.title,
    description: post.excerpt,
    openGraph: {
      title: post.title,
      description: post.excerpt,
      images: [{
        url: post.heroImage,
        width: 1200,
        height: 630
      }],
      type: "article",
      publishedTime: post.publishedDate
    }
  };
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(117, 'M.3', 'SEO Best Practices', '<p>Use semantic HTML (h1 untuk title, proper heading hierarchy), alt text di image, mobile responsive, fast performance. Combine dengan SSG/SSR untuk indexable content.</p><blockquote><p>Analogi: SEO best practices itu dokumentasi lengkap produk. Search engine mudah understand dan indexing jadi lebih baik.</p></blockquote>', '', 3, '1', NOW(), '', NOW());

-- ===== BAB N. Authentication =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(118, 11, 'n-authentication', 'N. Authentication Basic', '2h 00m', 'in-progress', 2, 14, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(118, 'N.1', 'Login System Concept dan Session vs Token', '<p>Session berlaku di stateful server, token (JWT) stateless. Token lebih scalable, session lebih secure kala managed proper. Next.js support kedua approach.</p><blockquote><p>Analogi: Session itu member card yang check-in di kasir, server track status. Token itu lamaran terenkripsi, siapa aja verify isi lamaran.</p></blockquote>', '// Simple session login
const response = await fetch("/api/login", {
  method: "POST",
  headers: { "Content-Type": "application/json" },
  body: JSON.stringify({ email, password })
});

// Server set cookie (session) atau return token
// Cookie auto-attach next request, secure di httpOnly', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(118, 'N.2', 'Intro to NextAuth and Auth Libraries', '<p>NextAuth.js adalah library populer untuk auth di Next.js. Handle login, logout, session, provider (Google, GitHub, dll), database integration seamless.</p><blockquote><p>Analogi: NextAuth itu kunci pintu digital. Secure lock system, support berbagai cara unlock (password, biometric, key card).</p></blockquote>', 'import NextAuth from "next-auth";
import CredentialsProvider from "next-auth/providers/credentials";

export const authOptions = {
  providers: [
    CredentialsProvider({
      async authorize(credentials) {
        const user = await db.users.findOne({ 
          email: credentials.email 
        });
        if (user && hashMatch(credentials.password, user.password)) {
          return user;
        }
        return null;
      }
    })
  ]
};

export const handler = NextAuth(authOptions);', 2, '1', NOW(), '', NOW());

-- ===== BAB O. Environment Variables =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(119, 11, 'o-environment-variables', 'O. Environment Variables', '1h 00m', 'in-progress', 2, 15, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(119, 'O.1', '.env.local dan Config Management', '<p>Environment variable di .env.local tidak push ke git. Gunakan untuk secrets seperti API key, database URL, auth token. Access via process.env di Node.js, NEXT_PUBLIC_ prefix di client.</p><blockquote><p>Analogi: .env.local itu safe deposit box di bank. Keep sensitif data secure, jangan expose di public repository.</p></blockquote>', '// .env.local
DATABASE_URL=postgresql://user:pass@localhost/dbname
NEXT_PUBLIC_API_URL=https://api.example.com
SECRET_KEY=super-secret-key

// pages/api/route.js (server)
const dbUrl = process.env.DATABASE_URL; // Private

// components/client.js (client)
const apiUrl = process.env.NEXT_PUBLIC_API_URL; // Public fetch', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(119, 'O.2', 'Managing Secrets dan Production Setup', '<p>Production environment variable di dashboard hosting (Vercel, Netlify, dll). Different secrets per environment ideal: dev, staging, production.</p><blockquote><p>Analogi: Production secrets itu master key. Ada di safe di head office, berbeda dari dev key yang semua developer tau.</p></blockquote>', '', 2, '1', NOW(), '', NOW());

-- ===== BAB P. Deployment =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(120, 11, 'p-deployment', 'P. Deployment', '2h 00m', 'in-progress', 3, 16, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(120, 'P.1', 'Build Process dan Optimization', '<p>npm run build generate .next folder siap deploy. Process include static generation, image optimization, code splitting otomatis. Check build output buat warning atau error.</p><blockquote><p>Analogi: Build process itu quality control factory sebelum ship produk. Check ukuran, performance, dependency valid.</p></blockquote>', 'npm run build

# Output:
# Route (pages)                              Size     First Load JS
# ┌ ○ /                                      2.3 kB        41.2 kB
# ├ ○ /about                                 123 B         40.2 kB
# ├ ●  /api/posts/:id                        -              0 B
# ├ ○ /blog                                  1.2 kB        41.8 kB
# └ [...]', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(120, 'P.2', 'Deploy to Vercel Seamless CI CD', '<p>Vercel adalah creator Next.js. Deploy ke Vercel sangat gampang: connect git, auto-deploy setiap push, preview URL setiap PR. Production ready instant.</p><blockquote><p>Analogi: Vercel deployment itu conveyor belt otomatis fabrik. Push code, mesin automatic setup dan deploy, ready serve customer.</p></blockquote>', '// Push ke git
git push origin main

// Vercel auto:
// 1. Build next app
// 2. Run tests (kalo ada)
// 3. Deploy ke production
// 4. CDN global automatic', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(120, 'P.3', 'Environment Setup dan Preview Deployment', '<p>Preview URL di branch tertentu pre-production. Staging environment buat final testing. Production URL untuk live customer. Email integrations, webhooks, otomatis notifikasi deploy status.</p><blockquote><p>Analogi: Preview/staging itu taste test restoran. Post-production test dulu sebelum serve actual customer.</p></blockquote>', '', 3, '1', NOW(), '', NOW());

-- ===== BAB Q. Performance Optimization =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(121, 11, 'q-performance-optimization', 'Q. Performance Optimization', '2h 00m', 'in-progress', 3, 17, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(121, 'Q.1', 'Code Splitting dan Lazy Loading', '<p>Next.js automatic code splitting per page. dynamic() import load component lazy saat dibutuh. Reduce initial load.</p><blockquote><p>Analogi: Code splitting itu bagian kue yang serve sesuai demand. Jangan bawa semua kue sekaligus, kue heavy cuma pas orang minta.</p></blockquote>', 'import dynamic from "next/dynamic";

// Load component lazy, dengan loading fallback
const HeavyChart = dynamic(() => import("@/components/Chart"), {
  loading: () => <p>Loading chart...</p>
});

export default function Page() {
  return <HeavyChart />;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(121, 'Q.2', 'Image Optimization revisited', '<p>Next.js image component handle semua optimization. Prioritize hero image pakai priority prop. Avoid CLS (Cumulative Layout Shift) dengan width/height explicit.</p><blockquote><p>Analogi: Image optimization itu seni menjaga postur. Maintain stability, jangan tepar-terpu saat render loading.</p></blockquote>', '', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(121, 'Q.3', 'Caching Strategies untuk Performance', '<p>ISR (Incremental Static Regeneration) cache result certain time. CDN cache static asset. Browser cache headers configure di middleware atau next.config.js.</p><blockquote><p>Analogi: Caching strategies itu fridge. Hot item tersimpan di fridge (cache) siap serving quick, jangan re-cook setiap order.</p></blockquote>', '// ISR cache 1 hour
export const revalidate = 3600;

// Middleware cache headers
response.headers.set("Cache-Control", "public, max-age=3600");

// next.config.js
headers: async () => [
  {
    source: "/images/:path*",
    headers: [
      {
        key: "Cache-Control",
        value: "public, max-age=31536000, immutable",
      },
    ],
  },
]', 3, '1', NOW(), '', NOW());

-- ===== BAB R. Error Handling =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(122, 11, 'r-error-handling', 'R. Error Handling', '1h 30m', 'in-progress', 2, 18, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(122, 'R.1', 'Custom Error Pages', '<p>error.js dan not-found.js handle error dan 404. Custom layout buat error UI, fallback component saat error occur.</p><blockquote><p>Analogi: Error pages itu customer service desk. Something went wrong, guide customer gimana next action, jangan customer confusion.</p></blockquote>', '// app/error.js
"use client";

export default function Error({ error, reset }) {
  return (
    <div>
      <h2>Something went wrong!</h2>
      <p>{error.message}</p>
      <button onClick={() => reset()}>Try again</button>
    </div>
  );
}

// app/not-found.js
export default function NotFound() {
  return (
    <div>
      <h1>404 - Page Not Found</h1>
      <a href="/">Back to home</a>
    </div>
  );
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(122, 'R.2', 'Handling API Errors', '<p>API route return proper status code dan error message. Try-catch block di handler, consistent error format response.</p><blockquote><p>Analogi: API error handling itu diagnosa dokter. Proper diagnosis (status code), jelas resep (error message), patient tau next step.</p></blockquote>', 'export async function GET(request) {
  try {
    const data = await fetchSomeData();
    return Response.json({ data });
  } catch (error) {
    return Response.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}', 2, '1', NOW(), '', NOW());

-- ===== BAB S. Advanced Concepts =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(123, 11, 's-advanced-concepts', 'S. Advanced Concepts Optional', '3h 00m', 'in-progress', 4, 19, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(123, 'S.1', 'App Router Deep Dive', '<p>App Router (introduced Next.js 13) adalah replacement Pages Router. Fitur lebih modern: Server Components default, streaming, Suspense support, better file organization.</p><blockquote><p>Analogi: App Router itu redesign kantor baru. Better structure, smarter organization, modern facilities included.</p></blockquote>', '// App Router structure
app/
  layout.js          // Root layout
  page.js            // /
  error.js           // Error boundary
  loading.js         // Suspense fallback
  not-found.js       // 404
  api/
    route.js         // /api
  admin/
    layout.js        // Nested layout
    page.js          // /admin
    dashboard/
      page.js        // /admin/dashboard', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(123, 'S.2', 'Server Actions dan Form Handling Modern', '<p>Server Actions simplify client-to-server communication. Define async function dengan "use server", call langsung dari form atau button. No API route setup needed.</p><blockquote><p>Analogi: Server Actions itu teleportasi data. Form submit langsung ke server function, no HTTP boilerplate needed.</p></blockquote>', '// app/actions.js
"use server";

export async function createPost(formData) {
  const title = formData.get("title");
  const content = formData.get("content");
  
  const post = await db.posts.create({ title, content });
  return post;
}

// app/page.js
import { createPost } from "./actions";

export default function Page() {
  return (
    <form action={createPost}>
      <input name="title" required />
      <textarea name="content" />
      <button type="submit">Create</button>
    </form>
  );
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(123, 'S.3', 'Streaming dan Suspense untuk Better UX', '<p>Streaming render component incrementally, user lihat progress berdasarkan komponen selesai, tidak blank screen menunggu semua selesai. Combine dengan Suspense boundary.</p><blockquote><p>Analogi: Streaming itu buffering video. Lihat part yang udah download dulu, tonton sambil progress bar jalan, tidak frozen screen.</p></blockquote>', 'import { Suspense } from "react";

export default function Page() {
  return (
    <div>
      <h1>Dashboard</h1>
      
      <Suspense fallback={<p>Loading header...</p>}>
        <ProfileHeader />
      </Suspense>
      
      <Suspense fallback={<p>Loading charts...</p>}>
        <ChartWidget />
      </Suspense>
    </div>
  );
}', 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(123, 'S.4', 'Edge Functions dan Deployment Optimization', '<p>Edge functions run di server edge terdekat customer, ultra-low latency. Gunakan untuk redirect logic, auth check, real-time personalization.</p><blockquote><p>Analogi: Edge functions itu relay race. Bukan sprint panjang di satu lokasi, tapi race pass baton to nearby runners (edge servers).</p></blockquote>', '// middleware.js (edge function)
export function middleware(request) {
  // Run di edge, ultra-cepat
  const country = request.geo?.country;
  
  if (country === "US") {
    return NextResponse.redirect(new URL("/us", request.url));
  }
  
  return NextResponse.next();
}

export const config = {
  matcher: "/:path*"
};', 4, '1', NOW(), '', NOW());

-- Summary
-- Created 19 mstLearningModule records (A-S)
-- Created 48 mstLearningSection records (A.1-S.4)
-- Each module linked to sections via ModuleID
-- TrackID: 2 for all modules
