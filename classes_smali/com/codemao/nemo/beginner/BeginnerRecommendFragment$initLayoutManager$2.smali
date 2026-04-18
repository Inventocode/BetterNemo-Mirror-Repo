.class public final Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BeginnerRecommendFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->initLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    .line 103
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_63

    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_19

    goto :goto_63

    .line 110
    :cond_19
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/RecommendListData;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/RecommendListData;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_33

    .line 111
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getMSpanNum$p(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)I

    move-result p1

    return p1

    .line 113
    :cond_33
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/RecommendListData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/RecommendListData;->getType()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5c

    .line 114
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getMSpanNum$p(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_5b

    .line 117
    :cond_55
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getMSpanNum$p(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)I

    move-result p1

    :goto_5b
    return p1

    .line 120
    :cond_5c
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getMSpanNum$p(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)I

    move-result p1

    return p1

    .line 107
    :cond_63
    :goto_63
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getMSpanNum$p(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)I

    move-result p1

    return p1
.end method
