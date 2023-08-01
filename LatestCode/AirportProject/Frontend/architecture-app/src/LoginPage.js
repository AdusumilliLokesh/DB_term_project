// LoginPage.js
import React, { useState } from 'react';
import axios from 'axios';
import './LoginPage.css';

function LoginPage({ onLoginSuccess }) {
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');

    const handleLogin = () => {
        axios.post('/login', {
            username,
            password
        }).then(res => {
            if (res.data.success) {
                onLoginSuccess();
            } else {
                // handle failed login
            }
        }).catch(err => {
            // handle error
        });
    }

    return (
        <div className="login-container">
            <div className="login-form">
                <form onSubmit={handleLogin}>
                    <table>
                        <tbody>
                            <tr>
                                <td><label>Username:</label></td>
                                <td><input type="text" value={username} onChange={event => setUsername(event.target.value)} className="login-input" /></td>
                            </tr>
                            <tr>
                                <td><label>Password:</label></td>
                                <td><input type="password" value={password} onChange={event => setPassword(event.target.value)} className="login-input" /></td>
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

export default LoginPage;