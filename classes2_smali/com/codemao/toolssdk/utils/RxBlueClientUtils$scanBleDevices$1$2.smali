.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$2;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 170
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$2;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 171
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$2;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->access$getScanResultCacheList$p(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 172
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    const-string v0, "蓝牙,启动扫描"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    .line 173
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "启动蓝牙扫描"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 174
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->startDiscover()V

    return-void
.end method
