#include <iostream>    
#include <vector>
using namespace std;  

//this is the standard findMax using the "<" symbol
template <typename Comparable>
const Comparable & findMax( const vector<Comparable> & a )
{
    int maxIndex = 0;

    for( unsigned i = 1; i < a.size( ); i++ )
        if( a[ maxIndex ] < a[ i ] )
            maxIndex = i;

    return a[ maxIndex ];
}

// Generic findMax, with a function object.
// Precondition: a.size( ) > 0.
template <class Object, class Comparator>
const Object & findMax( const vector<Object> & a, Comparator isLessThan )
{
    int maxIndex = 0;
	
    for( int i = 1; i < a.size( ); i++ )
        if( isLessThan( a[ maxIndex ], a[ i ] ) )
            maxIndex = i;

    return a[ maxIndex ];
}


class Employee
{
  public:
    void setValue( const string & n, double s )
      { name = n; salary = s; }
    const string & getName( ) const
      { return name; }
	const double getSalary() const
	{
		return salary;
	}
    void print( ostream & out ) const
      { out << name << " (" << salary << ")" << endl; }
    bool operator< ( const Employee & rhs ) const
      { return salary < rhs.salary; }

  private:
    string name;
    double salary;
};


// Define an output operator for Employee
ostream & operator<< ( ostream & out, const Employee & rhs )
{
    rhs.print( out );
    return out;
}

// Define the comparator class for the Salary
class EmployeeLastSalaryCompare
{
  public:
  bool operator () (const Employee & lhs, const Employee & rhs) const
    { 
		return (lhs.getSalary() < rhs.getSalary());
	}
};



int main( )
{
    vector<Employee> v( 3 );

    v[0].setValue( "George Bush", 400000.00 );
    v[1].setValue( "Bill Gates", 2000000000.00 );
    v[2].setValue( "Dr. Phil", 13000000.00 );
    for (unsigned i = 0; i < v.size(); i++)
        v[i].print(cout); 
    
	cout << endl << "The max using standard findMax" << endl;    
    cout << findMax( v ) << endl;

	cout << endl << "The max using findMax with comparator" << endl;  	
	cout << findMax(v, EmployeeLastSalaryCompare()) << endl;
    return 0;
}
