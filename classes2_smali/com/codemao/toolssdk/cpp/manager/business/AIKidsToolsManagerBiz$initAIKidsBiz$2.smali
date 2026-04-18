.class final Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AIKidsToolsManagerBiz.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->initAIKidsBiz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$2;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$2;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$2;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$sendSystemDisconnect(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;Ljava/lang/Object;)V

    return-void
.end method
