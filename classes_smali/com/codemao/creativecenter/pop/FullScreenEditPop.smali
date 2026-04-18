.class public Lcom/codemao/creativecenter/pop/FullScreenEditPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenEditPop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;
    }
.end annotation


# instance fields
.field private beforeEnd:I

.field private beforeStart:I

.field private beforeStr:Ljava/lang/String;

.field private blur:Landroid/widget/ImageView;

.field private clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

.field private curActorUrl:Ljava/lang/String;

.field private curWorkUid:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private edit:Lcom/codemao/creativecenter/customview/CmEditText;

.field private exitNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iv_actor:Landroid/widget/ImageView;

.field private lastBottom:I

.field private layoutCount:I

.field private leftEnable:Z

.field private listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

.field private ll_tv1:Landroid/view/View;

.field private ll_tv2:Landroid/view/View;

.field private poolEntity:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private poolGlobal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rightEnable:Z

.field private volatile show:Z

.field private textWatcher:Landroid/text/TextWatcher;

.field private tv1:Landroid/widget/TextView;

.field private tv1_hint:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;

.field private tv2_hint:Landroid/widget/TextView;

.field private tvNotice:Landroid/widget/TextView;

.field private type:I

.field private viewById:Landroidx/constraintlayout/widget/Guideline;

.field private viewCover:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$AjOybwdFqeo8JXCV-ihPzexIR_4(Lcom/codemao/creativecenter/pop/FullScreenEditPop;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P1RM9BnKO-9JqzS7lHXcsUTiU-A(Lcom/codemao/creativecenter/pop/FullScreenEditPop;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPhuWyDxBibL7f0KonfkTKR_mlU(Lcom/codemao/creativecenter/pop/FullScreenEditPop;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->lambda$onCreate$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 115
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    .line 88
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->show:Z

    const/4 v0, 0x5

    .line 100
    iput v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->layoutCount:I

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->leftEnable:Z

    .line 103
    iput-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->rightEnable:Z

    const-string v0, ""

    .line 106
    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeStr:Ljava/lang/String;

    .line 107
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeStart:I

    .line 108
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeEnd:I

    .line 116
    iput p3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    .line 117
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->curWorkUid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->hideNotice()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/view/View;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/codemao/creativecenter/pop/FullScreenEditPop;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/view/View;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv2:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->rightEnable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeStart:I

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/creativecenter/pop/FullScreenEditPop;I)I
    .registers 2

    .line 58
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeStart:I

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeEnd:I

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/creativecenter/pop/FullScreenEditPop;I)I
    .registers 2

    .line 58
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->beforeEnd:I

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/text/TextWatcher;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->textWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->leftEnable:Z

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativestore/bean/CloudInfo;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    return-object p0
.end method

.method private caculateMagin(I)V
    .registers 12

    .line 503
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 504
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    .line 505
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000  # 5.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 506
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41700000  # 15.0f

    invoke-static {v2, v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 507
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 508
    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 509
    iget-object v6, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    add-int v7, v2, v0

    .line 510
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v8

    add-int/2addr v7, v8

    if-ge v1, v7, :cond_7f

    .line 511
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    add-int v7, v1, v0

    .line 512
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v7

    add-int v7, v0, v2

    if-le v7, p1, :cond_7c

    .line 514
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v0, v2

    .line 515
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    add-int v1, v0, p1

    goto :goto_7f

    :cond_7c
    move v9, v2

    move v2, v1

    move v1, v9

    .line 518
    :cond_7f
    :goto_7f
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 519
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 520
    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 521
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private hideNotice()V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 750
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 751
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x43480000  # 200.0f

    .line 771
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_2b
    return-void
.end method

.method private initView()V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$6;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initsize()V
    .registers 1

    return-void
.end method

.method private isExist(Ljava/lang/String;)Z
    .registers 5

    .line 700
    iget v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_11

    .line 701
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->exitNames:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 702
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_10
    return v1

    .line 707
    :cond_11
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->poolGlobal:Ljava/util/HashSet;

    if-nez v2, :cond_16

    return v1

    :cond_16
    const/4 v1, 0x7

    if-ne v0, v1, :cond_20

    .line 712
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 713
    :cond_20
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 714
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->poolGlobal:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 716
    :cond_31
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->poolEntity:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x6

    if-eq p2, p1, :cond_8

    if-nez p2, :cond_6

    goto :goto_8

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 203
    :cond_8
    :goto_8
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->saveAndQuite()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .registers 2

    .line 295
    iget-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->show:Z

    if-eqz p1, :cond_7

    .line 296
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->quite()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .registers 2

    .line 300
    iget-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->show:Z

    if-eqz p1, :cond_7

    .line 301
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->saveAndQuite()V

    :cond_7
    return-void
.end method

.method private quite()V
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

    if-eqz v0, :cond_7

    .line 779
    invoke-interface {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;->onCancel()V

    .line 781
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->dismiss()V

    return-void
.end method

.method private saveAndQuite()V
    .registers 9

    .line 535
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

    if-eqz v1, :cond_227

    .line 537
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    if-eqz v1, :cond_21f

    const/16 v2, 0xd

    if-eq v1, v2, :cond_21f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_21f

    const/4 v2, 0x6

    if-eq v1, v2, :cond_21f

    const/4 v2, 0x4

    const-string v3, ""

    const-string v4, " "

    if-eq v1, v2, :cond_ae

    packed-switch v1, :pswitch_data_228

    .line 581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->isVariableName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 582
    :cond_32
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_invalid_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->showNotice()V

    return-void

    .line 573
    :pswitch_45  #0xc
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 574
    :cond_55
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_recording_name_cannot_be_empty:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->showNotice()V

    return-void

    .line 564
    :pswitch_68  #0xb
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 565
    :cond_78
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_parameter_name_cannot_be_empty:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->showNotice()V

    return-void

    .line 555
    :pswitch_8b  #0xa
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 556
    :cond_9b
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_function_name_cannot_be_empty:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->showNotice()V

    return-void

    .line 548
    :cond_ae
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20c

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20c

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->isBroadcastName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c6

    goto/16 :goto_20c

    .line 602
    :cond_c6
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 603
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

    invoke-interface {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;->onCancel()V

    .line 604
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->dismiss()V

    return-void

    .line 609
    :cond_d7
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v1, v3, :cond_14c

    .line 610
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_11a

    .line 611
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    iget v6, v1, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv:I

    iget v7, v1, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv_total:I

    if-ge v6, v7, :cond_f4

    iget-boolean v6, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->leftEnable:Z

    if-nez v6, :cond_14c

    :cond_f4
    if-nez v1, :cond_f7

    goto :goto_f8

    :cond_f7
    move v4, v7

    .line 613
    :goto_f8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_max_cloud_public_variables_tips:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

    invoke-interface {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;->onCancel()V

    .line 616
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->dismiss()V

    return-void

    .line 620
    :cond_11a
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    iget v6, v1, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv:I

    iget v7, v1, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv_total:I

    if-ge v6, v7, :cond_126

    iget-boolean v6, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->rightEnable:Z

    if-nez v6, :cond_14c

    :cond_126
    if-nez v1, :cond_129

    goto :goto_12a

    :cond_129
    move v2, v7

    .line 622
    :goto_12a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_max_cloud_private_variables_tips:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

    invoke-interface {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;->onCancel()V

    .line 625
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->dismiss()V

    return-void

    .line 633
    :cond_14c
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    if-eq v1, v4, :cond_172

    const/16 v3, 0xb

    if-eq v1, v3, :cond_155

    goto :goto_18f

    .line 643
    :cond_155
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 644
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_parameter_name_cannot_be_number:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->showNotice()V

    return-void

    .line 635
    :cond_172
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 636
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_function_name_cannot_be_number:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->showNotice()V

    return-void

    .line 652
    :cond_18f
    :goto_18f
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 653
    iget v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    if-eq v0, v2, :cond_1dc

    packed-switch v0, :pswitch_data_232

    .line 670
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_named_variable_list_exist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1eb

    .line 663
    :pswitch_1ac  #0xc
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_named_recording_exist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1eb

    .line 667
    :pswitch_1bc  #0xb
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_named_parameter_exist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1eb

    .line 659
    :pswitch_1cc  #0xa
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_named_function_exist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1eb

    .line 655
    :cond_1dc
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_named_broadcast_exist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :goto_1eb
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->showNotice()V

    return-void

    .line 677
    :cond_1ef
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;->onDoneVariable(Ljava/lang/String;Z)V

    .line 678
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->dismiss()V

    goto :goto_227

    .line 549
    :cond_20c
    :goto_20c
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_broadcast_name_cannot_empty:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->showNotice()V

    return-void

    .line 542
    :cond_21f
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->dismiss()V

    .line 543
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

    invoke-interface {v1, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;->onDone(Ljava/lang/String;)V

    :cond_227
    :goto_227
    return-void

    :pswitch_data_228
    .packed-switch 0xa
        :pswitch_8b  #0000000a
        :pswitch_68  #0000000b
        :pswitch_45  #0000000c
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0xa
        :pswitch_1cc  #0000000a
        :pswitch_1bc  #0000000b
        :pswitch_1ac  #0000000c
    .end packed-switch
.end method

.method private setLeftUnable()V
    .registers 4

    .line 371
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 372
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_bg_create_rename_unable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 373
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv1:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$color;->creative_text_unable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv1_hint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setRightUnable()V
    .registers 4

    .line 378
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv2:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 379
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv2:Landroid/view/View;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_bg_create_rename_unable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 380
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv2:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$color;->creative_text_unable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv2_hint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private showNotice()V
    .registers 5

    .line 723
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 724
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    const/high16 v1, 0x42c80000  # 100.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 725
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 726
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 727
    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Lcom/codemao/creativecenter/pop/FullScreenEditPop$7;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$7;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_39
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->show:Z

    if-eqz v0, :cond_7

    .line 132
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 6

    .line 528
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    .line 529
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    iget v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    const v3, 0xe89d4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 530
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 531
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 841
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_b

    .line 842
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_edit_pad:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_edit:I

    :goto_d
    return v0
.end method

.method public listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;
    .registers 2

    .line 835
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;

    return-object p0
.end method

.method protected onCreate()V
    .registers 9

    .line 155
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 156
    sget v0, Lcom/codemao/creativecenter/R$id;->ll_bottom:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->clBottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 157
    sget v0, Lcom/codemao/creativecenter/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->blur:Landroid/widget/ImageView;

    .line 158
    sget v0, Lcom/codemao/creativecenter/R$id;->v_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->viewCover:Landroid/view/View;

    .line 159
    sget v0, Lcom/codemao/creativecenter/R$id;->tv1:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv1:Landroid/widget/TextView;

    .line 160
    sget v0, Lcom/codemao/creativecenter/R$id;->ll_tv2:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv2:Landroid/view/View;

    .line 161
    sget v0, Lcom/codemao/creativecenter/R$id;->ll_tv1:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    .line 162
    sget v0, Lcom/codemao/creativecenter/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 163
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_actor:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->iv_actor:Landroid/widget/ImageView;

    .line 165
    sget v1, Lcom/codemao/creativecenter/R$id;->tv2:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv2:Landroid/widget/TextView;

    .line 166
    sget v1, Lcom/codemao/creativecenter/R$id;->tv2_hint:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv2_hint:Landroid/widget/TextView;

    .line 167
    sget v1, Lcom/codemao/creativecenter/R$id;->tv1_hint:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv1_hint:Landroid/widget/TextView;

    .line 168
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_notice:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    .line 169
    sget v1, Lcom/codemao/creativecenter/R$id;->line:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->viewById:Landroidx/constraintlayout/widget/Guideline;

    .line 170
    sget v1, Lcom/codemao/creativecenter/R$id;->edit:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/customview/CmEditText;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    .line 171
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->initsize()V

    .line 173
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 174
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 175
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 176
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    new-instance v3, Lcom/codemao/creativecenter/pop/FullScreenEditPop$1;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->curActorUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 195
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->iv_actor:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->curActorUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->iv_actor:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadFitCenter(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 201
    :cond_be
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    new-instance v3, Lcom/codemao/creativecenter/pop/FullScreenEditPop$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 209
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v1, :cond_10f

    const/16 v5, 0x14

    if-eq v1, v3, :cond_f8

    const/4 v6, 0x6

    if-eq v1, v6, :cond_e7

    packed-switch v1, :pswitch_data_234

    new-array v1, v4, [Landroid/text/InputFilter;

    .line 283
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v1, v2

    .line 284
    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_125

    :cond_e7
    new-array v1, v4, [Landroid/text/InputFilter;

    .line 212
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1f4

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v1, v2

    .line 214
    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_125

    .line 218
    :cond_f8
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$2;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/text/InputFilter;

    .line 227
    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v2

    aput-object v1, v6, v4

    .line 228
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_125

    .line 236
    :cond_10f
    :pswitch_10f  #0xa, 0xb, 0xc, 0xd
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/customview/CmEditText;->setNeedIntercept(Z)V

    .line 237
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/customview/CmEditText;->setHasFiter(Z)V

    .line 238
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->textWatcher:Landroid/text/TextWatcher;

    .line 279
    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    :goto_125
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$4;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv2:Landroid/view/View;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 333
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 337
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 338
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 339
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 340
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 341
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 342
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->viewCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->blur:Landroid/widget/ImageView;

    const-string v1, "#FA221D4E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_19c

    .line 345
    :cond_18c
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->viewCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 348
    :goto_19c
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 349
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 350
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->caculateMagin(I)V

    .line 351
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    if-eqz v0, :cond_21e

    .line 352
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv1_hint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    iget v5, v5, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    iget v6, v6, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv_total:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv2_hint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    iget v3, v3, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    iget v3, v3, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv_total:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    iget v1, v0, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv_total:I

    if-lez v1, :cond_20f

    iget v0, v0, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv:I

    if-ne v0, v1, :cond_20f

    .line 355
    iput-boolean v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->leftEnable:Z

    .line 356
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setLeftUnable()V

    .line 357
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 359
    :cond_20f
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    iget v1, v0, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv_total:I

    if-lez v1, :cond_21e

    iget v0, v0, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv:I

    if-ne v0, v1, :cond_21e

    .line 360
    iput-boolean v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->rightEnable:Z

    .line 361
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setRightUnable()V

    .line 364
    :cond_21e
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->initView()V

    .line 366
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    const v2, 0xe89d4

    iget v3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_234
    .packed-switch 0xa
        :pswitch_10f  #0000000a
        :pswitch_10f  #0000000b
        :pswitch_10f  #0000000c
        :pswitch_10f  #0000000d
    .end packed-switch
.end method

.method protected onDismiss()V
    .registers 1

    .line 787
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method public onGetImagePathResult(Lcom/codemao/creativecenter/event/RectEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_93

    .line 387
    iget-object v0, p1, Lcom/codemao/creativecenter/event/RectEvent;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    goto/16 :goto_93

    .line 388
    :cond_8
    iget-object v0, p1, Lcom/codemao/creativecenter/event/RectEvent;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p1, Lcom/codemao/creativecenter/event/RectEvent;->workUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->curWorkUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_93

    .line 391
    :cond_1c
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    iget-object p1, p1, Lcom/codemao/creativecenter/event/RectEvent;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p1, v0, p1

    .line 392
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->layoutCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->layoutCount:I

    .line 393
    iget v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->lastBottom:I

    div-int/lit8 v3, v0, 0x5

    if-le v2, v3, :cond_35

    div-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_35

    move p1, v2

    :cond_35
    if-eq v2, p1, :cond_93

    if-gez v1, :cond_3a

    goto :goto_93

    .line 398
    :cond_3a
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->lastBottom:I

    .line 399
    div-int/lit8 v1, v0, 0x5

    if-le p1, v1, :cond_4a

    div-int/lit8 v1, v0, 0x2

    if-ge p1, v1, :cond_4a

    .line 400
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->viewById:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_51

    .line 402
    :cond_4a
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->viewById:Landroidx/constraintlayout/widget/Guideline;

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 404
    :goto_51
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 405
    sget v1, Lcom/codemao/creativecenter/R$id;->line:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 406
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->type:I

    if-eqz v1, :cond_83

    const/4 v2, 0x5

    if-eq v1, v2, :cond_83

    const/4 v2, 0x6

    if-eq v1, v2, :cond_83

    const/4 v1, -0x1

    .line 407
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 408
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    div-int/lit8 v1, v0, 0x5

    if-le p1, v1, :cond_7d

    div-int/lit8 v1, v0, 0x2

    if-ge p1, v1, :cond_7d

    .line 410
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->caculateMagin(I)V

    goto :goto_93

    .line 412
    :cond_7d
    div-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->caculateMagin(I)V

    goto :goto_93

    :cond_83
    const/4 p1, 0x0

    .line 415
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 416
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 417
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 418
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 419
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 420
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_93
    :goto_93
    return-void
.end method

.method protected onShow()V
    .registers 2

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->show:Z

    .line 125
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method

.method public setCloudInfo(Lcom/codemao/creativestore/bean/CloudInfo;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;
    .registers 7

    .line 816
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->cloudInfo:Lcom/codemao/creativestore/bean/CloudInfo;

    .line 817
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv1_hint:Landroid/widget/TextView;

    if-eqz v0, :cond_69

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv2_hint:Landroid/widget/TextView;

    if-eqz v1, :cond_69

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv_total:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->tv2_hint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv_total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget v0, p1, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv_total:I

    const/4 v1, 0x0

    if-lez v0, :cond_5c

    iget v2, p1, Lcom/codemao/creativestore/bean/CloudInfo;->public_cv:I

    if-lt v2, v0, :cond_5c

    .line 821
    iput-boolean v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->leftEnable:Z

    .line 822
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setLeftUnable()V

    .line 823
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->ll_tv2:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 825
    :cond_5c
    iget v0, p1, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv_total:I

    if-lez v0, :cond_69

    iget p1, p1, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv:I

    if-lt p1, v0, :cond_69

    .line 826
    iput-boolean v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->rightEnable:Z

    .line 827
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setRightUnable()V

    :cond_69
    return-object p0
.end method

.method public setCurActorUrl(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;
    .registers 2

    .line 811
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->curActorUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;
    .registers 2

    .line 794
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setPools(Ljava/util/HashSet;Ljava/util/HashSet;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/creativecenter/pop/FullScreenEditPop;"
        }
    .end annotation

    .line 799
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->poolGlobal:Ljava/util/HashSet;

    .line 800
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->poolEntity:Ljava/util/HashSet;

    return-object p0
.end method

.method public setPools(Ljava/util/List;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/creativecenter/pop/FullScreenEditPop;"
        }
    .end annotation

    .line 806
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->exitNames:Ljava/util/List;

    return-object p0
.end method
