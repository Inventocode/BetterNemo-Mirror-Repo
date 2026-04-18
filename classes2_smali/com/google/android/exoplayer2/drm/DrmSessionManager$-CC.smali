.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# direct methods
.method public static $default$preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .registers 4
    .param p0, "_this"  # Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 145
    sget-object p1, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    return-object p1
.end method

.method public static $default$prepare(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .registers 1

    return-void
.end method

.method public static $default$release(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .registers 1

    return-void
.end method
