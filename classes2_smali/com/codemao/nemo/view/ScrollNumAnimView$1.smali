.class Lcom/codemao/nemo/view/ScrollNumAnimView$1;
.super Ljava/lang/Object;
.source "ScrollNumAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ScrollNumAnimView;->doAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/ScrollNumAnimView;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    .line 174
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 175
    :goto_c
    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v2}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_116

    .line 177
    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v2}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v2, p1}, Lcom/codemao/nemo/bean/ScrollNumInfo;->setTime(I)V

    .line 178
    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v2}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$100(Lcom/codemao/nemo/view/ScrollNumAnimView;)I

    move-result v2

    mul-int v2, v2, v1

    if-lt p1, v2, :cond_112

    .line 180
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$200(Lcom/codemao/nemo/view/ScrollNumAnimView;)I

    move-result v3

    add-int/2addr v3, v2

    if-le p1, v3, :cond_42

    .line 181
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$200(Lcom/codemao/nemo/view/ScrollNumAnimView;)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_43

    :cond_42
    move v3, p1

    :goto_43
    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 183
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getTotalMoveY()F

    move-result v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$200(Lcom/codemao/nemo/view/ScrollNumAnimView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 184
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$300(Lcom/codemao/nemo/view/ScrollNumAnimView;)F

    move-result v3

    rem-float/2addr v2, v3

    .line 185
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$300(Lcom/codemao/nemo/view/ScrollNumAnimView;)F

    move-result v3

    neg-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_8b

    .line 186
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v4}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$300(Lcom/codemao/nemo/view/ScrollNumAnimView;)F

    move-result v4

    add-float/2addr v2, v4

    aput v2, v3, v0

    goto :goto_9d

    .line 188
    :cond_8b
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v3

    aput v2, v3, v0

    :goto_9d
    const/4 v2, 0x1

    :goto_9e
    const/16 v3, 0xa

    if-ge v2, v3, :cond_d3

    .line 192
    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v4}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v4

    aget v4, v4, v0

    iget-object v5, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v5}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$400(Lcom/codemao/nemo/view/ScrollNumAnimView;)F

    move-result v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 194
    :cond_d3
    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v2}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v2

    aget v2, v2, v0

    iget-object v3, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$300(Lcom/codemao/nemo/view/ScrollNumAnimView;)F

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v4}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$400(Lcom/codemao/nemo/view/ScrollNumAnimView;)F

    move-result v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_112

    .line 195
    iget-object v2, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v2}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$000(Lcom/codemao/nemo/view/ScrollNumAnimView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/ScrollNumInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ScrollNumInfo;->getPosintionYs()[F

    move-result-object v2

    aget v3, v2, v0

    iget-object v4, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v4}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$300(Lcom/codemao/nemo/view/ScrollNumAnimView;)F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v0

    :cond_112
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 199
    :cond_116
    iget-object v1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 200
    iget-object v1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {v1}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$500(Lcom/codemao/nemo/view/ScrollNumAnimView;)I

    move-result v1

    if-ne p1, v1, :cond_128

    .line 201
    iget-object p1, p0, Lcom/codemao/nemo/view/ScrollNumAnimView$1;->this$0:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;->access$602(Lcom/codemao/nemo/view/ScrollNumAnimView;Z)Z

    :cond_128
    return-void
.end method
