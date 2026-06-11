export default function Home() {
  return (
    <main style={{
      display: "flex",
      justifyContent: "center",
      alignItems: "center",
      height: "100vh",
      fontFamily: "Arial"
    }}>
      <div style={{ textAlign: "center" }}>
        <h1>🚀 Next.js + Docker</h1>
        <p>Running inside a Docker container</p>
        <p>CI/CD ready ✅</p>
      </div>
    </main>
  );
}
