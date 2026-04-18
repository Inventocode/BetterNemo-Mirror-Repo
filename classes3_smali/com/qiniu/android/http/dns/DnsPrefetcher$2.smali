.class Lcom/qiniu/android/http/dns/DnsPrefetcher$2;
.super Ljava/lang/Object;
.source "DnsPrefetcher.java"

# interfaces
.implements Lcom/qiniu/android/common/Zone$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/dns/DnsPrefetcher;->getCurrentZoneHosts(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$wait:Lcom/qiniu/android/utils/Wait;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/dns/DnsPrefetcher;Lcom/qiniu/android/utils/Wait;)V
    .registers 3

    .line 305
    iput-object p2, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$2;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V
    .registers 4

    .line 308
    iget-object p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$2;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-virtual {p1}, Lcom/qiniu/android/utils/Wait;->stopWait()V

    return-void
.end method
