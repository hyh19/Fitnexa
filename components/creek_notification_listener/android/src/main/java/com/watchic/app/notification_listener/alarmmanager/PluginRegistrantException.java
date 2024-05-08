

package com.watchic.app.notification_listener.alarmmanager;

public class PluginRegistrantException extends RuntimeException {
  public PluginRegistrantException() {
    super(
        "PluginRegistrantCallback is not set. Did you forget to call "
            + "AlarmService.setPluginRegistrant? See the README for instructions.");
  }
}
