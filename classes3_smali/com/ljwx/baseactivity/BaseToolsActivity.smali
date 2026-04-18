.class public Lcom/ljwx/baseactivity/BaseToolsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseToolsActivity.kt"


# instance fields
.field private final Tag:Ljava/lang/String;

.field private enableConfigInfoChangeListener:Z

.field private enableUserInfoChangeListener:Z

.field private final screenStatusReceiver$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$rEgKFtn5M-5qNUa0PFV7EX__qqk(Lcom/ljwx/baseactivity/BaseToolsActivity;Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseToolsActivity;->onCreate$lambda$1(Lcom/ljwx/baseactivity/BaseToolsActivity;Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rofigimF0tHUEt7R3_W2lg4WHt8(Lcom/ljwx/baseactivity/BaseToolsActivity;Lcom/ljwx/baseapp/infochange/IBaseUserInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseToolsActivity;->onCreate$lambda$0(Lcom/ljwx/baseactivity/BaseToolsActivity;Lcom/ljwx/baseapp/infochange/IBaseUserInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-[page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/baseactivity/BaseToolsActivity;->Tag:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;->INSTANCE:Lcom/ljwx/baseactivity/BaseToolsActivity$screenStatusReceiver$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/baseactivity/BaseToolsActivity;->screenStatusReceiver$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/ljwx/baseactivity/BaseToolsActivity;Lcom/ljwx/baseapp/infochange/IBaseUserInfo;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 45
    invoke-interface {p1}, Lcom/ljwx/baseapp/infochange/IBaseUserInfo;->getInfoChangeType()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, p1, v0}, Lcom/ljwx/baseactivity/BaseToolsActivity;->userInfoChange(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;I)V

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/ljwx/baseactivity/BaseToolsActivity;Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 50
    invoke-interface {p1}, Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;->getInfoChangeType()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, p1, v0}, Lcom/ljwx/baseactivity/BaseToolsActivity;->configInfoChange(Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;I)V

    return-void
.end method


# virtual methods
.method public configInfoChange(Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;I)V
    .registers 3

    .line 64
    iget-object p1, p0, Lcom/ljwx/baseactivity/BaseToolsActivity;->Tag:Ljava/lang/String;

    const-string p2, "监测到配置信息改变"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getEnableConfigInfoChangeListener()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/ljwx/baseactivity/BaseToolsActivity;->enableConfigInfoChangeListener:Z

    return v0
.end method

.method protected getEnableUserInfoChangeListener()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/ljwx/baseactivity/BaseToolsActivity;->enableUserInfoChangeListener:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseToolsActivity;->getEnableUserInfoChangeListener()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 44
    sget-object p1, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->INSTANCE:Lcom/ljwx/baseapp/vm/GlobalDataRepository;

    new-instance v0, Lcom/ljwx/baseactivity/BaseToolsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/ljwx/baseactivity/BaseToolsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ljwx/baseactivity/BaseToolsActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->observeUserInfo(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 48
    :cond_13
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseToolsActivity;->getEnableConfigInfoChangeListener()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 49
    sget-object p1, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->INSTANCE:Lcom/ljwx/baseapp/vm/GlobalDataRepository;

    new-instance v0, Lcom/ljwx/baseactivity/BaseToolsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ljwx/baseactivity/BaseToolsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ljwx/baseactivity/BaseToolsActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->observeConfigInfo(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_23
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 68
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public userInfoChange(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;I)V
    .registers 3

    .line 60
    iget-object p1, p0, Lcom/ljwx/baseactivity/BaseToolsActivity;->Tag:Ljava/lang/String;

    const-string p2, "监测到用户信息改变"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
