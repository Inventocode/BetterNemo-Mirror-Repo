.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$3;
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
        "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $resultAndMatch:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/utils/RxBlueClientUtils;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$3;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$3;->$resultAndMatch:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 176
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$3;->invoke(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 6

    const-string v0, "bleScanResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    if-nez v0, :cond_3a

    .line 179
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "扫描结果："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v3

    invoke-interface {v3}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 181
    :cond_3a
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$3;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->access$addScanResult(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    .line 182
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$3;->$resultAndMatch:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, p1, v1

    return-void
.end method
