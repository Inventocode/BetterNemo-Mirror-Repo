.class Lcom/codemao/nemo/activity/WorkDetailActivity$1;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$000(Lcom/codemao/nemo/activity/WorkDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 326
    :cond_9
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toScroll:I

    .line 327
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$100(Lcom/codemao/nemo/activity/WorkDetailActivity;)I

    move-result p1

    neg-int p1, p1

    const v0, 0x7f0a091f

    const/4 v1, 0x0

    if-ge p2, p1, :cond_5c

    .line 332
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 333
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800e4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 335
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$100(Lcom/codemao/nemo/activity/WorkDetailActivity;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$200(Lcom/codemao/nemo/activity/WorkDetailActivity;I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 336
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivExit:Landroid/widget/ImageView;

    const p2, 0x7f0e0059

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    const p2, 0x7f0e0069

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_92

    .line 339
    :cond_5c
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    const p2, 0x7f0800e5

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 340
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 341
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1, v1, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 343
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    const p2, 0x7f0e0068

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivExit:Landroid/widget/ImageView;

    const p2, 0x7f0e00ad

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_92
    return-void
.end method
