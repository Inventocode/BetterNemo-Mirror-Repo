.class public final Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "KnTemplateListVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->mergeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Lcom/codemao/nemo/bean/KnTemplateListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $basicSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $resultTimes:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$resultTimes:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$basicSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    .line 35
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$resultTimes:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p2, p3, :cond_22

    .line 76
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->getTemplateListMergeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/ljwx/baseapp/response/DataResult$Error;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/baseapp/response/DataResult$Error;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_44

    .line 78
    :cond_22
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$basicSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_44

    .line 79
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->getTemplateListMergeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/ljwx/baseapp/response/DataResult$Success;

    iget-object p3, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-static {p3}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->access$getBasicResponseTem$p(Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;)Lcom/codemao/nemo/bean/KnTemplateListResponse;

    move-result-object p3

    if-eqz p3, :cond_3d

    invoke-virtual {p3}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object p3

    goto :goto_3e

    :cond_3d
    const/4 p3, 0x0

    :goto_3e
    invoke-direct {p2, p3}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$resultTimes:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p2, p3, :cond_22

    .line 64
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->getTemplateListMergeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/ljwx/baseapp/response/DataResult$Fail;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/baseapp/response/DataResult$Fail;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_44

    .line 66
    :cond_22
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$basicSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_44

    .line 67
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->getTemplateListMergeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/ljwx/baseapp/response/DataResult$Success;

    iget-object p3, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-static {p3}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->access$getBasicResponseTem$p(Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;)Lcom/codemao/nemo/bean/KnTemplateListResponse;

    move-result-object p3

    if-eqz p3, :cond_3d

    invoke-virtual {p3}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object p3

    goto :goto_3e

    :cond_3d
    const/4 p3, 0x0

    :goto_3e
    invoke-direct {p2, p3}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public onSuccess(Lcom/codemao/nemo/bean/KnTemplateListResponse;)V
    .registers 6

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$resultTimes:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v1, v2, :cond_13

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$basicSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->access$setBasicResponseTem$p(Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;Lcom/codemao/nemo/bean/KnTemplateListResponse;)V

    .line 42
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$resultTimes:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_67

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-static {v1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->access$getBasicResponseTem$p(Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;)Lcom/codemao/nemo/bean/KnTemplateListResponse;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_30
    const-string/jumbo v1, "进阶的图标"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {v1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->getAdvanceIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_53

    .line 50
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_53
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->$basicSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_67

    .line 55
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->getTemplateListMergeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v1, v0}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_67
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 35
    check-cast p1, Lcom/codemao/nemo/bean/KnTemplateListResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;->onSuccess(Lcom/codemao/nemo/bean/KnTemplateListResponse;)V

    return-void
.end method
