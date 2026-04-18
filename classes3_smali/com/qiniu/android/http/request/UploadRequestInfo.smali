.class Lcom/qiniu/android/http/request/UploadRequestInfo;
.super Ljava/lang/Object;
.source "UploadRequestInfo.java"


# instance fields
.field bucket:Ljava/lang/String;

.field currentRegionId:Ljava/lang/String;

.field fileOffset:Ljava/lang/Long;

.field key:Ljava/lang/String;

.field requestType:Ljava/lang/String;

.field targetRegionId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method shouldReportRequestLog()Z
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    const-string v1, "uplog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
