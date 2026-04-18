.class final Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;
.super Lcom/blankj/utilcode/util/ToastUtils$AbsToast;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowManagerToast"
.end annotation


# instance fields
.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;I)V
    .registers 4

    .line 589
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    .line 590
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 591
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    .line 592
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method

.method constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;Landroid/view/WindowManager;I)V
    .registers 4

    .line 596
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    .line 597
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 598
    iput-object p2, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    .line 599
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_c

    .line 646
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    .line 650
    :catch_c
    :cond_c
    invoke-super {p0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->cancel()V

    return-void
.end method

.method public show(I)V
    .registers 7

    .line 604
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    return-void

    .line 605
    :cond_5
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 606
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 607
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    .line 608
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v1, "ToastWithoutNotification"

    .line 609
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 613
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 616
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v2, v1, 0x7

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x7

    if-ne v2, v4, :cond_40

    .line 617
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_40
    const/16 v2, 0x70

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_47

    .line 620
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 623
    :cond_47
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 624
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 625
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 626
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 629
    :try_start_6d
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_7a

    .line 630
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_79

    goto :goto_7a

    :catch_79
    nop

    .line 634
    :cond_7a
    :goto_7a
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast$1;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast$1;-><init>(Lcom/blankj/utilcode/util/ToastUtils$WindowManagerToast;)V

    if-nez p1, :cond_84

    const-wide/16 v1, 0x7d0

    goto :goto_86

    :cond_84
    const-wide/16 v1, 0xdac

    :goto_86
    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
