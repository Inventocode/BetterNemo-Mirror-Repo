.class public abstract Lcom/ljwx/baseactivity/fast/QuickMainActivity;
.super Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;
.source "QuickMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "ViewModel:",
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "*>;>",
        "Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity<",
        "TBinding;TViewModel;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickMainActivity.kt\ncom/ljwx/baseactivity/fast/QuickMainActivity\n+ 2 Toast.kt\ncom/ljwx/baseapp/extensions/ToastKt\n*L\n1#1,69:1\n17#2,11:70\n*S KotlinDebug\n*F\n+ 1 QuickMainActivity.kt\ncom/ljwx/baseactivity/fast/QuickMainActivity\n*L\n53#1:70,11\n*E\n"
.end annotation


# instance fields
.field private mExistTips:Ljava/lang/String;

.field private mLastClickTime:J


# direct methods
.method private final isFastClick()Z
    .registers 8

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    iget-wide v2, p0, Lcom/ljwx/baseactivity/fast/QuickMainActivity;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa0

    cmp-long v6, v2, v4

    if-gez v6, :cond_10

    const/4 v0, 0x1

    return v0

    .line 65
    :cond_10
    iput-wide v0, p0, Lcom/ljwx/baseactivity/fast/QuickMainActivity;->mLastClickTime:J

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/ljwx/baseactivity/fast/QuickMainActivity;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/fast/QuickMainActivity;->onDoubleBackPress()V

    return-void

    .line 42
    :cond_a
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/fast/QuickMainActivity;->onSingleBackPressTips()V

    return-void
.end method

.method public onDoubleBackPress()V
    .registers 2

    .line 46
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->onBackPressed()V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onSingleBackPressTips()V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/ljwx/baseactivity/fast/QuickMainActivity;->mExistTips:Ljava/lang/String;

    if-eqz v0, :cond_16

    const/16 v1, 0x11

    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_13

    goto :goto_16

    .line 26
    :cond_13
    invoke-static {v0, v3, v1, v3}, Lcom/ljwx/baseapp/extensions/ToastKt;->show(Ljava/lang/CharSequence;IIZ)V

    :cond_16
    :goto_16
    return-void
.end method
