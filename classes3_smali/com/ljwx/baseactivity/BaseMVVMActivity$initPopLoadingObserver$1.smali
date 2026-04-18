.class final Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseMVVMActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/baseactivity/BaseMVVMActivity;->initPopLoadingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Triple<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/baseactivity/BaseMVVMActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/baseactivity/BaseMVVMActivity<",
            "TBinding;TViewModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ljwx/baseactivity/BaseMVVMActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseactivity/BaseMVVMActivity<",
            "TBinding;TViewModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$1;->this$0:Lcom/ljwx/baseactivity/BaseMVVMActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lkotlin/Triple;

    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$1;->invoke(Lkotlin/Triple;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/Triple;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$1;->this$0:Lcom/ljwx/baseactivity/BaseMVVMActivity;

    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->showPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZLjava/lang/CharSequence;ZZIILjava/lang/Object;)V

    return-void
.end method
