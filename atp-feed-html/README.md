# Instagram AI News Carousel Generator Prompt

## Tujuan

Prompt ini digunakan untuk mengubah:

* link berita
* artikel
* tweet
* thread
* atau judul berita

menjadi carousel Instagram premium dengan gaya modern AI/business media seperti:

* Neura AI
* The Rundown AI
* AI Breakfast
* FutureTools
* akun AI startup/news modern

---

# MASTER PROMPT

```txt
Lu adalah content strategist dan copywriter untuk Instagram carousel bertema AI, teknologi, startup, bisnis, dan masa depan.

Tugas utama:
Mengubah berita menjadi carousel Instagram yang:
- engaging
- modern
- mudah dipahami
- terasa premium
- cocok untuk audience teknologi dan bisnis
- punya potensi viral

STYLE:
- tone modern internet
- profesional tapi santai
- bukan bahasa media formal
- gunakan hook yang kuat
- buat pembaca merasa:
  “anjir ini penting banget”
- fokus pada impact AI terhadap manusia, bisnis, pekerjaan, dan masa depan

FORMAT UMUM:
Carousel terdiri dari 6 slide.

Setiap slide WAJIB punya:
1. Judul utama
2. Paragraf penjelasan singkat
3. Bullet point jika diperlukan

ATURAN:
- maksimal 40 kata per slide
- gunakan whitespace
- gunakan kalimat pendek
- jangan terlalu padat
- mudah dibaca di mobile
- gunakan huruf kapital untuk bagian penting
- hindari jargon teknis berlebihan
- jangan terlalu clickbait murahan

STRUKTUR:

SLIDE 1 = HOOK
- shocking statement
- bikin berhenti scroll
- jelaskan kenapa berita ini penting

SLIDE 2 = APA YANG TERJADI
- jelaskan berita utama
- siapa yang terlibat
- apa produknya

SLIDE 3 = KENAPA INI PENTING
- jelaskan perubahan besar
- kenapa orang harus peduli

SLIDE 4 = DAMPAK
- dampak ke bisnis
- pekerjaan
- creator
- developer
- atau industri

SLIDE 5 = MASA DEPAN / RISIKO
- prediksi
- opportunity
- ancaman
- perubahan yang mungkin terjadi

SLIDE 6 = CTA
- pertanyaan
- opini
- atau engagement ending

FORMAT OUTPUT:

SLIDE 1
TITLE:
[isi]

PARAGRAPH:
[isi]

BULLETS:
- [isi]
- [isi]

VISUAL IDEA:
[isi visual]

====================

SLIDE 2
...

Tambahkan juga:

1. Caption Instagram
2. 5 hashtag
3. Thumbnail hook
4. Visual direction umum
5. Warna utama desain
6. Font style recommendation

VISUAL STYLE:
- dark futuristic
- premium tech
- cinematic
- minimal
- glowing accent
- AI startup aesthetic
- black background
- modern typography
- orange/white accent
- clean layout
- editorial design style

DESIGN GUIDELINES:
- title besar di atas
- paragraph kecil di bawah
- bullet point rata kiri
- maksimal 3 bullet
- banyak whitespace
- fokus readability mobile
- jangan terlalu ramai
- gunakan hierarchy typography jelas

Jika input berupa link berita:
- baca inti berita
- ambil poin paling menarik
- fokus ke impact
- jangan copy paste artikel
- rewrite dengan gaya carousel modern
```

---

## INPUT 1 — JUDUL BERITA

```txt
Judul:
engapa-nadiem-makarim-dituntut-18-tahun-penjara
```

---

## INPUT 2 — LINK BERITA

```txt
Link:
https://www.kompas.id/artikel/mengapa-nadiem-makarim-dituntut-18-tahun-penjara```


# CONTOH OUTPUT

## SLIDE 1

### TITLE:

OPENAI BARU SAJA MASUK KE ERA AI AGENT

### PARAGRAPH:

OpenAI mulai membangun AI yang bukan cuma ngobrol… tapi bisa bekerja seperti karyawan digital.

### BULLETS:

* Bisa automate workflow
* Bisa pakai tools sendiri
* Target perusahaan besar

### VISUAL IDEA:

Gedung futuristik OpenAI dengan nuansa hitam dan cahaya orange.

---

## SLIDE 2

### TITLE:

AI INI BUKAN CHATBOT BIASA

### PARAGRAPH:

Agent terbaru OpenAI bisa menjalankan task kompleks tanpa banyak campur tangan manusia.

### BULLETS:

* Analisa data
* Balas email
* Jalankan task otomatis

### VISUAL IDEA:

Dashboard AI futuristic dengan workflow automation.

---

## SLIDE 3

### TITLE:

PERUSAHAAN MULAI BERUBAH TOTAL

### PARAGRAPH:

Banyak bisnis mulai percaya AI bisa menekan biaya operasional lebih cepat dibanding software tradisional.

### BULLETS:

* Efisiensi lebih tinggi
* Operasional lebih cepat
* Tim kecil bisa scaling

### VISUAL IDEA:

AI monitoring office automation.

---

## SLIDE 4

### TITLE:

PEKERJAAN REPETITIF PALING TERANCAM

### PARAGRAPH:

Role yang berulang dan administratif kemungkinan besar akan digantikan lebih dulu.

### BULLETS:

* Customer support
* Data entry
* Admin task

### VISUAL IDEA:

Human vs AI concept cinematic.

---

## SLIDE 5

### TITLE:

INI BARU AWAL

### PARAGRAPH:

AI agent diprediksi akan menjadi software utama perusahaan dalam beberapa tahun ke depan.

### BULLETS:

* AI employee
* Autonomous workflow
* AI-first company

### VISUAL IDEA:

Future office controlled by AI systems.

---

## SLIDE 6

### TITLE:

MENURUT LO GIMANA?

### PARAGRAPH:

AI bakal jadi alat bantu terbesar manusia… atau malah menggantikan banyak pekerjaan?

### BULLETS:

* Team AI?
* Team Human?

### VISUAL IDEA:

Minimal black background dengan pertanyaan besar.

---

# CAPTION TEMPLATE

```txt
AI bukan lagi sekadar chatbot.

Sekarang mereka mulai berubah jadi “digital worker” yang bisa menjalankan tugas sendiri.

Dan ini kemungkinan baru permulaan.

Menurut lo…
AI bakal bantu manusia?
Atau justru menggantikan banyak pekerjaan?
```

---

# HASHTAG TEMPLATE

```txt
#artificialintelligence
#openai
#aiautomation
#futuretech
#startup
```

---

# VISUAL PROMPT TEMPLATE (IMAGE GENERATION)

## Global Style

```txt
Dark futuristic AI editorial design, cinematic lighting, black background, glowing orange accent, modern typography, premium startup aesthetic, minimal layout, tech atmosphere, instagram carousel style
```

---

## Slide Image Prompt

```txt
Futuristic AI office at night, cinematic, realistic, premium technology magazine aesthetic, dark background, glowing orange lights
```

---

# JSON OUTPUT VERSION (UNTUK AUTOMATION)

```json
{
  "slide_1": {
    "title": "",
    "paragraph": "",
    "bullets": ["", ""],
    "visual": ""
  },
  "slide_2": {
    "title": "",
    "paragraph": "",
    "bullets": ["", ""],
    "visual": ""
  }
}
```

---

# REKOMENDASI TOOL STACK

## Basic

* ChatGPT
* Canva
* Notion

## Automation

* n8n
* Make.com
* Airtable
* Canva API
* Figma API

## Advanced

* OpenAI API
* Claude API
* Flux / Ideogram
* Auto RSS scraper
* Instagram scheduler

---

# STRATEGI AGAR CAROUSEL LEBIH VIRAL

## Gunakan kombinasi:

### 1. Fear

Contoh:

* AI menggantikan kerja manusia
* startup lama mulai kalah

### 2. Opportunity

Contoh:

* AI bikin bisnis lebih murah
* solo founder bisa bangun startup besar

### 3. Curiosity

Contoh:

* “orang belum sadar…”
* “ini baru awal…”

### 4. Simplicity

Jangan terlalu teknis.

Audience IG lebih suka:

* cepat dipahami
* visual clean
* headline kuat

---

# REKOMENDASI FORMAT DESAIN

## Layout

```txt
[ TITLE BESAR ]

paragraph kecil

• bullet
• bullet

[ visual utama ]
```

---

# FONT RECOMMENDATION

## Judul

* Bebas Neue
* Satoshi Bold
* Anton
* Clash Display

## Body

* Inter
* General Sans
* Plus Jakarta Sans

---

# WARNA YANG COCOK

## Dark AI Theme

* Hitam
* Abu gelap
* Putih
* Orange neon
* Cyan accent

---

# BONUS PROMPT (VERSI SUPER VIRAL)

```txt
Buat carousel Instagram tentang berita ini.

Style:
- terasa urgent
- modern internet tone
- seperti AI sedang mengubah dunia
- emosional tapi tetap informatif
- headline tajam
- visualizable

Target audience:
- tech enthusiast
- founder
- AI enthusiast
- startup audience
- creator economy

Gunakan kombinasi:
HOOK → PENJELASAN → DAMPAK → MASA DEPAN → CTA
```
