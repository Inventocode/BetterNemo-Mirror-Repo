.class public final Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$closeAnimator$1;
.super Ljava/lang/Object;
.source "MainNewWorkActivity.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->closeAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$closeAnimator$1;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$closeAnimator$1;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 160
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$closeAnimator$1;->this$0:Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/ljwx/baseactivity/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
