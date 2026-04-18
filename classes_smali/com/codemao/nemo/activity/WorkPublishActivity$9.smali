.class Lcom/codemao/nemo/activity/WorkPublishActivity$9;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    .line 543
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1100(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v0

    if-gtz v0, :cond_13

    .line 544
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1102(Lcom/codemao/nemo/activity/WorkPublishActivity;I)I

    .line 546
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1100(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 549
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    .line 557
    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    .line 558
    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1200(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_5a

    new-array v2, v4, [I

    .line 561
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 562
    aget v2, v2, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    .line 563
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1100(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v5}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$500(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v5

    const/high16 v6, 0x42200000  # 40.0f

    invoke-static {v6}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    add-int/2addr v5, v6

    if-ge v0, v5, :cond_55

    .line 564
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0, v2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1300(Lcom/codemao/nemo/activity/WorkPublishActivity;I)V

    .line 566
    :cond_55
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1202(Lcom/codemao/nemo/activity/WorkPublishActivity;I)I

    .line 569
    :cond_5a
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1400(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v1

    if-eq v0, v1, :cond_97

    new-array v1, v4, [I

    .line 573
    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 574
    aget v1, v1, v3

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/WorkPublishActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 575
    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1100(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$500(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v3

    if-ge v2, v3, :cond_92

    .line 576
    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v2, v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1500(Lcom/codemao/nemo/activity/WorkPublishActivity;I)V

    .line 578
    :cond_92
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$9;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v1, v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1402(Lcom/codemao/nemo/activity/WorkPublishActivity;I)I

    :cond_97
    return-void
.end method
