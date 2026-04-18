.class public Lcom/codemao/creativestore/utils/BluetoothPermissionRequest;
.super Ljava/lang/Object;
.source "BluetoothPermissionRequest.java"


# direct methods
.method public static isRequestAndroidSBlueEnablePermissionGranted(I[Ljava/lang/String;[I)Z
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0x248e

    if-eq p0, v1, :cond_6

    return v0

    .line 39
    :cond_6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p0, v1, :cond_31

    const/4 p0, 0x2

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 40
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 41
    :goto_16
    array-length v3, p1

    if-ge v2, v3, :cond_31

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, p0, :cond_2e

    .line 42
    aget-object v4, v1, v3

    .line 43
    aget-object v5, p1, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    aget v4, p2, v2

    if-eqz v4, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_31
    const/4 p0, 0x1

    return p0
.end method

.method public static isRequestLocationPermissionGranted(I[Ljava/lang/String;[ILcom/polidea/rxandroidble2_codemao/RxBleClient;)Z
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0x248e

    if-eq p0, v1, :cond_6

    return v0

    .line 60
    :cond_6
    invoke-virtual {p3}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->getRecommendedScanRuntimePermissions()[Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    .line 61
    :goto_b
    array-length v1, p1

    if-ge p3, v1, :cond_27

    .line 62
    array-length v1, p0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_24

    aget-object v3, p0, v2

    .line 63
    aget-object v4, p1, p3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    aget v3, p2, p3

    if-eqz v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public static requestAndroidSBlueEnablePermission(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_13

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x248e

    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_13
    return-void
.end method

.method public static requestLocationPermission(Landroidx/fragment/app/Fragment;Lcom/polidea/rxandroidble2_codemao/RxBleClient;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->getRecommendedScanRuntimePermissions()[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    const/16 p1, 0x248e

    .line 19
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
