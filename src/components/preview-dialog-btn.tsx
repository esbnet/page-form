import { MdPreview } from "react-icons/md";
import { Button } from "./ui/button";

export default function PreviewDialogBtn() {
  return (
    <Button className="gap-2" variant="outline">
      <MdPreview className="h-6 w-6" />
      Preview
    </Button>
  );
}
