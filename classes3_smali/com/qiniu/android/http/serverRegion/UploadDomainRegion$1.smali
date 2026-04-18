.class Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;
.super Ljava/lang/Object;
.source "UploadDomainRegion.java"

# interfaces
.implements Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadServerDomain$GetServerCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->getNextServer(Lcom/qiniu/android/http/request/UploadRequestState;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;->this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public condition(Ljava/lang/String;Lcom/qiniu/android/http/serverRegion/UploadServer;Lcom/qiniu/android/http/serverRegion/UploadServer;)Z
    .registers 7

    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 146
    :cond_4
    invoke-virtual {p3}, Lcom/qiniu/android/http/serverRegion/UploadServer;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_8
    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$1;->this$0:Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-static {v1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->access$000(Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    invoke-static {v0}, Lcom/qiniu/android/utils/Utils;->isIpv6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    .line 154
    :cond_18
    invoke-static {p1, v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->getFrozenType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    .line 155
    invoke-static {}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->globalHttp3Freezer()Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeUtil;->isTypeFrozenByFreezeManagers(Ljava/lang/String;[Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;)Z

    move-result p1

    if-eqz p1, :cond_2c

    return v2

    .line 162
    :cond_2c
    invoke-static {p3, p2}, Lcom/qiniu/android/http/networkStatus/UploadServerNetworkStatus;->isServerNetworkBetter(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/IUploadServer;)Z

    move-result p1

    return p1
.end method
