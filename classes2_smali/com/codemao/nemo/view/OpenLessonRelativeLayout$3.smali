.class Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;
.super Ljava/lang/Object;
.source "OpenLessonRelativeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/OpenLessonRelativeLayout;
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

    .line 140
    iput-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    .line 144
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    .line 145
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    iget-object v5, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    return-void
.end method
