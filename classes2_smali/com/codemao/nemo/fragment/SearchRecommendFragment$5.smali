.class Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "SearchRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/SearchRecommendFragment;->requestHotTag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onNetError()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 192
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->onSuc(Ljava/util/List;)V

    return-void
.end method

.method public onSuc(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    const-string v0, ""

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 198
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 199
    :cond_25
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHotData:Landroidx/databinding/ObservableField;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHotData:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/BaseObservable;->notifyChange()V

    .line 201
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tfl_hot:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    iget-object v1, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->access$100(Lcom/codemao/nemo/fragment/SearchRecommendFragment;Ljava/util/List;)Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setAdapter(Lcom/codemao/nemo/view/flowlayout/TagAdapter;)V

    return-void
.end method
