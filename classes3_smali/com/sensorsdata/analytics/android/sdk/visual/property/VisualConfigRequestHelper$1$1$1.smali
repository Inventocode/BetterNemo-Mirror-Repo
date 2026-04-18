.class Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;
.super Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$StringCallback;
.source "VisualConfigRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfter()V
    .registers 1

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .registers 4

    const/16 p2, 0xcd

    const/16 v0, 0x130

    if-eq p1, v0, :cond_c

    const/16 v0, 0x194

    if-eq p1, v0, :cond_c

    if-ne p1, p2, :cond_27

    .line 75
    :cond_c
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;)V

    if-ne p1, p2, :cond_20

    .line 78
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->save2Cache(Ljava/lang/String;)V

    :cond_20
    const-string p1, "SA.VP.VisualConfigRequestHelper"

    const-string p2, "requestVisualConfig return 304 Or 404"

    .line 80
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;)V

    .line 87
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;

    if-eqz v0, :cond_14

    .line 88
    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;->onSuccess(Ljava/lang/String;)V

    .line 90
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestVisualConfig success response is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SA.VP.VisualConfigRequestHelper"

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
