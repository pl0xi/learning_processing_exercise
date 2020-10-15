void mousePressed() {
 // Create a new XML bubble element
 XML bubble = xml.addChild("bubble");
 XML position = bubble.addChild("position");
 position.setInt("x", 25);
 position.setInt("y", 41);
 XML diameter = bubble.addChild("diameter");
 diameter.setContent(str(random(40, 80)));
 XML label = bubble.addChild("label");
 label.setContent("new label");
 saveXML(xml, "data/data.xml");
 loadData();
}
