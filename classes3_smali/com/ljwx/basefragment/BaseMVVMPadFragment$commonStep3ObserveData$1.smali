.class final Lcom/ljwx/basefragment/BaseMVVMPadFragment$commonStep3ObserveData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseMVVMPadFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/basefragment/BaseMVVMPadFragment;->commonStep3ObserveData()V
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
.field final synthetic this$0:Lcom/ljwx/basefragment/BaseMVVMPadFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
            "TBinding;TBindingPad;TViewModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ljwx/basefragment/BaseMVVMPadFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
            "TBinding;TBindingPad;TViewModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ljwx/basefragment/BaseMVVMPadFragment$commonStep3ObserveData$1;->this$0:Lcom/ljwx/basefragment/BaseMVVMPadFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 69
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment$commonStep3ObserveData$1;->invoke(Ljava/lang/Boolean;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .registers 3

    const-string v0, "it"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 71
    iget-object p1, p0, Lcom/ljwx/basefragment/BaseMVVMPadFragment$commonStep3ObserveData$1;->this$0:Lcom/ljwx/basefragment/BaseMVVMPadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_16
    return-void
.end method
