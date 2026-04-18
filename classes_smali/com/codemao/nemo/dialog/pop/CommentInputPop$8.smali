.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$8;
.super Ljava/lang/Object;
.source "CommentInputPop.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V
    .registers 2

    .line 508
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$8;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 517
    :goto_2
    iget-object v2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$8;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v2, v2, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 518
    iget-object v2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$8;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v2, v2, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return-void
.end method
