.class Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MyPublishWorksFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    if-ltz p1, :cond_25

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_25

    .line 72
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$100(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 73
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$000(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 75
    :cond_1e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$000(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)I

    move-result p1

    return p1

    .line 70
    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$000(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)I

    move-result p1

    return p1
.end method
