.class Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;
.super Ljava/lang/Object;
.source "RecyclerRelativeLayout.java"

# interfaces
.implements Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/RecyclerRelativeLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 7

    .line 168
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$512(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I

    .line 169
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$500(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I

    move-result p2

    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$700(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I

    move-result v0

    mul-int p2, p2, v0

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$700(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 170
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$900(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$802(Lcom/codemao/nemo/view/RecyclerRelativeLayout;F)F

    .line 171
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$800(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)F

    move-result p2

    mul-float p2, p2, p1

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 174
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x8

    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float v2, p1, v0

    if-lez v2, :cond_97

    .line 175
    iget-object v2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v3}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    if-gt v2, v3, :cond_8d

    goto :goto_97

    .line 178
    :cond_8d
    iget-object v2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1300(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a0

    .line 176
    :cond_97
    :goto_97
    iget-object v2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1300(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_a0
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_b5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_b5

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1300(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 183
    :cond_b5
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->requestLayout()V

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz p1, :cond_ea

    .line 187
    iget-object v2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1400(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f3

    .line 189
    :cond_ea
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1400(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f3
    if-gez v0, :cond_f6

    goto :goto_f7

    :cond_f6
    move v1, v0

    .line 194
    :goto_f7
    iget-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$1400(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
