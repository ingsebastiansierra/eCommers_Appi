fndef FLUTTER_MY_APPLICATION_H_
efine FLUTTER_MY_APPLICATION_H_

nclude <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(MyApplication, my_application, MY, APPLICATION,
                     GtkApplication)

/**
 * my_application_new:
 *
 * Creates a new Flutter-based application.
 *
 * Returns: a new yApplication.
 */
MyApplication* my_application_new();

ndif  // FLUTTER_MY_APPLICATION_H_
