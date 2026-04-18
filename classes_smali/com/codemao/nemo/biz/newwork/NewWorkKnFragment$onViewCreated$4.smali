.class final Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$4;
.super Lkotlin/jvm/internal/Lambda;
.source "NewWorkKnFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$4;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 136
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$4;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 9

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$4;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;->goLogin()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 140
    :cond_e
    sget-object v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$4;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    .line 143
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x1

    const-string v4, "KN"

    const-string v5, "normal"

    .line 140
    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment$onViewCreated$4;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2c
    return-void
.end method
