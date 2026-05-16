-- React Fundamentals Learning Roadmap - Module Structure per BAB
-- Each BAB is a separate mstLearningModule, followed by its mstLearningSection records

-- ===== BAB A. Introduction and Setup =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(124, 12, 'a-introduction-and-setup', 'A. Introduction and Setup', '2h 00m', 'in-progress', 3, 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(124, 'A.1', 'What is React and Why Use It', '<p>React adalah library JavaScript buat bikin UI yang responsif. Filosofinya: think of the UI as a function of state, jadi kalau state berubah, UI otomatis re-render.</p><p>React populer karena component reusable, data flow jelas, dan ecosystem tooling yang dewasa.</p><blockquote>Analogi: React itu seperti spreadsheet. Kalau cell input berubah, cell formula langsung recalculate otomatis.</blockquote>', 'function App() {
  return <h1>Halo React</h1>;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(124, 'A.2', 'SPA and Virtual DOM Concept', '<p>Single Page Application (SPA) adalah aplikasi yang load sekali, lalu berubah konten via JavaScript tanpa refresh full page.</p><p>Virtual DOM adalah abstraksi React. React buat virtual copy DOM di memory, bandingkan dengan actual DOM, lalu update hanya bagian yang berubah. Ini bikin performa jauh lebih baik.</p><blockquote>Analogi: Virtual DOM seperti kepala penari yang bayangkan gerakan dulu sebelum eksekusi, jadi tidak tertabrak peralatan.</blockquote>', '// React update hanya list item baru,
// bukan seluruh halaman', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(124, 'A.3', 'Setting Up React Project', '<p>Setup React modern pakai Vite itu cepat dan ringan. Alternatif lain adalah Create React App (CRA) tapi sekarang Vite lebih recommended.</p><blockquote>Analogi: ini kayak pasang studio fotografi. Setup cepat, lalu langsung bisa mulai ambil foto.</blockquote>', 'npm create vite@latest my-app -- --template react
cd my-app
npm install
npm run dev', 3, '1', NOW(), '', NOW());

-- ===== BAB B. JSX and Components =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(125, 12, 'b-jsx-and-components', 'B. JSX and Components', '2h 30m', 'in-progress', 4, 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(125, 'B.1', 'What is JSX and How It Works', '<p>JSX adalah syntax yang terlihat kayak HTML tapi sebenarnya JavaScript juga. JSX dikompilasi jadi fungsi React.createElement().</p><blockquote>Analogi: JSX itu shorthand sandwich. Lo tulis "ham sandwich" lebih gampang daripada "taruh ham antara dua roti".</blockquote>', 'const element = <div>Halo</div>;', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(125, 'B.2', 'Embedding JavaScript in JSX', '<p>Gunakan curly braces buat embed JavaScript expression di JSX. Tapi ingat: hanya bisa expression, bukan statement.</p><blockquote>Analogi: curly braces itu "jendela" buat lihat nilai JavaScript dari HTML.</blockquote>', 'const name = "Rani";
const age = 24;

const element = (
  <h1>
    Halo {name}, umur {age} tahun
  </h1>
);', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(125, 'B.3', 'Functional Components and Composition', '<p>Component di React adalah fungsi yang return JSX. Satu component bisa berisi component lain (composition), jadi kode modular dan reusable.</p><blockquote>Analogi: component itu LEGO brick. Bisa stack jadi struktur besar dari piece kecil.</blockquote>', 'function Header() {
  return <h1>Judul Halaman</h1>;
}

function App() {
  return (
    <div>
      <Header />
      <p>Konten utama</p>
    </div>
  );
}', 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(125, 'B.4', 'File Organization and Best Practices', '<p>Organisasi folder yang rapi bikin project mudah dirawat. Standar umum: pisah component, style, utility ke folder terpisah.</p><blockquote>Analogi: rumah yang rapi kategori per ruangan lebih nyaman dipake daripada semua barang tercampur.</blockquote>', 'src/
  components/
    Header.jsx
    Footer.jsx
  pages/
    Home.jsx
    About.jsx
  styles/
    global.css
  App.jsx
  main.jsx', 4, '1', NOW(), '', NOW());

-- ===== BAB C. Props and State =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(126, 12, 'c-props-and-state', 'C. Props and State', '2h 30m', 'in-progress', 4, 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(126, 'C.1', 'Props Passing Data Between Components', '<p>Props adalah cara kirim data dari parent ke child component. Props read-only, jadi child tidak bisa ubah langsung.</p><blockquote>Analogi: props itu parameter fungsi. Parent kirim data, child terima dan pakai.</blockquote>', 'function Greeting(props) {
  return <p>Halo, {props.name}</p>;
}

function App() {
  return <Greeting name="Budi" />;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(126, 'C.2', 'Destructuring Props and Default Values', '<p>Destructuring membuat kode lebih ringkas. Default value bikin component lebih robust kalau prop tidak dikirim.</p><blockquote>Analogi: destructuring seperti buka kotak sampai ambil barang yang perlu, skipkan yang tidak perlu.</blockquote>', 'function Card({ title = "No Title", content }) {
  return (
    <div>
      <h2>{title}</h2>
      <p>{content}</p>
    </div>
  );
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(126, 'C.3', 'useState Hook and State Management', '<p>useState adalah hook buat manage state di functional component. Kalau state berubah, component re-render otomatis. State adalah "memori" component.</p><blockquote>Analogi: state itu variabel berbeda dengan scope global. Tiap component punya state pribadi.</blockquote>', 'import { useState } from "react";

function Counter() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>Count: {count}</p>
      <button onClick={() => setCount(count + 1)}>
        Increment
      </button>
    </div>
  );
}', 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(126, 'C.4', 'State vs Props Difference', '<p>Props datang dari luar (parent), state internal component. Props tidak bisa diubah dari child, state bisa diubah dengan setter function.</p><ul> <li>Props: read-only, dari parent.</li> <li>State: mutable, internal component.</li> </ul><blockquote>Analogi: props itu DNA yang inherit dari ortu, state itu pengalaman dan kebiasaan yang kita bentuk sendiri.</blockquote>', '', 4, '1', NOW(), '', NOW());

-- ===== BAB D. Events and Conditional Rendering =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(127, 12, 'd-events-and-conditional-rendering', 'D. Events and Conditional Rendering', '2h 30m', 'in-progress', 4, 4, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(127, 'D.1', 'Event Handling in React', '<p>Event di React mirip HTML, tapi menggunakan camelCase (onClick, onChange) dan handler adalah function, bukan string.</p><blockquote>Analogi: event handler itu prosedur operasional. Kalau button ditekan, prosedur apa yang dijalanin.</blockquote>', 'function Button() {
  const handleClick = () => {
    console.log("Button clicked");
  };

  return <button onClick={handleClick}>Click me</button>;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(127, 'D.2', 'Handling Form Input and onChange', '<p>Controlled component di React: nilai input disimpan di state, setiap perubahan input diupdate ke state via onChange.</p><blockquote>Analogi: input field itu cermin. Apa yang user ketik harus reflect di state, dan state reflect di display.</blockquote>', 'function TextInput() {
  const [value, setValue] = useState("");

  return (
    <input
      value={value}
      onChange={(e) => setValue(e.target.value)}
      placeholder="Ketik sesuatu"
    />
  );
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(127, 'D.3', 'Conditional Rendering dengan Ternary dan AND', '<p>Conditional rendering itu nampilkan atau sembunyikan elemen berdasarkan kondisi. Gunakan ternary atau logical AND dalam JSX.</p><blockquote>Analogi: conditional rendering itu menu restoran. Ada menu reguler dan menu VIP tergantung status member.</blockquote>', 'function LoginStatus({ isLoggedIn }) {
  return (
    <div>
      {isLoggedIn ? (
        <p>Selamat datang kembali</p>
      ) : (
        <p>Silakan login</p>
      )}

      {isLoggedIn && <button>Logout</button>}
    </div>
  );
}', 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(127, 'D.4', 'Handling Multiple Events and State Updates', '<p>Component sering handle banyak event. Organize handler function yang jelas biar maintainable.</p><blockquote>Analogi: handler function itu SOB. Setiap event punya prosedur jelas yang dieksekusi.</blockquote>', 'function Form() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(name, email);
  };

  return (
    <form onSubmit={handleSubmit}>
      <input value={name} onChange={(e) => setName(e.target.value)} />
      <input value={email} onChange={(e) => setEmail(e.target.value)} />
      <button type="submit">Submit</button>
    </form>
  );
}', 4, '1', NOW(), '', NOW());

-- ===== BAB E. Lists Forms and Styling =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(128, 12, 'e-lists-forms-and-styling', 'E. Lists Forms and Styling', '2h 30m', 'in-progress', 4, 5, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(128, 'E.1', 'Rendering Lists with map()', '<p>Render list dari array pakai method map(). Jangan lupa assign key yang unik buat setiap item biar React bisa track mana yang berubah.</p><blockquote>Analogi: key itu kartu identitas. React pakai kartu ini buat tahu item A tetap item A meski urutannya berubah.</blockquote>', 'function List({ items }) {
  return (
    <ul>
      {items.map((item) => (
        <li key={item.id}>{item.name}</li>
      ))}
    </ul>
  );
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(128, 'E.2', 'Importance of Keys in Lists', '<p>Key membantu React identify mana item yang sama antar render. Gunakan ID unik dari data, jangan index array (kecuali list static).</p><blockquote>Analogi: kalau pakai index sebagai key, itu kayak pakai nomor antri. Nomor 1 tetap nomor 1 meski orang ganti-gantian.</blockquote>', '// BAIK
<li key={user.id}>{user.name}</li>

// BURUK (hindari kecuali static list)
<li key={index}>{user.name}</li>', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(128, 'E.3', 'Styling Approaches in React', '<p>Ada tiga cara style di React: inline styles, CSS files, CSS Modules, atau styled components. Pilih sesuai kebutuhan project.</p><blockquote>Analogi: inline style itu dekorasi langsung ke barang, CSS class itu pakai template standar dari gudang style.</blockquote>', '// Inline styles
const style = { color: "red", fontSize: "20px" };
<p style={style}>Teks merah</p>

// CSS class
<p className="highlight">Teks highlight</p>', 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(128, 'E.4', 'Working with Forms and Input Validation', '<p>Form di React pakai controlled component. Validation bisa dilakukan real-time atau saat submit.</p><blockquote>Analogi: validation itu security guard. Cek setiap input sebelum ditersima oleh sistem.</blockquote>', 'function Form() {
  const [email, setEmail] = useState("");
  const [error, setError] = useState("");

  const handleChange = (e) => {
    const value = e.target.value;
    setEmail(value);
    setError(value.includes("@") ? "" : "Invalid email");
  };

  return (
    <div>
      <input value={email} onChange={handleChange} />
      {error && <p style={{ color: "red" }}>{error}</p>}
    </div>
  );
}', 4, '1', NOW(), '', NOW());

-- ===== BAB F. useEffect Hook and Data Fetching =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(129, 12, 'f-useeffect-hook-and-data-fetching', 'F. useEffect Hook and Data Fetching', '2h 30m', 'in-progress', 4, 6, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(129, 'F.1', 'What is useEffect and Side Effects', '<p>useEffect adalah hook buat manage side effects: data fetching, subscription, timer, DOM manipulation. Jalanin side effect di component jadi lebih terkontrol.</p><blockquote>Analogi: useEffect itu seperti reminder atau alarm. Bilang ke React "pastikan ini jalan pas kondisi tertentu".</blockquote>', 'import { useEffect } from "react";

function Component() {
  useEffect(() => {
    console.log("Component mounted atau updated");
  });

  return <p>Content</p>;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(129, 'F.2', 'Dependency Array and Use Cases', '<p>Dependency array mengontrol kapan useEffect jalanin. Empty array jalanin satu kali saat mount, dependency tertentu jalanin saat dependency berubah.</p><blockquote>Analogi: dependency array itu condition. Kalau kondisi terpenuhi, jalanin effect, kalau tidak skip.</blockquote>', '// Jalanin sekali saat mount
useEffect(() => {
  console.log("Mount");
}, []);

// Jalanin saat `count` berubah
useEffect(() => {
  console.log("Count changed to", count);
}, [count]);', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(129, 'F.3', 'Fetching Data from API', '<p>Fetch data API di useEffect. Handle loading, error, dan success state supaya UX smooth.</p><blockquote>Analogi: fetching itu seperti order makanan. Loading adalah antri, error adalah komplain, success adalah dapat makanan.</blockquote>', 'function UserList() {
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch("/api/users")
      .then((res) => res.json())
      .then((data) => {
        setUsers(data);
        setLoading(false);
      })
      .catch(() => setLoading(false));
  }, []);

  if (loading) return <p>Loading...</p>;
  return <ul>{users.map((u) => <li key={u.id}>{u.name}</li>)}</ul>;
}', 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(129, 'F.4', 'Cleanup Functions in useEffect', '<p>Return cleanup function dari useEffect buat bersihkan resource saat component unmount atau effect rerun.</p><blockquote>Analogi: cleanup itu seperti matikan lampu sebelum keluar kamar. Jangan biarkan resource menggantung.</blockquote>', 'useEffect(() => {
  const timer = setTimeout(() => {
    console.log("Timer ran");
  }, 1000);

  return () => clearTimeout(timer);
}, []);', 4, '1', NOW(), '', NOW());

-- ===== BAB G. Routing and State Management =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(130, 12, 'g-routing-and-state-management', 'G. Routing and State Management', '2h 00m', 'in-progress', 3, 7, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(130, 'G.1', 'React Router Basics', '<p>React Router bikin navigasi antar page tanpa reload full page. Setup BrowserRouter, Route, dan Link buat routing sederhana.</p><blockquote>Analogi: router itu seperti index peta. Link itu tunjuk ke mana, Route itu render page sesuai URL.</blockquote>', 'import { BrowserRouter, Routes, Route, Link } from "react-router-dom";

function App() {
  return (
    <BrowserRouter>
      <Link to="/">Home</Link>
      <Link to="/about">About</Link>

      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<About />} />
      </Routes>
    </BrowserRouter>
  );
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(130, 'G.2', 'Lifting State Up', '<p>Kalau dua sibling component butuh share state, tarik state ke parent. Parent pass state dan setter function ke child via props.</p><blockquote>Analogi: lifting state itu seperti pesan dari dua anak melalui ortu. Ortu jadi "broker" informasi.</blockquote>', 'function Parent() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <Child count={count} onIncrement={() => setCount(count + 1)} />
      <Display count={count} />
    </div>
  );
}', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(130, 'G.3', 'Introduction to Context API', '<p>Context API untuk share state global tanpa pass props bertingkat-tingkat (prop drilling). Pas buat theme, auth, language settings.</p><blockquote>Analogi: Context itu seperti radio broadcast. Siapa aja bisa denger tanpa perlu dimarahin orang yek.</blockquote>', 'const ThemeContext = React.createContext();

function App() {
  const [theme, setTheme] = useState("light");

  return (
    <ThemeContext.Provider value={{ theme, setTheme }}>
      <Page />
    </ThemeContext.Provider>
  );
}', 3, '1', NOW(), '', NOW());

-- ===== BAB H. Custom Hooks and Performance =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(131, 12, 'h-custom-hooks-and-performance', 'H. Custom Hooks and Performance', '2h 00m', 'in-progress', 3, 8, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(131, 'H.1', 'Creating Custom Hooks', '<p>Custom hook adalah function yang reuse logic state dan effect. Extract logic dari component jadi hook biar reusable di component lain.</p><blockquote>Analogi: custom hook itu seperti resep yang bisa lo terapin ke berbagai menu berbeda.</blockquote>', 'function useCounter(initialValue = 0) {
  const [count, setCount] = useState(initialValue);

  const increment = () => setCount(count + 1);
  const decrement = () => setCount(count - 1);

  return { count, increment, decrement };
}

// Pakai di component
function Counter() {
  const { count, increment, decrement } = useCounter();
  return <>...</>;
}', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(131, 'H.2', 'Re-rendering and React.memo', '<p>React re-render component saat parent render atau state berubah. React.memo memo-ize component biar tidak re-render kalau props tidak berubah.</p><blockquote>Analogi: React.memo itu seperti cache. Kalau input sama, pakai output lama tanpa recompute.</blockquote>', 'const Button = React.memo(({ label, onClick }) => {
  console.log("Button render");
  return <button onClick={onClick}>{label}</button>;
});', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(131, 'H.3', 'useMemo and useCallback for Optimization', '<p>useMemo memo-ize value calculation, useCallback memo-ize function. Gunakan saat performance issue tapi jangan overuse.</p><blockquote>Analogi: useMemo dan useCallback itu seperti skip kalkulasi ulang kalau input tetap sama. Tapi jangan pakai di mana-mana.</blockquote>', 'const memoizedValue = useMemo(() => {
  return heavyCalculation(a, b);
}, [a, b]);

const memoizedCallback = useCallback(() => {
  doSomething(a, b);
}, [a, b]);', 3, '1', NOW(), '', NOW());

-- ===== BAB I. Best Practices and Deployment =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(132, 12, 'i-best-practices-and-deployment', 'I. Best Practices and Deployment', '2h 30m', 'in-progress', 4, 9, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(132, 'I.1', 'Project Organization and Separation of Concerns', '<p>Organisasi folder yang bagus bikin codebase mudah dirawat. Pisah component, page, hooks, utility, style ke folder terpisah.</p><blockquote>Analogi: organisasi folder itu seperti perpustakaan. Buku yang diorganisir per kategori lebih mudah ditemuin.</blockquote>', 'src/
  components/
    Header/
      Header.jsx
      Header.css
  hooks/
    useCounter.js
  pages/
    Home.jsx
    About.jsx
  utils/
    api.js
  App.jsx', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(132, 'I.2', 'Clean Code Principles', '<ul> <li>Nama variable dan function yang deskriptif.</li> <li>Function dan component yang fokus single responsibility.</li> <li>Hindari deep prop drilling.</li> <li>Comment hanya di bagian kompleks.</li> </ul>', '', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(132, 'I.3', 'Build Process and Deployment', '<p>Build process convert React code jadi static files yang bisa di-host di server. Deploy ke Netlify atau Vercel sangat gampang cuma modal connect git.</p><blockquote>Analogi: build itu seperti photocopy atau cetak dokumen. Code React jadi HTML/CSS/JS yang bisa dibaca browser.</blockquote>', 'npm run build

// Hasil di folder dist/, siap deploy', 3, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(132, 'I.4', 'Testing Basics', '<p>Testing automation bikin refactor lebih aman. Mulai dari testing sederhana pakai React Testing Library.</p><blockquote>Analogi: testing itu seperti quality control. Pastikan produk sesuai spesifikasi sebelum dikirim.</blockquote>', 'import { render, screen } from "@testing-library/react";

test("renders greeting", () => {
  render(<Greeting name="Rani" />);
  const element = screen.getByText(/Halo, Rani/i);
  expect(element).toBeInTheDocument();
});', 4, '1', NOW(), '', NOW());

-- ===== BAB J. Learning Path and Practice Projects =====
INSERT INTO public."mstLearningModule"
("ID", "TrackID", "Slug", "Title", "Duration", "Status", "LessonCount", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(133, 12, 'j-learning-path-and-practice-projects', 'J. Learning Path and Practice Projects', '2h 00m', 'in-progress', 3, 10, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(133, 'J.1', 'Recommended Learning Sequence', '<ol> <li>Pahami JSX dan functional component dulu.</li> <li>Kuasai props dan state, ini foundation.</li> <li>Event handling dan conditional rendering.</li> <li>List rendering dengan key yang benar.</li> <li>useEffect dan data fetching.</li> <li>Routing dan state management advanced.</li> </ol><blockquote>Analogi: learning path itu roadmap. Jangan skip milestone demi acceleration, core foundation tetap prioritas.</blockquote>', '// Progress checklist
week1: JSX + Component basics
week2: Props + State
week3: Event + Conditional rendering
week4: List + useEffect
week5: Routing + Context API
week6: Mini project end-to-end', 1, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(133, 'J.2', 'Practice Project Ideas', '<ul> <li>Counter App dengan useState.</li> <li>To-Do List dengan CRUD operations.</li> <li>Weather App dengan API integration.</li> <li>Portfolio atau Blog dengan React Router.</li> <li>Real-time Chat atau Collaboration app dengan Context API.</li> </ul><blockquote>Analogi: project adalah gym buat skill. Latihan rutin lebih efektif daripada nonton tutorial panjang.</blockquote>', '', 2, '1', NOW(), '', NOW());

INSERT INTO public."mstLearningSection"
("ModuleID", "Code", "Heading", "Content", "CodeSnippet", "SortOrder", "CreatedBy", "CreatedDate", "UpdatedBy", "UpdatedDate")
VALUES(133, 'J.3', 'Common Pitfalls and How to Avoid', '<ul> <li>Jangan mutate state langsung, gunakan setter function.</li> <li>Jangan render function dalam render, tarik ke atas.</li> <li>Dependency array di useEffect jangan lupa.</li> <li>Key di list harus unique, jangan pakai index kalau list dynamic.</li> </ul>', '', 3, '1', NOW(), '', NOW());

-- Summary
-- Created 10 mstLearningModule records (A-J)
-- Created 36 mstLearningSection records (A.1-J.3)
-- Each module linked to sections via ModuleID
-- TrackID: 12 for all modules

