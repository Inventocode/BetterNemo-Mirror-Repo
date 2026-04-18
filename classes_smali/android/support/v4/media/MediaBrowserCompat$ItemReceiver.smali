.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemReceiver"
.end annotation


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "resultData"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 2291
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :cond_6
    const/4 v0, 0x0

    if-nez p1, :cond_22

    if-eqz p2, :cond_22

    const-string p1, "media_item"

    .line 2294
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2298
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 2299
    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz p2, :cond_1e

    goto :goto_1f

    .line 2302
    :cond_1e
    throw v0

    .line 2300
    :cond_1f
    :goto_1f
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    throw v0

    .line 2295
    :cond_22
    throw v0
.end method
