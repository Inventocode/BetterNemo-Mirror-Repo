.class public Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;
.super Ljava/lang/Object;
.source "UploadServerFreezeUtil.java"


# static fields
.field private static final globalHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

.field private static final globalHttp3Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp3Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    .line 11
    new-instance v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    return-void
.end method

.method public static getFrozenType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 35
    invoke-static {p1, p0}, Lcom/qiniu/android/utils/Utils;->getIpType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s-%s"

    .line 36
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static globalHttp2Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;
    .registers 1

    .line 13
    sget-object v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp2Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    return-object v0
.end method

.method public static globalHttp3Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;
    .registers 1

    .line 8
    sget-object v0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp3Freezer:Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    return-object v0
.end method

.method public static isTypeFrozenByFreezeManagers(Ljava/lang/String;[Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;)Z
    .registers 5

    if-eqz p0, :cond_22

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_22

    :cond_9
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 20
    array-length v1, p1

    if-nez v1, :cond_10

    goto :goto_21

    .line 25
    :cond_10
    array-length v1, p1

    const/4 v2, 0x0

    :goto_12
    if-ge v0, v1, :cond_20

    aget-object v2, p1, v0

    .line 26
    invoke-virtual {v2, p0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;->isTypeFrozen(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    :goto_20
    return v2

    :cond_21
    :goto_21
    return v0

    :cond_22
    :goto_22
    const/4 p0, 0x1

    return p0
.end method
