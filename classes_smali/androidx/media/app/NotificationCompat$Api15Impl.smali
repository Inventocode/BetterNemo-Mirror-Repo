.class Landroidx/media/app/NotificationCompat$Api15Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# direct methods
.method static setContentDescription(Landroid/widget/RemoteViews;ILjava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "remoteViews",
            "viewId",
            "contentDescription"
        }
    .end annotation

    .line 503
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-void
.end method
