.class public Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;
.super Ljava/lang/Object;
.source "UploadServerNetworkStatus.java"


# direct methods
.method public static getBetterNetworkServer(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;
    .registers 3

    .line 8
    invoke-static {p0, p1}, Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;->isServerNetworkBetter(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p1

    :goto_8
    return-object p0
.end method

.method public static isServerNetworkBetter(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-nez p1, :cond_8

    return v1

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatusType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatusType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_23

    return v0

    :cond_23
    if-nez p1, :cond_26

    return v1

    .line 26
    :cond_26
    invoke-static {}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getInstance()Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatus(Ljava/lang/String;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    move-result-object p0

    .line 27
    invoke-static {}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getInstance()Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatus(Ljava/lang/String;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->getSpeed()I

    move-result p1

    invoke-virtual {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->getSpeed()I

    move-result p0

    if-ge p1, p0, :cond_41

    const/4 v0, 0x1

    :cond_41
    return v0
.end method
