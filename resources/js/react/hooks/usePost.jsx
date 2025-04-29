import { useState } from "react";

export default function useDelete(url,input) {
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [data, setData] = useState(null);

    let isMounted = true;
    fetch(url, {
      method: "DELETE",
      header:{
        'Content-Type':'application/json'
      },
      body:input
    })
      .then((res) => res.json())
      .then((data) => {
        if (isMounted) {
          setData(data);
        }
      })
      .catch((error) => {
        if (isMounted) {
          setError(error);
        }
      })
      .finally(() => {
        if (isMounted) {
          setLoading(false);
        }
      });
    return () => {
      isMounted = false;
    };
  return { loading, error, data };
}
