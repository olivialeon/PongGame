#pragma once 

#include <memory> 
#include <stack> 

#include "State.hpp"

namespace Pong 
{
    typedef std::unique_ptr<State> StateRef;

    //handles waht state game is in, what's running, inputs, 
    class StateMachine
    {
    public: 
        //constructor 
        StateMachine( ){ }
        ~StateMachine( ) { }

        void AddState ( StateRef newState, bool isReplacing= true);
        void RemoveState( );
        void ProcessStateChanges( );


        StateRef &GetActiveStates( );

    private:
        std::stack<StateRef> _states; 
        StateRef _newState; 

        bool _isAdding; 
        bool _isRemoving; 
        bool _isReplacing;

    };

}