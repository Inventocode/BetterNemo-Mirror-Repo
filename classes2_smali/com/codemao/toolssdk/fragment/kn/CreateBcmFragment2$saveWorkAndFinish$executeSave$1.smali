.class final Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateBcmFragment2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 483
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->dismissSavingDialog()V

    .line 485
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onWorkSaved(ZLcom/codemao/toolssdk/model/dsbridge/SaveResult;Z)V

    .line 486
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_16
    return-void
.end method
