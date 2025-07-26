import logo from './logo.svg';
import './App.css';
import { CohortsData} from './Cohort'
import CohortDetails from './CohortDetails'; 

function App() {
 const cohorts = [
    { name: 'React Bootcamp', startDate: '2025-01-01', endDate: '2025-03-01', status: 'ongoing' },
    { name: 'Java Backend', startDate: '2025-03-15', endDate: '2025-05-15', status: 'completed' }
  ];
  return (
  <div>
    <h1>Cohorts Details</h1>
    {CohortsData.map(cohort => <CohortDetails cohort={cohort}/>)}
  </div>
  );
}

export default App;
