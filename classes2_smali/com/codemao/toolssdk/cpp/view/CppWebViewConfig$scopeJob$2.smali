.class final Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CppWebViewConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CompletableJob;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;->invoke()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CompletableJob;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    return-object v0
.end method
