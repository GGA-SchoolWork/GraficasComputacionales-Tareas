// Crea flores con caras basadas en el estilo de Takashi Murakami

float distance = 60.0;
float bigRadius = 100.0;
float smallRadius = 50.0;

color c1 = #1e91d6;
color c2 = #0072BB;
color c3 = #8FC93A;
color c4 = #E4CC37;
color c5 = #E18335;
color c6 = #941C2F;
color c7 = #3E8E61;
color c8 = #FF2C55;
color c9 = #EEF36A;
color c10 = #4A2545;
color c11 = #136F63;
color c12 = #E36414;
color c13 = #360568;
color c14 = #94ECBE;
color c15 = #4464AD;
color c16 = #F05365;

color[] colors = {
  c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16
};

void setup() {
  size(720, 720); // Tamaño ventana
  background(51);
  fill(255, 255);
  stroke(0);
  strokeWeight(6);
}

void draw() {
  if (mousePressed) {
    // Petalos
    fill(colors[int(random(0,16))]);
		ellipse(mouseX + distance * cos(radians(30)), mouseY + distance * sin(radians(30)), smallRadius, smallRadius);
    fill(colors[int(random(0,16))]);
		ellipse(mouseX + distance * cos(radians(60)), mouseY + distance * sin(radians(60)), smallRadius, smallRadius);

    fill(colors[int(random(0,16))]);
		ellipse(mouseX + distance * cos(radians(30)), mouseY - distance * sin(radians(30)), smallRadius, smallRadius);
    fill(colors[int(random(0,16))]);
		ellipse(mouseX + distance * cos(radians(60)), mouseY - distance * sin(radians(60)), smallRadius, smallRadius);

    fill(colors[int(random(0,16))]);
		ellipse(mouseX - distance * cos(radians(30)), mouseY - distance * sin(radians(30)), smallRadius, smallRadius);
    fill(colors[int(random(0,16))]);
		ellipse(mouseX - distance * cos(radians(60)), mouseY - distance * sin(radians(60)), smallRadius, smallRadius);
  
    fill(colors[int(random(0,16))]);
		ellipse(mouseX - distance * cos(radians(30)), mouseY + distance * sin(radians(30)), smallRadius, smallRadius);
    fill(colors[int(random(0,16))]);
		ellipse(mouseX - distance * cos(radians(60)), mouseY + distance * sin(radians(60)), smallRadius, smallRadius);

    fill(colors[int(random(0,16))]);
		ellipse(mouseX, mouseY + distance , smallRadius, smallRadius);
    fill(colors[int(random(0,16))]);
		ellipse(mouseX, mouseY - distance , smallRadius, smallRadius);
    fill(colors[int(random(0,16))]);
		ellipse(mouseX + distance , mouseY, smallRadius, smallRadius);
    fill(colors[int(random(0,16))]);
		ellipse(mouseX - distance , mouseY, smallRadius, smallRadius);
    
    // Centro flor
    fill(255, 255);
		ellipse(mouseX, mouseY, bigRadius, bigRadius);
    
    // Boca
    arc(mouseX, mouseY+5.0, smallRadius+10.0, smallRadius, 0, PI, CHORD);
    
    // Ojos
    fill(0);
		ellipse(mouseX - 15.0 , mouseY - 15.0, 10.0, 15.0);
		ellipse(mouseX + 15.0 , mouseY - 15.0, 10.0, 15.0);
  }
   
}
