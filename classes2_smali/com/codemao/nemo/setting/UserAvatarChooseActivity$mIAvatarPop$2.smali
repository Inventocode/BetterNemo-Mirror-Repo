.class final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mIAvatarPop$2;
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
        "Lcom/codemao/nemo/setting/listener/IAvatarPop;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mIAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/nemo/setting/listener/IAvatarPop;
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mIAvatarPop$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMChoseAvatarPop(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.codemao.nemo.setting.listener.IAvatarPop"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/nemo/setting/listener/IAvatarPop;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 244
    invoke-virtual {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mIAvatarPop$2;->invoke()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v0

    return-object v0
.end method
