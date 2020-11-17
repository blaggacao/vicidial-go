// GENERATED BY magnum, DO NOT EDIT

package campaign

import (
	"fmt"
)

// prioritys returns all possible prioritys.
func prioritys() []priority {
	return []priority{High(), Normal(), Low()}
}

// Newpriority returns the priority for the given name.
func Newpriority(name string) (priority, error) {
	switch name {
	case "high":
		return High(), nil
	case "normal":
		return Normal(), nil
	case "low":
		return Low(), nil
	default:
		return priority{}, fmt.Errorf("unknown name: %s", name)
	}
}

// High returns the "high" priority.
func High() priority {
	return priority{
		name: "high",
		factor: 3,
	}
}

// Normal returns the "normal" priority.
func Normal() priority {
	return priority{
		name: "normal",
		factor: 2,
	}
}

// Low returns the "low" priority.
func Low() priority {
	return priority{
		name: "low",
		factor: 1,
	}
}

// String returns the priority's name.
func (p priority) String() string {
	return p.name
}

// Factor returns the priority's factor.
func (p priority) Factor() int {
	return p.factor
}

// MarshalText encodes the receiver into textual form.
func (p priority) MarshalText() (text []byte, err error) {
	return []byte(p.String()), nil
}

// UnmarshalText decodes the receiver from its textual form.
func (p *priority) UnmarshalText(text []byte) error {
	v, err := Newpriority(string(text))
	if err != nil {
		return err
	}
	*p = v
	return nil
}
