.class public Lcom/sensorsdata/analytics/android/sdk/advert/scan/SAAdvertScanHelper;
.super Ljava/lang/Object;
.source "SAAdvertScanHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scanHandler(Landroid/app/Activity;Landroid/net/Uri;)Z
    .registers 4

    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channeldebug"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 28
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/scan/ChannelDebugScanHelper;-><init>()V

    goto :goto_21

    :cond_12
    const-string v1, "adsScanDeviceInfo"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 30
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/scan/WhiteListScanHelper;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/scan/WhiteListScanHelper;-><init>()V

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_28

    .line 33
    invoke-interface {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/scan/IAdvertScanListener;->handlerScanUri(Landroid/app/Activity;Landroid/net/Uri;)V

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method
