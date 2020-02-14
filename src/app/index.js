import React from "react";
import { render } from "react-dom";

class App extends React.Component {

	alertUser() {
		alert("you clicked the button!");
	}

	render() {
		return (
			<div className="container">
				<div className="col-xs-10 col-xs-offset-1">
					<button onClick={this.alertUser.bind(this)} class="btn btn-primary" type="button">
						Reacter
					</button>
				</div>
			</div>
		);
	}
}

render(<App />, window.document.getElementById('app'));
