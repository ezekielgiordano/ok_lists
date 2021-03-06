import React from 'react'

const ArmyDeletionTile = props => {
	return (
		<div>
			<p>Are you sure you want to delete "{props.name}"?</p>
			<button onClick={props.hideDeletionTile}>Cancel</button>
			<button onClick={props.deleteFromDatabase}>Delete</button>
		</div>
	)
}

export default ArmyDeletionTile