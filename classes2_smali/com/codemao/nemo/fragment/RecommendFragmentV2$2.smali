.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "RecommendFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;->initLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->hasHead()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p1, :cond_11

    .line 240
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$100(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)I

    move-result p1

    return p1

    .line 243
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->hasHead()Z

    move-result v0

    if-eqz v0, :cond_1b

    add-int/lit8 p1, p1, -0x1

    .line 244
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7d

    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_30

    goto :goto_7d

    .line 246
    :cond_30
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$000(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 247
    sget-object v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$12;->$SwitchMap$com$codemao$nemo$bean$viewmodel$RecommendItemType:[I

    iget-object v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_58

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$100(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)I

    move-result p1

    return p1

    .line 249
    :cond_58
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$100(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)I

    move-result p1

    div-int/2addr p1, v0

    return p1

    .line 258
    :cond_60
    sget-object v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$12;->$SwitchMap$com$codemao$nemo$bean$viewmodel$RecommendItemType:[I

    iget-object v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$100(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)I

    move-result p1

    return p1

    .line 244
    :cond_7d
    :goto_7d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$100(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)I

    move-result p1

    return p1
.end method
