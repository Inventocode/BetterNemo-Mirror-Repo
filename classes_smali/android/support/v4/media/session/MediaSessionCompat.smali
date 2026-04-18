.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 135
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    return-void
.end method

.method public static ensureClassLoader(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 1062
    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    return-void
.end method

.method public static unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1079
    :cond_4
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 1081
    :try_start_7
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_a
    .catch Landroid/os/BadParcelableException; {:try_start_7 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const-string p0, "MediaSessionCompat"

    const-string v1, "Could not unparcel the data."

    .line 1085
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
