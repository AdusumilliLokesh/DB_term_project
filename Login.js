import React from 'react';
import bcrypt from 'bcryptjs';

const Login = ({ onLogin }) => {
  // Add state for the form inputs
  const [username, setUsername] = React.useState('');
  const [password, setPassword] = React.useState('');

  // Function to handle form submission
  const handleSubmit = async (event) => {
    event.preventDefault();

    // Check if the username and password are correct
    const isValid = await checkCredentials(username, password);
    if (isValid) {
      // If the credentials are valid, call the onLogin function
      onLogin();
    } else {
      // If the credentials are not valid, show an error message
      alert('Invalid username or password');
    }
  }

// Function to check the user's credentials
const checkCredentials = async (username, password) => {
  // Log the entered username and password
  console.log('Entered username:', username);
  console.log('Entered password:', password);

  // Replace this with your own code to check the user's credentials
  // For example, you could fetch the user data from your API and compare the entered password with the hashed password stored in your database

  // For this example, we will use a hardcoded username and password
  const validUsername = 'admin';
  const hashedPassword = '$2a$10$pssfS1MuV06RuUAJpdqvNuwKBoi4C5/ficdOtD7fiRzmMdf24wI0.';// 'password'

  // Check if the entered password matches the hashed password
  const isPasswordValid = await bcrypt.compare(password, hashedPassword);
  console.log('Is password valid:', isPasswordValid);

  const plaintextPassword = 'password';
  const saltRounds = 10;

  bcrypt.hash(plaintextPassword, saltRounds, (err, hash) => {
  console.log('Hashed password:', hash);
  console.log('Does it match the stored hashed password:', hash === hashedPassword);
  });
  if (username === validUsername && isPasswordValid) {
    console.log('Valid credentials');
    return true;
  } else {
    console.log('Invalid credentials');
    return false;
  }
}

// Define styles for centering and adding borders to the form
const containerStyles = {
  display: 'flex',
  justifyContent: 'center',
  alignItems: 'center',
  height: '80vh',
};

const formStyles = {
  border: '1px solid black',
  padding: '10px',
  backgroundColor: '#f0f0f0',
};

const inputStyles = {
  fontSize: '18px',
};

return (
    <div style={containerStyles}>
      <div style={formStyles}>
        <form onSubmit={handleSubmit}>
          <table>
            <tbody>
              <tr>
                <td><label>Username:</label></td>
                <td><input type="text" value={username} onChange={event => setUsername(event.target.value)} style={inputStyles} /></td>
              </tr>
              <tr>
                <td><label>Password:</label></td>
                <td><input type="password" value={password} onChange={event => setPassword(event.target.value)} style={inputStyles} /></td>
              </tr>
            </tbody>
          </table>
          <br />
          <button type="submit">Login</button>
        </form>
      </div>
    </div>
  );
}
export default Login;