.class public Lcom/codemao/nemo/presenter/SearchPresentImpl;
.super Ljava/lang/Object;
.source "SearchPresentImpl.java"

# interfaces
.implements Lcom/giu/xzz/mvp/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;
    }
.end annotation


# instance fields
.field private mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 25
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 27
    :cond_14
    iput-object p1, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/presenter/SearchPresentImpl;)Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    return-object p0
.end method


# virtual methods
.method public enterAnim()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->get2Activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f01005b

    .line 59
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v2}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v1, 0x7f01005d

    .line 61
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v1}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getChildView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/presenter/SearchPresentImpl$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/presenter/SearchPresentImpl$1;-><init>(Lcom/codemao/nemo/presenter/SearchPresentImpl;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public exitAnim()V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->get2Activity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f01005c

    .line 76
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v2}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v1, 0x7f01005e

    .line 78
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v2}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getChildView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    iget-object v1, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v1}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->get2Intent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAnimEvent(Lcom/codemao/nemo/event/AnimEV;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl;->mAnimView:Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/codemao/nemo/event/AnimEV;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 87
    invoke-virtual {p0}, Lcom/codemao/nemo/presenter/SearchPresentImpl;->enterAnim()V

    :cond_11
    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method
