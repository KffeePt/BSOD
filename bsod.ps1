Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Define the path to the image file
$imagePath = "./image.png"

# Create a new form and set the properties
$form = New-Object System.Windows.Forms.Form
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None
$form.WindowState = [System.Windows.Forms.FormWindowState]::Maximized

# Create a picture box and set the properties
$pictureBox = New-Object System.Windows.Forms.PictureBox
$pictureBox.Image = [System.Drawing.Image]::FromFile($imagePath)
$pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
$pictureBox.Dock = [System.Windows.Forms.DockStyle]::Fill

# Add the picture box to the form and show it
$form.Controls.Add($pictureBox)
$form.ShowDialog() | Out-Null
