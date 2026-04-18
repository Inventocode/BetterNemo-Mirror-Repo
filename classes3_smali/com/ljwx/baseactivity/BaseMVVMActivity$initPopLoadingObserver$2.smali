.class final Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$2;
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

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$2;->this$0:Lcom/ljwx/baseactivity/BaseMVVMActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Lkotlin/Triple;

    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$2;->invoke(Lkotlin/Triple;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/Triple;)V
    .registers 3
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

    .line 30
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$2;->this$0:Lcom/ljwx/baseactivity/BaseMVVMActivity;

    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->dismissPopLoading(Z)V

    return-void
.end method
