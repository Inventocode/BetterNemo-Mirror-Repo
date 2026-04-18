.class public final Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;
.super Ljava/lang/Object;
.source "CTGlobalVM.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;

.field private static final _events:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final events:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;->INSTANCE:Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 9
    invoke-static {v0, v0, v1, v2, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;->events:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEvents()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/func/viewmodel/CTGlobalVM;->events:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method
