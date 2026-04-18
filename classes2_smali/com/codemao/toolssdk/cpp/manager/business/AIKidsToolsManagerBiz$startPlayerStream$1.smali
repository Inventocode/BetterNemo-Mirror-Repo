.class final Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$startPlayerStream$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AIKidsToolsManagerBiz.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->startPlayerStream(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$startPlayerStream$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 168
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$startPlayerStream$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 2

    .line 169
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$startPlayerStream$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->stopPlayerStream()V

    return-void
.end method
