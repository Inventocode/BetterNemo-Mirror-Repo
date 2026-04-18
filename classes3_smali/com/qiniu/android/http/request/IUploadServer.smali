.class public abstract Lcom/qiniu/android/http/request/IUploadServer;
.super Ljava/lang/Object;
.source "IUploadServer.java"


# static fields
.field public static HttpVersion2:Ljava/lang/String; = "http_version_2"

.field public static HttpVersion3:Ljava/lang/String; = "http_version_3"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getHttpVersion()Ljava/lang/String;
.end method

.method public abstract getIp()Ljava/lang/String;
.end method

.method public abstract getIpPrefetchedTime()Ljava/lang/Long;
.end method

.method public abstract getServerId()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public isHttp3()Z
    .registers 3

    .line 10
    invoke-virtual {p0}, Lcom/qiniu/android/http/request/IUploadServer;->getHttpVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 14
    :cond_8
    sget-object v1, Lcom/qiniu/android/http/request/IUploadServer;->HttpVersion3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
