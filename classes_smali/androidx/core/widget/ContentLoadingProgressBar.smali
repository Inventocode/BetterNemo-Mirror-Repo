.class public Landroidx/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "ContentLoadingProgressBar.java"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z


# direct methods
.method public static synthetic $r8$lambda$9ZVtVfM7MwrgGmJEIZNfuhCC7eY(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .registers 1

    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ovrYLeWrClCHhOWg8t_Ay80kDrs(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .registers 1

    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 44
    new-instance p1, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 50
    new-instance p1, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda1;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/16 v0, 0x8

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 52
    iget-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    if-nez v0, :cond_b

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private removeCallbacks()V
    .registers 2

    .line 79
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    .line 68
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 69
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 74
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 75
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method
