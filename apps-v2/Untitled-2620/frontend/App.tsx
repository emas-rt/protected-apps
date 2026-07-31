/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */

export default function App() {
  const getVal = () => {
    try {
      return __MY_APP_VERSION__;
    } catch {
      return "no app version";
    }
  };
  return <div>{getVal()}</div>;
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
