.class public Lcom/codemao/nemo/activity/CreateMenuActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "CreateMenuActivity.java"


# instance fields
.field private canReversAnimate:Z

.field private cancelView:Landroid/view/View;

.field private clickable:Z

.field private constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private item1Area:Landroid/view/View;

.field private item2Area:Landroid/view/View;

.field private item3Area:Landroid/view/View;

.field private landscapeArea:Landroid/view/View;

.field private portraitArea:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$0aM1XeXO4j7WcfQpZaIX5LIkBa4(Lcom/codemao/nemo/activity/CreateMenuActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->lambda$openMenu$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ov9sbGcafRmlehtRRtq9swWQC3E(Lcom/codemao/nemo/activity/CreateMenuActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->lambda$openMenu$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bSycIR9CAWhygz1EFfNJ5aW9bSk(Lcom/codemao/nemo/activity/CreateMenuActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->lambda$openMenu$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eqtr2FVH5e2dA0qGhLvCaqqCTyg(Lcom/codemao/nemo/activity/CreateMenuActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->lambda$openMenu$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h0d7Nk27P96ICEVt7upgygkeAmM(Lcom/codemao/nemo/activity/CreateMenuActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->lambda$openMenu$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLiHjxfKSiQHjqwFrPDtpBkFIAU(Lcom/codemao/nemo/activity/CreateMenuActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->lambda$openMenu$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$knmrCJ7e-qMNyv0h0vuugYA5Txs(Lcom/codemao/nemo/activity/CreateMenuActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->lambda$openMenu$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwEUE6ccUhKD_4a8lImZPa1GOxk(Lcom/codemao/nemo/activity/CreateMenuActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/CreateMenuActivity;->lambda$openMenu$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->canReversAnimate:Z

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/CreateMenuActivity;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->clickable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item1Area:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item2Area:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->portraitArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->landscapeArea:Landroid/view/View;

    return-object p0
.end method

.method private getAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "alpha"

    .line 357
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private getScaleAnim(Landroid/view/View;ZFF)Landroid/animation/ObjectAnimator;
    .registers 7

    if-eqz p2, :cond_5

    const-string p2, "scaleX"

    goto :goto_7

    :cond_5
    const-string p2, "scaleY"

    :goto_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    .line 353
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private getTransYAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "translationY"

    .line 361
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$openMenu$0()V
    .registers 12

    .line 76
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 78
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const-wide v1, 0x3fe2f1a9fbe76c8bL  # 0.592

    if-nez v0, :cond_41

    const v3, 0x7f0a0339

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x3

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-double v8, v0

    mul-double v8, v8, v1

    double-to-int v8, v8

    move-object v0, v6

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const v1, 0x7f0a0333

    const/4 v2, 0x4

    const v3, 0x7f0a0339

    const/4 v4, 0x3

    const/high16 v0, 0x41f00000  # 30.0f

    .line 80
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_90

    :cond_41
    const v0, 0x7f0a0337

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v6, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    const v3, 0x7f0a0337

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x3

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-double v8, v0

    mul-double v8, v8, v1

    double-to-int v8, v8

    move-object v0, v6

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const v1, 0x7f0a05b8

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-wide v7, 0x3fd0e5604189374cL  # 0.264

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-double v9, v0

    mul-double v9, v9, v7

    double-to-int v5, v9

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const v1, 0x7f0a046d

    const-wide v7, 0x3fe083126e978d50L  # 0.516

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-double v9, v0

    mul-double v9, v9, v7

    double-to-int v5, v9

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 87
    :goto_90
    iget-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private synthetic lambda$openMenu$1(Landroid/view/View;)V
    .registers 2

    .line 103
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->canReversAnimate:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 104
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->startAnimationToNewWorksPage(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$openMenu$2(Landroid/view/View;)V
    .registers 3

    .line 109
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 112
    :cond_7
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->clickable:Z

    if-eqz p1, :cond_29

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击边学边做"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Lcom/codemao/nemo/activity/CourseActivity;->startPublishActivity(Landroid/content/Context;)V

    :cond_29
    return-void
.end method

.method private synthetic lambda$openMenu$3(Landroid/view/View;)V
    .registers 3

    .line 119
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 122
    :cond_7
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->clickable:Z

    if-eqz p1, :cond_30

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击从模板创建"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/TemplateCreateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_30
    return-void
.end method

.method private synthetic lambda$openMenu$4(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->startAnimationToNewWorksPage(Z)V

    return-void
.end method

.method private synthetic lambda$openMenu$5(Landroid/view/View;)V
    .registers 4

    .line 133
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 136
    :cond_7
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->clickable:Z

    if-eqz p1, :cond_35

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击自由创作"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/BcmHelper;->create(Landroid/content/Context;Z)V

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method private synthetic lambda$openMenu$6(Landroid/view/View;)V
    .registers 3

    .line 144
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 147
    :cond_7
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->clickable:Z

    if-eqz p1, :cond_36

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击自由创作"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 149
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/BcmHelper;->create(Landroid/content/Context;Z)V

    .line 150
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_36
    return-void
.end method

.method private synthetic lambda$openMenu$7(Landroid/view/View;)V
    .registers 3

    .line 155
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 158
    :cond_7
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->clickable:Z

    if-eqz p1, :cond_15

    .line 159
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    const/4 p1, 0x0

    const v0, 0x7f01001b

    .line 160
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_15
    return-void
.end method

.method private startAnimationToNewWorksPage(Z)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x3f4ccccd  # 0.8f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_16

    .line 255
    iput-boolean v4, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->canReversAnimate:Z

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    goto :goto_20

    .line 261
    :cond_16
    iput-boolean v5, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->canReversAnimate:Z

    const/high16 v2, 0x3f800000  # 1.0f

    const v7, 0x3f4ccccd  # 0.8f

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    .line 267
    :goto_20
    iget-object v10, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item1Area:Landroid/view/View;

    invoke-direct {v0, v10, v5, v2, v7}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getScaleAnim(Landroid/view/View;ZFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 268
    iget-object v11, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item1Area:Landroid/view/View;

    invoke-direct {v0, v11, v4, v2, v7}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getScaleAnim(Landroid/view/View;ZFF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 269
    iget-object v12, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item1Area:Landroid/view/View;

    invoke-direct {v0, v12, v8, v9}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 271
    iget-object v13, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item2Area:Landroid/view/View;

    invoke-direct {v0, v13, v5, v2, v7}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getScaleAnim(Landroid/view/View;ZFF)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 272
    iget-object v14, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item2Area:Landroid/view/View;

    invoke-direct {v0, v14, v4, v2, v7}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getScaleAnim(Landroid/view/View;ZFF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 273
    iget-object v7, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item2Area:Landroid/view/View;

    invoke-direct {v0, v7, v8, v9}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 275
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v14, 0x82

    .line 276
    invoke-virtual {v8, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v9, 0x6

    new-array v14, v9, [Landroid/animation/Animator;

    aput-object v10, v14, v4

    aput-object v11, v14, v5

    const/4 v10, 0x2

    aput-object v12, v14, v10

    const/4 v11, 0x3

    aput-object v13, v14, v11

    const/4 v12, 0x4

    aput-object v2, v14, v12

    const/4 v2, 0x5

    aput-object v7, v14, v2

    .line 277
    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 278
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    new-instance v7, Lcom/codemao/nemo/activity/CreateMenuActivity$5;

    invoke-direct {v7, v0, v1}, Lcom/codemao/nemo/activity/CreateMenuActivity$5;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;Z)V

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    iget-object v7, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->portraitArea:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 296
    iget-object v13, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->landscapeArea:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_a1

    .line 303
    iget-object v14, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v14

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v7, v7

    sub-float/2addr v14, v7

    .line 304
    iget-object v7, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v13, v13

    sub-float/2addr v7, v13

    move v15, v14

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_b8

    .line 308
    :cond_a1
    iget-object v14, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v14

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v7, v7

    sub-float/2addr v14, v7

    .line 309
    iget-object v7, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v13, v13

    sub-float/2addr v7, v13

    move v13, v7

    const/4 v7, 0x0

    const/4 v15, 0x0

    .line 314
    :goto_b8
    iget-object v2, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    invoke-direct {v0, v2, v3, v6}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 315
    iget-object v12, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->portraitArea:Landroid/view/View;

    invoke-direct {v0, v12, v6, v3}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 316
    iget-object v11, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->landscapeArea:Landroid/view/View;

    invoke-direct {v0, v11, v6, v3}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getAlphaAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 317
    iget-object v11, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    neg-float v10, v13

    invoke-direct {v0, v11, v7, v10}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getTransYAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 318
    iget-object v11, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->portraitArea:Landroid/view/View;

    invoke-direct {v0, v11, v14, v15}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getTransYAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 319
    iget-object v14, v0, Lcom/codemao/nemo/activity/CreateMenuActivity;->landscapeArea:Landroid/view/View;

    invoke-direct {v0, v14, v13, v7}, Lcom/codemao/nemo/activity/CreateMenuActivity;->getTransYAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 321
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v2, v9, v4

    aput-object v12, v9, v5

    const/4 v2, 0x2

    aput-object v6, v9, v2

    const/4 v2, 0x3

    aput-object v11, v9, v2

    const/4 v2, 0x4

    aput-object v7, v9, v2

    const/4 v2, 0x5

    aput-object v10, v9, v2

    .line 322
    invoke-virtual {v13, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v6, 0xc8

    .line 323
    invoke-virtual {v13, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 324
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$6;

    invoke-direct {v2, v0, v1, v3}, Lcom/codemao/nemo/activity/CreateMenuActivity$6;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;ZF)V

    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v1, :cond_11e

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v13, v1, v4

    aput-object v8, v1, v5

    .line 345
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_128

    :cond_11e
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v8, v1, v4

    aput-object v13, v1, v5

    .line 347
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 349
    :goto_128
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 50
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d034d

    goto :goto_d

    :cond_a
    const v0, 0x7f0d034c

    :goto_d
    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "创作入口"

    return-object v0
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 55
    invoke-static {p0}, Lcom/codemao/nemo/util/ToolUtils;->hasNotch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f1300f6

    .line 56
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_13

    :cond_d
    const v0, 0x7f1300f5

    .line 58
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 60
    :goto_13
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CreateMenuActivity;->openMenu()V

    return-void
.end method

.method public openMenu()V
    .registers 4

    const v0, 0x7f0a0189

    .line 71
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0337

    .line 72
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    const/16 v1, 0x8

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->clickable:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 91
    fill-array-data v0, :array_13a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2bc

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    new-instance v1, Lcom/codemao/nemo/activity/CreateMenuActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$1;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const v0, 0x7f0a008a

    .line 101
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a032f

    .line 107
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item1Area:Landroid/view/View;

    .line 108
    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0333

    .line 117
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item2Area:Landroid/view/View;

    .line 118
    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05b8

    .line 131
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->portraitArea:Landroid/view/View;

    .line 132
    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a046d

    .line 142
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->landscapeArea:Landroid/view/View;

    .line 143
    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00f6

    .line 153
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->cancelView:Landroid/view/View;

    .line 154
    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f010030

    .line 164
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 165
    new-instance v2, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f010032

    .line 168
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 169
    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 171
    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$2;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iget-object v2, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item1Area:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f010034

    .line 192
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 193
    new-instance v2, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 195
    new-instance v2, Lcom/codemao/nemo/activity/CreateMenuActivity$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$3;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 215
    iget-object v2, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item2Area:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_124

    const v0, 0x7f010035

    .line 218
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 220
    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    new-instance v1, Lcom/codemao/nemo/activity/CreateMenuActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CreateMenuActivity$4;-><init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 241
    iget-object v1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->item3Area:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_124
    const v0, 0x7f010031

    .line 244
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 245
    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    iget-object v1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity;->cancelView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    nop

    :array_13a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
