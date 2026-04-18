.class final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NewWorkKnFromTemplateActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->commonStep3ObserveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/ljwx/baseapp/response/DataResult<",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Object;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewWorkKnFromTemplateActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewWorkKnFromTemplateActivity.kt\ncom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,262:1\n1#2:263\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 121
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    invoke-virtual {v0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->pullRefreshFinish()V

    .line 124
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_53

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$setStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Z)V

    .line 126
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 130
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v2, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    invoke-static {v2}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$getAdapter(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 131
    :cond_28
    iget-object v3, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 133
    :cond_34
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :cond_44
    :goto_44
    if-eqz v1, :cond_71

    .line 134
    iget-object v2, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_71

    .line 139
    :cond_53
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$getStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 140
    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v0, 0x4

    const-string/jumbo v1, "网络连接失败，请稍后重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    goto :goto_71

    .line 142
    :cond_65
    iget-object v2, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/ljwx/baseapp/page/IPageStateLayout$DefaultImpls;->showStateLayout$default(Lcom/ljwx/baseapp/page/IPageStateLayout;IZLandroid/view/View;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_71
    :goto_71
    return-void
.end method
