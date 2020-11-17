// Code generated by ddd-domain-gen, DO NOT EDIT.
package scheduler

import (
	"errors"
	agent "github.com/xoe-labs/vicidial-go/internal/scheduling/domain/agent"
	call "github.com/xoe-labs/vicidial-go/internal/scheduling/domain/call"
	campaign "github.com/xoe-labs/vicidial-go/internal/scheduling/domain/campaign"
	leadqueryfilter "github.com/xoe-labs/vicidial-go/internal/scheduling/domain/leadqueryfilter"
	"reflect"
)

// Generators ...

// New returns a guaranteed-to-be-valid Scheduler or an error
func New(uuid string, name string, coveredCampaigns []campaign.Campaign, callQueueMinSize int, leadQueryFilter leadqueryfilter.LeadQueryFilter, assignedAgents []agent.Agent) (*Scheduler, error) {
	if reflect.ValueOf(uuid).IsZero() {
		return nil, errors.New("missing UUID")
	}
	s := &Scheduler{
		assignedAgents:   assignedAgents,
		callQueueMinSize: callQueueMinSize,
		coveredCampaigns: coveredCampaigns,
		leadQueryFilter:  leadQueryFilter,
		name:             name,
		uuid:             uuid,
	}
	return s, nil
}

// MustNew returns a guaranteed-to-be-valid Scheduler or panics
func MustNew(uuid string, name string, coveredCampaigns []campaign.Campaign, callQueueMinSize int, leadQueryFilter leadqueryfilter.LeadQueryFilter, assignedAgents []agent.Agent) *Scheduler {
	s, err := New(uuid, name, coveredCampaigns, callQueueMinSize, leadQueryFilter, assignedAgents)
	if err != nil {
		panic(err)
	}
	return s
}

// Marshalers ...

// UnmarshalFromRepository unmarshals Scheduler from the repository so that non-constructable
// private fields can still be initialized from (private) repository state
//
// Important: DO NEVER USE THIS METHOD EXCEPT FROM THE REPOSITORY
// Reason: This method initializes private state, so you could corrupt the domain.
func UnmarshalFromRepository(uuid string, name string, coveredCampaigns []campaign.Campaign, callQueueMinSize int, leadQueryFilter leadqueryfilter.LeadQueryFilter, assignedAgents []agent.Agent, callQueue []call.Call) *Scheduler {
	s := MustNew(uuid, name, coveredCampaigns, callQueueMinSize, leadQueryFilter, assignedAgents)
	s.callQueue = callQueue
	return s
}
