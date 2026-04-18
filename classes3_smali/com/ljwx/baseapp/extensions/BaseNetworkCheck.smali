.class public final Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;
.super Ljava/lang/Object;
.source "ViewClick.kt"


# static fields
.field public static final INSTANCE:Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;

.field private static callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;

    invoke-direct {v0}, Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;-><init>()V

    sput-object v0, Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;->INSTANCE:Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkNetworkEnable()Z
    .registers 2

    .line 86
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method public final onNotAvailable(I)V
    .registers 3

    .line 94
    sget-object v0, Lcom/ljwx/baseapp/extensions/BaseNetworkCheck;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method
