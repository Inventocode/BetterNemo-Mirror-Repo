.class public Lcom/ljwx/basefragment/BaseToolsFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseToolsFragment.kt"


# instance fields
.field private enableConfigInfoChangeListener:Z

.field private enableUserInfoChangeListener:Z

.field private final screenStatusReceiver$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$QrcLtE-0hFuOL2LbAZSPwHd-OU4(Lcom/ljwx/basefragment/BaseToolsFragment;Lcom/ljwx/baseapp/infochange/IBaseUserInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/basefragment/BaseToolsFragment;->onViewCreated$lambda$0(Lcom/ljwx/basefragment/BaseToolsFragment;Lcom/ljwx/baseapp/infochange/IBaseUserInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0JG5-_4hQnOushgPGh2XjWuHxQ(Lcom/ljwx/basefragment/BaseToolsFragment;Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/basefragment/BaseToolsFragment;->onViewCreated$lambda$1(Lcom/ljwx/basefragment/BaseToolsFragment;Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 22
    sget-object v0, Lcom/ljwx/basefragment/BaseToolsFragment$screenStatusReceiver$2;->INSTANCE:Lcom/ljwx/basefragment/BaseToolsFragment$screenStatusReceiver$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/basefragment/BaseToolsFragment;->screenStatusReceiver$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/ljwx/basefragment/BaseToolsFragment;Lcom/ljwx/baseapp/infochange/IBaseUserInfo;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 43
    invoke-interface {p1}, Lcom/ljwx/baseapp/infochange/IBaseUserInfo;->getInfoChangeType()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, p1, v0}, Lcom/ljwx/basefragment/BaseToolsFragment;->userInfoChange(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;I)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/ljwx/basefragment/BaseToolsFragment;Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 48
    invoke-interface {p1}, Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;->getInfoChangeType()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, p1, v0}, Lcom/ljwx/basefragment/BaseToolsFragment;->configInfoChange(Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;I)V

    return-void
.end method


# virtual methods
.method public configInfoChange(Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;I)V
    .registers 3

    return-void
.end method

.method protected getEnableConfigInfoChangeListener()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lcom/ljwx/basefragment/BaseToolsFragment;->enableConfigInfoChangeListener:Z

    return v0
.end method

.method protected getEnableUserInfoChangeListener()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcom/ljwx/basefragment/BaseToolsFragment;->enableUserInfoChangeListener:Z

    return v0
.end method

.method public onDestroy()V
    .registers 1

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseToolsFragment;->getEnableUserInfoChangeListener()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 42
    sget-object p1, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->INSTANCE:Lcom/ljwx/baseapp/vm/GlobalDataRepository;

    new-instance p2, Lcom/ljwx/basefragment/BaseToolsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/ljwx/basefragment/BaseToolsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/ljwx/basefragment/BaseToolsFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->observeUserInfo(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    :cond_18
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseToolsFragment;->getEnableConfigInfoChangeListener()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 47
    sget-object p1, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->INSTANCE:Lcom/ljwx/baseapp/vm/GlobalDataRepository;

    new-instance p2, Lcom/ljwx/basefragment/BaseToolsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/ljwx/basefragment/BaseToolsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/ljwx/basefragment/BaseToolsFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->observeConfigInfo(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_28
    return-void
.end method

.method public userInfoChange(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;I)V
    .registers 3

    return-void
.end method
