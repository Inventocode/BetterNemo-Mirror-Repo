.class final Lcom/ljwx/baseactivity/BaseMVVMActivity$commonStep3ObserveData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseMVVMActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/baseactivity/BaseMVVMActivity;->commonStep3ObserveData()V
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

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity$commonStep3ObserveData$1;->this$0:Lcom/ljwx/baseactivity/BaseMVVMActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity$commonStep3ObserveData$1;->invoke(Ljava/lang/Boolean;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .registers 3

    const-string v0, "it"

    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity$commonStep3ObserveData$1;->this$0:Lcom/ljwx/baseactivity/BaseMVVMActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_18

    .line 48
    iget-object p1, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity$commonStep3ObserveData$1;->this$0:Lcom/ljwx/baseactivity/BaseMVVMActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_18
    return-void
.end method
