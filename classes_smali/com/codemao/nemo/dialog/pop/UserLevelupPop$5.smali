.class Lcom/codemao/nemo/dialog/pop/UserLevelupPop$5;
.super Ljava/lang/Object;
.source "UserLevelupPop.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

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
    .registers 5

    const/4 v0, 0x0

    .line 232
    :goto_1
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    iget-object v1, v1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2d

    if-ne v0, p1, :cond_1c

    .line 234
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    iget-object v1, v1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800af

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2a

    .line 236
    :cond_1c
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    iget-object v1, v1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    return-void
.end method
