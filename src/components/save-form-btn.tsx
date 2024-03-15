import { HiSaveAs } from "react-icons/hi";
import { Button } from "./ui/button";

export default function SaveFormBtn() {
  return (
    <Button className="gap-2" variant="outline">
      <HiSaveAs className="h-6 w-6" />
      Save
    </Button>
  );
}
