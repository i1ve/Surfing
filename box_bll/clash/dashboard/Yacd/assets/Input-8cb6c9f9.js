import{j as s,s as a,R as f}from"./index-5de4911a.js";const{useState:i,useRef:l,useEffect:p,useCallback:m}=f;function C(t){return s("input",{className:a.input,...t})}function R({value:t,...r}){const[u,n]=i(t),e=l(t);p(()=>{e.current!==t&&n(t),e.current=t},[t]);const c=m(o=>n(o.target.value),[n]);return s("input",{className:a.input,value:u,onChange:c,...r})}export{C as I,R as S};