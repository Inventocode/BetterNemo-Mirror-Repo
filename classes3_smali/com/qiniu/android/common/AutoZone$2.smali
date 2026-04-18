.class Lcom/qiniu/android/common/AutoZone$2;
.super Ljava/lang/Object;
.source "AutoZone.java"

# interfaces
.implements Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/common/AutoZone;->preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/common/AutoZone;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;

.field final synthetic val$token:Lcom/qiniu/android/storage/UpToken;


# direct methods
.method constructor <init>(Lcom/qiniu/android/common/AutoZone;Ljava/lang/String;Lcom/qiniu/android/common/Zone$QueryHandler;Lcom/qiniu/android/storage/UpToken;)V
    .registers 5

    .line 109
    iput-object p1, p0, Lcom/qiniu/android/common/AutoZone$2;->this$0:Lcom/qiniu/android/common/AutoZone;

    iput-object p2, p0, Lcom/qiniu/android/common/AutoZone$2;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/qiniu/android/common/AutoZone$2;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;

    iput-object p4, p0, Lcom/qiniu/android/common/AutoZone$2;->val$token:Lcom/qiniu/android/storage/UpToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/Object;)V
    .registers 8

    .line 112
    check-cast p1, Lcom/qiniu/android/common/AutoZone$SingleFlightValue;

    .line 113
    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone$SingleFlightValue;->access$500(Lcom/qiniu/android/common/AutoZone$SingleFlightValue;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 114
    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone$SingleFlightValue;->access$700(Lcom/qiniu/android/common/AutoZone$SingleFlightValue;)Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    move-result-object v1

    .line 115
    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone$SingleFlightValue;->access$600(Lcom/qiniu/android/common/AutoZone$SingleFlightValue;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 117
    invoke-virtual {v0}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v3

    if-eqz v3, :cond_37

    if-eqz p1, :cond_37

    .line 118
    invoke-static {p1}, Lcom/qiniu/android/common/ZonesInfo;->createZonesInfo(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object v3

    .line 119
    iget-object v4, p0, Lcom/qiniu/android/common/AutoZone$2;->this$0:Lcom/qiniu/android/common/AutoZone;

    invoke-static {v4}, Lcom/qiniu/android/common/AutoZone;->access$800(Lcom/qiniu/android/common/AutoZone;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/qiniu/android/common/AutoZone$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/qiniu/android/common/AutoZone$GlobalCache;->access$000()Lcom/qiniu/android/common/AutoZone$GlobalCache;

    move-result-object v3

    iget-object v4, p0, Lcom/qiniu/android/common/AutoZone$2;->val$cacheKey:Ljava/lang/String;

    invoke-static {v3, p1, v4}, Lcom/qiniu/android/common/AutoZone$GlobalCache;->access$900(Lcom/qiniu/android/common/AutoZone$GlobalCache;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$2;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;

    invoke-interface {p1, v2, v0, v1}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    goto :goto_5e

    .line 123
    :cond_37
    invoke-virtual {v0}, Lcom/qiniu/android/http/ResponseInfo;->isNetworkBroken()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 124
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$2;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;

    const/4 v2, -0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    goto :goto_5e

    .line 126
    :cond_44
    invoke-static {}, Lcom/qiniu/android/common/FixedZone;->localsZoneInfo()Lcom/qiniu/android/common/FixedZone;

    move-result-object p1

    iget-object v3, p0, Lcom/qiniu/android/common/AutoZone$2;->val$token:Lcom/qiniu/android/storage/UpToken;

    invoke-virtual {p1, v3}, Lcom/qiniu/android/common/FixedZone;->getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    .line 127
    iget-object v3, p0, Lcom/qiniu/android/common/AutoZone$2;->this$0:Lcom/qiniu/android/common/AutoZone;

    invoke-static {v3}, Lcom/qiniu/android/common/AutoZone;->access$800(Lcom/qiniu/android/common/AutoZone;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/qiniu/android/common/AutoZone$2;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$2;->val$completeHandler:Lcom/qiniu/android/common/Zone$QueryHandler;

    invoke-interface {p1, v2, v0, v1}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    :goto_5e
    return-void
.end method
