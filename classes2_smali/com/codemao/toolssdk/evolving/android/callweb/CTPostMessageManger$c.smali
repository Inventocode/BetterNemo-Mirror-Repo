.class public final Lcom/codemao/toolssdk/evolving/android/callweb/CTPostMessageManger$c;
.super Ljava/lang/Object;
.source "CTPostMessageManger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/evolving/android/callweb/CTPostMessageManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/android/callweb/CTPostMessageManger$c;->$$delegate_0:Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/callweb/CTPostMessageManger$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getBcmChangeState(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/WoodWebView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/GetBcmChangeStateResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/callweb/CTPostMessageManger$c;->$$delegate_0:Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;->getBcmChangeState(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
