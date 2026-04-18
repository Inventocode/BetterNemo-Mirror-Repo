.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;
.super Ljava/lang/Object;
.source "ThemeDetailFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;


# direct methods
.method public static synthetic $r8$lambda$thU5I0GQOGqOcaIZTU1E2Ui0fnQ(Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->lambda$onHeaderReleased$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onHeaderReleased$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 229
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->onHeaderMoving(I)Z

    return-void
.end method


# virtual methods
.method public onHeaderMoving(I)Z
    .registers 5

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeaderMoving: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-gez p1, :cond_1a

    return v0

    .line 211
    :cond_1a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_34

    .line 212
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$300(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)V

    goto :goto_45

    .line 213
    :cond_34
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gtz v1, :cond_40

    .line 214
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$300(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)V

    goto :goto_45

    .line 216
    :cond_40
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$300(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)V

    :goto_45
    const/4 p1, 0x1

    return p1
.end method

.method public onHeaderReleased()V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$400(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_23

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$500(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    goto :goto_4f

    :cond_23
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 226
    iget-object v1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$400(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    new-instance v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_4f
    return-void
.end method
