.class final Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AIKidsToolsManagerBiz.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->invoke(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$4$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 98
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$4$1;->invoke(ZI)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZI)V
    .registers 3

    .line 99
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$4$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getRecordStartListener$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_f
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$4$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$4$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    invoke-static {p2}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$getStreamRecordTimeoutRunnable$p(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_20
    return-void
.end method
