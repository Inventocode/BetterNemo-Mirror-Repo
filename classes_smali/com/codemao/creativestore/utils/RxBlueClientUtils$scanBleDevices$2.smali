.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$2;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanBleDevices([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$2;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    iput-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$2;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 4

    const-string v0, "bleScanResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$2;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$2;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-static {v0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->access$addScanResult(Lcom/codemao/creativestore/utils/RxBlueClientUtils;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$scanBleDevices$2;->accept(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    return-void
.end method
