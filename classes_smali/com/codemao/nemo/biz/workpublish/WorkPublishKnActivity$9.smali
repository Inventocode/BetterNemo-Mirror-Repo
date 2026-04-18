.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    .line 434
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result v0

    if-gtz v0, :cond_13

    .line 435
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v1, v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1002(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)I

    .line 437
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 440
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1100(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_62

    new-array v1, v3, [I

    .line 444
    iget-object v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v4, v4, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 445
    aget v1, v1, v2

    iget-object v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v4, v4, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 446
    iget-object v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v4}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v5}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result v5

    const/high16 v6, 0x42200000  # 40.0f

    invoke-static {v6}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_5d

    .line 447
    iget-object v4, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v4, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1200(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)V

    .line 449
    :cond_5d
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v1, v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1102(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)I

    .line 452
    :cond_62
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result v1

    if-eq v0, v1, :cond_9f

    new-array v1, v3, [I

    .line 456
    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v3, v3, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 457
    aget v1, v1, v2

    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v2, v2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 458
    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result v3

    if-ge v2, v3, :cond_9a

    .line 459
    iget-object v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v2, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1400(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)V

    .line 461
    :cond_9a
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$9;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v1, v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1302(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;I)I

    :cond_9f
    return-void
.end method
