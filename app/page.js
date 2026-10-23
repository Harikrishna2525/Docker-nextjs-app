export default function Home() {
  // Replace this with your actual external API endpoint later
  const API_URL = "https://api.biblehi.com/api";
  const API_KEY = "harik@123tech";

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
        
        {/* Simple example showing how to use the variables */}
        <div style={{ marginTop: "20px", fontSize: "14px", color: "#666" }}>
          <p><strong>API Endpoint:</strong> {API_URL}</p>
          <p><strong>Configured Key:</strong> {API_KEY}</p>
        </div>
      </div>
    </main>
  );
}
