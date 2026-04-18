.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$4;
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
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $errorCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $localNames:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$4;->$localNames:[Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$4;->$errorCallback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 176
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$4;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 6

    .line 190
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$4;->$localNames:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "扫描异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->discoverResult(Z[Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    instance-of v0, p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    if-eqz v0, :cond_25

    .line 193
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$4;->$errorCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method
