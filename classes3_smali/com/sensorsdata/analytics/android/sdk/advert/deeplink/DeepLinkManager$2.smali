.class final Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$2;
.super Ljava/lang/Object;
.source "DeepLinkManager.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->parseDeepLink(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isSaveDeepLinkInfo:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .line 219
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$2;->val$isSaveDeepLinkInfo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$DeepLinkType;Ljava/lang/String;Lorg/json/JSONObject;ZJ)V
    .registers 15

    .line 222
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$2;->val$isSaveDeepLinkInfo:Z

    if-eqz v0, :cond_7

    .line 223
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->saveDeepLinkInfo()V

    .line 226
    :cond_7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/eventbus/SAEventBus;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/eventbus/SAEventBus;

    move-result-object v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getLatestUtmProperties()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "eventbus_deeplink_launch"

    invoke-virtual {v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/core/eventbus/SAEventBus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$DeepLinkType;->SENSORSDATA:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$DeepLinkType;

    if-ne p1, v0, :cond_44

    .line 229
    :try_start_18
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->access$000()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 230
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->access$000()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    move-result-object p1

    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;

    const-string v3, ""

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZJ)V

    invoke-interface {p1, v7}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;->onReceive(Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;)Z

    goto :goto_44

    .line 231
    :cond_32
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->access$100()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 232
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->access$100()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    move-result-object p1

    invoke-interface {p1, p2, p4, p5, p6}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;->onReceive(Ljava/lang/String;ZJ)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p1

    .line 235
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method
