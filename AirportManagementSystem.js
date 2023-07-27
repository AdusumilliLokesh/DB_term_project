import React from 'react';
import Login from './Login';

// Employee Component
const Employee = ({ employees }) => {
  // Add some CSS styles for the table
  const tableStyle = {
    borderCollapse: 'collapse',
    width: '100%'
  };
  const thStyle = {
    border: '1px solid black',
    padding: '8px',
    textAlign: 'left'
  };
  const tdStyle = {
    border: '1px solid black',
    padding: '8px'
  };

  return (
    <table style={tableStyle}>
      <tr>
        <th style={thStyle}>Name</th>
        <th style={thStyle}>SSN</th>
        <th style={thStyle}>Salary</th>
        <th style={thStyle}>Sex</th>
        <th style={thStyle}>Shift</th>
        <th style={thStyle}>Address</th>
        <th style={thStyle}>Date of Birth</th>
      </tr>
      {employees.map(employee => (
        <tr key={employee.Essn}>
          <td style={tdStyle}>{employee.Efname} {employee.Emi} {employee.Elname}</td>
          <td style={tdStyle}>{employee.Essn}</td>
          <td style={tdStyle}>{employee.Salary}</td>
          <td style={tdStyle}>{employee.Esex}</td>
          <td style={tdStyle}>{employee.Shift}</td>
          <td style={tdStyle}>{employee.Eaddress}</td>
          <td style={tdStyle}>{employee.DoB}</td>
        </tr>
      ))}
    </table>
  );
}

// Technician Component
const Technician = ({ technicians }) => {
  // Add some CSS styles for the table
  const tableStyle = {
    borderCollapse: 'collapse',
    width: '100%'
  };
  const thStyle = {
    border: '1px solid black',
    padding: '8px',
    textAlign: 'left'
  };
  const tdStyle = {
    border: '1px solid black',
    padding: '8px'
  };

  return (
    <table style={tableStyle}>
      <tr>
        <th style={thStyle}>Name</th>
        <th style={thStyle}>SSN</th>
        <th style={thStyle}>Area of Expertise</th>
      </tr>
      {technicians.map(technician => (
        <tr key={technician.Essn}>
          <td style={tdStyle}>{technician.Efname} {technician.Emi} {technician.Elname}</td>
          <td style={tdStyle}>{technician.Essn}</td>
          <td style={tdStyle}>{technician.Area_of_expertise}</td>
        </tr>
      ))}
    </table>
  );
}

// TrafficController Component
const TrafficController = ({ trafficControllers }) => {
  // Add some CSS styles for the table
  const tableStyle = {
    borderCollapse: 'collapse',
    width: '100%'
  };
  const thStyle = {
    border: '1px solid black',
    padding: '8px',
    textAlign: 'left'
  };
  const tdStyle = {
    border: '1px solid black',
    padding: '8px'
  };

  return (
    <table style={tableStyle}>
      <tr>
        <th style={thStyle}>Name</th>
        <th style={thStyle}>SSN</th> 
        <th style={thStyle}>License</th> 
        <th style={thStyle}>Experience</th> 
      </tr> 
      {trafficControllers.map(trafficController => ( 
        <tr key={trafficController.Essn}> 
          <td style={tdStyle}>{trafficController.Efname} {trafficController.Emi} {trafficController.Elname}</td> 
          <td style={tdStyle}>{trafficController.Essn}</td> 
          <td style={tdStyle}>{trafficController.License}</td> 
          <td style={tdStyle}>{trafficController.TC_Experience}</td> 
        </tr> 
      ))} 
    </table> 
  ); 
} 

// Pilot Component 
const Pilot = ({ pilots }) => { 
  // Add some CSS styles for the table 
  const tableStyle = { 
    borderCollapse: 'collapse', 
    width: '100%' 
  }; 
  const thStyle = { 
    border: '1px solid black', 
    padding: '8px', 
    textAlign: 'left' 
  }; 
  const tdStyle = { 
    border: '1px solid black', 
    padding: '8px' 
  }; 

  return ( 
    <table style={tableStyle}> 
      <tr> 
        <th style={thStyle}>Name</th> 
        <th style={thStyle}>SSN</th> 
        <th style={thStyle}>Pilot License</th> 
      </tr> 
      {pilots.map(pilot => ( 
        <tr key={pilot.Essn}> 
          <td style={tdStyle}>{pilot.Efname} {pilot.Emi} {pilot.Elname}</td> 
          <td style={tdStyle}>{pilot.Essn}</td> 
          <td style={tdStyle}>{pilot.Pil_License}</td> 
        </tr> 
      ))} 
    </table> 
  ); 
} 

// TypeOfPlane Component
const TypeOfPlane = ({ typeOfPlanes }) => {
  // Add some CSS styles for the table
  const tableStyle = {
    borderCollapse: 'collapse',
    width: '100%'
  };
  const thStyle = {
    border: '1px solid black',
    padding: '8px',
    textAlign: 'left'
  };
  const tdStyle = {
    border: '1px solid black',
    padding: '8px'
  };

  return (
    <table style={tableStyle}>
      <tr>
        <th style={thStyle}>Model</th>
        <th style={thStyle}>Capacity</th>
        <th style={thStyle}>Weight</th>
      </tr>
      {typeOfPlanes.map(typeOfPlane => (
        <tr key={typeOfPlane.Model}>
          <td style={tdStyle}>{typeOfPlane.Model}</td>
          <td style={tdStyle}>{typeOfPlane.Capacity}</td>
          <td style={tdStyle}>{typeOfPlane.Weight}</td>
        </tr>
      ))}
    </table>
  );
}

// AirplaneApron Component
const AirplaneApron = ({ airplaneAprons }) => {
  // Add some CSS styles for the table
  const tableStyle = {
    borderCollapse: 'collapse',
    width: '100%'
  };
  const thStyle = {
    border: '1px solid black',
    padding: '8px',
    textAlign: 'left'
  };
  const tdStyle = {
    border: '1px solid black',
    padding: '8px'
  };

  return (
    <table style={tableStyle}>
      <tr>
        <th style={thStyle}>Apron Number</th>
        <th style={thStyle}>Capacity</th>
        <th style={thStyle}>Location</th>
      </tr>
      {airplaneAprons.map(airplaneApron => (
        <tr key={airplaneApron.AP_Number}>
          <td style={tdStyle}>{airplaneApron.AP_Number}</td>
          <td style={tdStyle}>{airplaneApron.Capacity}</td>
          <td style={tdStyle}>{airplaneApron.AP_location}</td>
        </tr>
      ))}
    </table>
  );
}

// Airplane Component
const Airplane = ({ airplanes }) => {
  // Add some CSS styles for the table
  const tableStyle = {
    borderCollapse: 'collapse',
    width: '100%'
  };
  const thStyle = {
    border: '1px solid black',
    padding: '8px',
    textAlign: 'left'
  };
  const tdStyle = {
    border: '1px solid black',
    padding: '8px'
  };

  return (
    <table style={tableStyle}>
      <tr>
        <th style={thStyle}>Manufacturer</th>
        <th style={thStyle}>Registration Number</th>
        <th style={thStyle}>Type</th>
      </tr>
      {airplanes.map(airplane => (
        <tr key={airplane.Registration_no}>
          <td style={tdStyle}>{airplane.Manufacturer}</td>
          <td style={tdStyle}>{airplane.Registration_no}</td>
          <td style={tdStyle}>{airplane.type.Model}</td>
        </tr>
      ))}
    </table>
  );
}

// Service Component
const Service = ({ services }) => {
  // Add some CSS styles for the table
  const tableStyle = {
    borderCollapse: 'collapse',
    width: '100%'
  };
  const thStyle = {
    border: '1px solid black',
    padding: '8px',
    textAlign: 'left'
  };
  const tdStyle = {
    border: '1px solid black',
    padding: '8px'
  };

  return (
    <table style={tableStyle}>
      <tr>
        <th style={thStyle}>Service Day</th>
      </tr>
      {services.map(service => (
        <tr key={service.Service_day}>
          <td style={tdStyle}>{service.Service_day}</td>
        </tr>
      ))}
    </table>
  );
}

// Owner Component
const Owner = ({ owners }) => {
  // Add some CSS styles for the table
  const tableStyle = {
    borderCollapse: 'collapse',
    width: '100%'
  };
  const thStyle = {
    border: '1px solid black',
    padding: '8px',
    textAlign: 'left'
  };
  const tdStyle = {
    border: '1px solid black',
    padding: '8px'
  };

  return (
    <table style={tableStyle}>
      <tr>
        <th style={thStyle}>Type</th>
        <th style={thStyle}>Name</th>
        <th style={thStyle}>Address</th>
        <th style={thStyle}>Phone Number(s)</th>
      </tr>
      {owners.map(owner => (
        owner.CORPORATION ? (
          <tr key={owner.Name}>
            <td style={tdStyle}>Corporation</td>
            <td style={tdStyle}>{owner.Name}</td>
            <td style={tdStyle}>{owner.Co_address}</td>
            <td style={tdStyle}>{owner.Cphone_no.join(', ')}</td>
          </tr>
        ) : (
          owner.PERSON && (
            <tr key={owner.Ssn}>
              <td style={tdStyle}>Person</td>
              <td style={tdStyle}>{owner.Name}</td>
              <td style={tdStyle}>{owner.Per_address}</td>
              <td style={tdStyle}>{owner.Per_Phone.join(', ')}</td>
            </tr>
          )
        )
      ))}
    </table>
  );
}
// AirportManagementSystem Component
const AirportManagementSystem = () => {
  // Add state to keep track of whether or not the user is logged in
  const [isLoggedIn, setIsLoggedIn] = React.useState(false);

  // Function to handle successful login
  const handleLogin = () => {
    setIsLoggedIn(true);
  }
  // Add some sample data for testing
  const employees = [
    {
      Efname: 'John',
      Emi: 'M',
      Elname: 'Doe',
      Essn: '123-45-6789',
      Salary: 50000,
      Esex: 'M',
      Shift: 'Day',
      Eaddress: '123 Main St',
      DoB: '01/01/1990'
    },
    {
      Efname: 'Jane',
      Emi: 'A',
      Elname: 'Smith',
      Essn: '987-65-4321',
      Salary: 60000,
      Esex: 'F',
      Shift: 'Night',
      Eaddress: '456 Elm St',
      DoB: '02/02/1985'
    }
  ];

  const airplaneAprons = [
    {
      AP_Number: 1,
      Capacity: 10,
      AP_location: 'North'
    },
    {
      AP_Number: 2,
      Capacity: 20,
      AP_location: 'South'
    }
  ];

  const typeOfPlanes = [
    {
      Model: 'Boeing 747',
      Capacity: 660,
      Weight: 183500
    },
    {
      Model: 'Airbus A380',
      Capacity: 853,
      Weight: 276800
    }
  ];

  const airplanes = [
    {
      Manufacturer: 'Boeing',
      Registration_no: 'N12345',
      type: typeOfPlanes[0]
    },
    {
      Manufacturer: 'Airbus',
      Registration_no: 'N67890',
      type: typeOfPlanes[1]
    }
  ];

  const services = [
    {
      Service_day: '01/01/2022'
    },
    {
      Service_day: '02/02/2022'
    }
  ];

  const technicians = [
    {
      ...employees[0],
      Area_of_expertise: 'Electronics'
    }
  ];

  const trafficControllers = [
    {
      ...employees[1],
      License: 'ABC123',
      TC_Experience: 5
    }
  ];

  const pilots = [
    {
      ...employees[0],
      Pil_License: 'XYZ789'
    }
  ];

  const owners = [
    {
      CORPORATION: true,
      Name: 'Acme Corp',
      Co_address: '123 Main St',
      Cphone_no: ['555-1234', '555-5678']
    },
    {
      PERSON: true,
      Ssn: employees[1].Essn,
      Name: `${employees[1].Efname} ${employees[1].Emi} ${employees[1].Elname}`,
      Per_address: employees[1].Eaddress,
      Per_Phone: ['555-4321']
    }
  ];

  // Add state to keep track of the current table
  const [currentTable, setCurrentTable] = React.useState('employees');

  // Function to handle button clicks
  const handleButtonClick = (table) => {
    setCurrentTable(table);
  }

  return (
    <div> 
    {/* Render the Login component if the user is not logged in */}
    {!isLoggedIn && <Login onLogin={handleLogin} />}

    {/* Render the AirportManagementSystem if the user is logged in */}
    {isLoggedIn && (
      <>
        {/* Render buttons to switch between tables */}
        <button onClick={() => handleButtonClick('employees')}>Employees</button>
        <button onClick={() => handleButtonClick('airplaneAprons')}>Airplane Aprons</button>
        <button onClick={() => handleButtonClick('typeOfPlanes')}>Type of Planes</button>
        <button onClick={() => handleButtonClick('airplanes')}>Airplanes</button>
        <button onClick={() => handleButtonClick('services')}>Services</button>
        <button onClick={() => handleButtonClick('technicians')}>Technicians</button>
        <button onClick={() => handleButtonClick('trafficControllers')}>Traffic Controllers</button>
        <button onClick={() => handleButtonClick('pilots')}>Pilots</button>
        <button onClick={() => handleButtonClick('owners')}>Owners</button>

        {/* Render the current table */}
        {currentTable === 'employees' && <Employee employees={employees} />}
        {currentTable === 'airplaneAprons' && <AirplaneApron airplaneAprons={airplaneAprons} />}
        {currentTable === 'typeOfPlanes' && <TypeOfPlane typeOfPlanes={typeOfPlanes} />}
        {currentTable === 'airplanes' && <Airplane airplanes={airplanes} />}
        {currentTable === 'services' && <Service services={services} />}
        {currentTable === 'technicians' && <Technician technicians={technicians} />}
        {currentTable === 'trafficControllers' && <TrafficController trafficControllers={trafficControllers} />}
        {currentTable === 'pilots' && <Pilot pilots={pilots} />}
        {currentTable === 'owners' && <Owner owners={owners} />}
      </>
    )}
</div>
  ); 
}

export default AirportManagementSystem;
