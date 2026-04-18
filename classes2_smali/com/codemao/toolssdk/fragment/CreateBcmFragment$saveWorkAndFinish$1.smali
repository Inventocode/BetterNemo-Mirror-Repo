.class final Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateBcmFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->saveWorkAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 503
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 504
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->getEnable()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_1c

    .line 505
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_21

    .line 507
    :cond_1c
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$1;->this$0:Lcom/codemao/toolssdk/fragment/CreateBcmFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->access$saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    :cond_21
    :goto_21
    return-void
.end method
