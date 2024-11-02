import 'package:flutter/material.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

extension ReviewStateExtensions on ReviewState {
  /// Gets a colour to display this review state.
  Color getColour() {
    switch (this) {
      case ReviewState.approved:
        return Colors.green;
      case ReviewState.pending:
        return Colors.blue;
      case ReviewState.rejected:
        return Colors.red;
    }

    return Colors.transparent;
  }
}
