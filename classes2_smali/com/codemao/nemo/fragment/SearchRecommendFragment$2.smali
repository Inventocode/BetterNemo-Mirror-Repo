.class Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SearchRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/SearchRecommendFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 6

    .line 94
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHisData:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 95
    iget-object p2, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->icon_his:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1b

    :cond_19
    const/16 v0, 0x8

    :goto_1b
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object p2, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tv2:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2c

    :cond_2a
    const/16 v0, 0x8

    :goto_2c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object p2, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->icon_del:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_3d

    :cond_3b
    const/16 v0, 0x8

    :goto_3d
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object p2, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;->this$0:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tfl_his:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4d

    :cond_4b
    const/16 v1, 0x8

    :goto_4d
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
