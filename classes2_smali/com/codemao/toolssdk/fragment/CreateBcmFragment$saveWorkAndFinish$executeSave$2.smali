.class final Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateBcmFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$2;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 492
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$2;->invoke(ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;)V
    .registers 5

    .line 497
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$2;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->dismissSavingDialog()V

    .line 498
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$2;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->onWorkSaved(ZLcom/codemao/toolssdk/model/dsbridge/SaveResult;Z)V

    .line 499
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$2;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_18
    return-void
.end method
