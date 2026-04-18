.class public Lcom/blankj/utilcode/util/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;
    }
.end annotation


# direct methods
.method public static getNotification(Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;Lcom/blankj/utilcode/util/Utils$Consumer;)Landroid/app/Notification;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_19

    .line 101
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 103
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 106
    :cond_19
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    if-lt v0, v1, :cond_2f

    .line 108
    invoke-static {p0}, Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;->access$000(Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2f
    if-eqz p1, :cond_34

    .line 111
    invoke-interface {p1, v2}, Lcom/blankj/utilcode/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    .line 114
    :cond_34
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
