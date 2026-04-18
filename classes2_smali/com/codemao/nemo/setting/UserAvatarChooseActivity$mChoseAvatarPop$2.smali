.class final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserAvatarChooseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/nemo/commonui/xpopup/core/BasePopupView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 6

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$isPad$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 251
    new-instance v0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;

    iget-object v1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMAvatarDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;)V

    goto :goto_4f

    .line 253
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    sget v1, Lcom/codemao/nemo/R$id;->cl_user_avatar:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v1, v0

    const/high16 v0, 0x41400000  # 12.0f

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    sub-int/2addr v1, v0

    .line 256
    new-instance v0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;

    iget-object v2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v2}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMAvatarDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;)V

    :goto_4f
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 249
    invoke-virtual {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;->invoke()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    return-object v0
.end method
