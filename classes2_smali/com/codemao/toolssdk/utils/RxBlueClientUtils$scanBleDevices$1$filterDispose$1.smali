.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;
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
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $localNames:[Ljava/lang/String;

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
.method constructor <init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/utils/RxBlueClientUtils;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "[",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->$localNames:[Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->$resultAndMatch:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 155
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->invoke(Ljava/lang/Long;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Long;)V
    .registers 5

    .line 156
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->$localNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->$resultAndMatch:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$scanBleDevices$1$filterDispose$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->access$scanBleDevices$checkScanResult(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;[Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
