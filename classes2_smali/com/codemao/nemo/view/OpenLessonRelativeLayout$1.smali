.class Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;
.super Ljava/lang/Object;
.source "OpenLessonRelativeLayout.java"

# interfaces
.implements Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 5

    .line 110
    iget-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {p2, p1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$012(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;I)I

    .line 111
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$000(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$100(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 112
    iget-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$300(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {v1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$400(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {v1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$500(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$202(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;F)F

    .line 113
    iget-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$200(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)F

    move-result p2

    mul-float p1, p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 114
    iget-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$600(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p2, p1, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$600(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->requestLayout()V

    .line 118
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$800(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$700(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$500(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
