import { ImSpinner2 } from "react-icons/im";

export default function Loading() {
  return (
    <div className="flex w-full h-full flex-col justify-center items-center gap-4">
      <ImSpinner2 className="animate-spin h-12 w-12" />
    </div>
  );
}
