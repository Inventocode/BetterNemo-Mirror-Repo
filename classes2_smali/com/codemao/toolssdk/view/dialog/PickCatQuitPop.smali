.class public final Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;
.super Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;
.source "PickCatQuitPop.kt"


# instance fields
.field private final callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

.field private final pickCatConfig:Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;


# direct methods
.method public static synthetic $r8$lambda$uI2ihUHB5lZhwvbA9enC8xcDX84(Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;->onCreate$lambda$1$lambda$0(Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wcXaVE6YFwRJR9dUvZfahMtJvF4(Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;->onCreate$lambda$3$lambda$2(Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pickCatConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->getShowPublishButton()Z

    move-result v0

    .line 15
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished()Z

    move-result v1

    .line 12
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;-><init>(Landroid/content/Context;ZZLcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;)V

    .line 10
    iput-object p2, p0, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;->pickCatConfig:Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    .line 11
    iput-object p3, p0, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;->callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

    return-void
.end method

.method private static final onCreate$lambda$1$lambda$0(Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;Landroid/view/View;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;->callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;->backpack(Landroid/view/View;)V

    .line 25
    :cond_c
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->dismiss()V

    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2(Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;Landroid/view/View;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;->callBack:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;->openHistoryBackupDialog(Landroid/view/View;)V

    .line 32
    :cond_c
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method protected onCreate()V
    .registers 5

    .line 20
    invoke-super {p0}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->onCreate()V

    .line 21
    sget v0, Lcom/codemao/toolssdk/R$id;->backpack_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_25

    .line 22
    iget-object v3, p0, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;->pickCatConfig:Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->getShowBackpack()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_1a

    :cond_18
    const/16 v3, 0x8

    :goto_1a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    new-instance v3, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_25
    sget v0, Lcom/codemao/toolssdk/R$id;->history_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 29
    iget-object v3, p0, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;->pickCatConfig:Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->getShowHistory()Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_38

    :cond_36
    const/16 v1, 0x8

    :goto_38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    new-instance v1, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_43
    return-void
.end method
