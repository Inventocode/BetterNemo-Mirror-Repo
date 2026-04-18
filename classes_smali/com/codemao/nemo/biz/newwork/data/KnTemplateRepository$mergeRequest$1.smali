.class public final Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;
.super Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;
.source "KnTemplateRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;->mergeRequest(IIILcom/codemao/nemo/http/DataRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/common/CustomDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/KnWorkService;",
        ">.CustomObserver<",
        "Lcom/codemao/nemo/bean/KnTemplateListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/codemao/nemo/http/DataRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnTemplateListResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnTemplateListResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;

    iput-object p2, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    .line 30
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;-><init>(Lcom/codemao/nemo/common/CustomDataRepository;)V

    return-void
.end method


# virtual methods
.method public onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iget-object p3, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponseSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 30
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;->onResponseSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onResponseSuccess(Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/KnTemplateListResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/KnTemplateListResponse;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;->this$0:Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;

    iget-object v1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    .line 34
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->increaseOffset(Ljava/util/List;)V

    .line 35
    invoke-interface {v1, p1}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method
