.class Lcom/codemao/nemo/activity/CloudActivityV2$1;
.super Ljava/lang/Object;
.source "CloudActivityV2.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CloudActivityV2;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CloudActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CloudActivityV2;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/nemo/activity/CloudActivityV2$1;->this$0:Lcom/codemao/nemo/activity/CloudActivityV2;

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
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 88
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudActivityV2$1;->this$0:Lcom/codemao/nemo/activity/CloudActivityV2;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudActivityV2;->right_view:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    .line 90
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudActivityV2$1;->this$0:Lcom/codemao/nemo/activity/CloudActivityV2;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudActivityV2;->right_view:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_15
    return-void
.end method
