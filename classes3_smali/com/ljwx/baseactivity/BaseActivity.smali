.class public abstract Lcom/ljwx/baseactivity/BaseActivity;
.super Lcom/ljwx/baseactivity/BaseToolsActivity;
.source "BaseActivity.kt"

# interfaces
.implements Lcom/ljwx/baseapp/page/IPageStatusBar;
.implements Lcom/ljwx/baseapp/event/ISendLocalEvent;
.implements Lcom/ljwx/baseapp/page/IPageDialogTips;
.implements Lcom/ljwx/baseapp/page/IPageProcessStep;
.implements Lcom/ljwx/baseapp/page/IPageStartPage;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseActivity.kt\ncom/ljwx/baseactivity/BaseActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ActivityExtension.kt\ncom/ljwx/baseactivity/ActivityExtensionKt\n*L\n1#1,415:1\n1855#2,2:416\n1855#2,2:426\n47#3,8:418\n*S KotlinDebug\n*F\n+ 1 BaseActivity.kt\ncom/ljwx/baseactivity/BaseActivity\n*L\n299#1:416,2\n409#1:426,2\n397#1:418,8\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final argumentsDataId$delegate:Lkotlin/Lazy;

.field private final argumentsFromType$delegate:Lkotlin/Lazy;

.field private broadcastReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private hidePopBottom:I

.field private keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

.field private mScreenHeight:I

.field private final mStatusBar$delegate:Lkotlin/Lazy;

.field private onBackPressInterceptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Yx37rRk8asvKvI56oiMciAWqHo4(Lcom/ljwx/baseactivity/BaseActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/ljwx/baseactivity/BaseActivity;->onCreate$lambda$1(Lcom/ljwx/baseactivity/BaseActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMjhu_Vmk_YTCm9wXqYJeDht9_s(Lcom/ljwx/baseactivity/BaseActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;->setToolbar$lambda$3$lambda$2(Lcom/ljwx/baseactivity/BaseActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcXzL8i94lgGgD00h0U4OORaGF4(Lcom/ljwx/baseactivity/BaseActivity;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/ljwx/baseactivity/BaseActivity;->setKeyboardHeightListener$lambda$8(Lcom/ljwx/baseactivity/BaseActivity;II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ljwx/baseactivity/BaseActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/ljwx/baseactivity/BaseToolsActivity;-><init>()V

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-[activity"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/ljwx/baseactivity/BaseActivity;->mScreenHeight:I

    .line 51
    new-instance p1, Lcom/ljwx/baseactivity/BaseActivity$mStatusBar$2;

    invoke-direct {p1, p0}, Lcom/ljwx/baseactivity/BaseActivity$mStatusBar$2;-><init>(Lcom/ljwx/baseactivity/BaseActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseActivity;->mStatusBar$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lcom/ljwx/baseactivity/BaseActivity$argumentsFromType$2;

    invoke-direct {p1, p0}, Lcom/ljwx/baseactivity/BaseActivity$argumentsFromType$2;-><init>(Lcom/ljwx/baseactivity/BaseActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseActivity;->argumentsFromType$delegate:Lkotlin/Lazy;

    .line 63
    new-instance p1, Lcom/ljwx/baseactivity/BaseActivity$argumentsDataId$2;

    invoke-direct {p1, p0}, Lcom/ljwx/baseactivity/BaseActivity$argumentsDataId$2;-><init>(Lcom/ljwx/baseactivity/BaseActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseActivity;->argumentsDataId$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 36
    sget p1, Lcom/ljwx/baseapp/R$layout;->baseapp_state_layout_empty:I

    :cond_6
    invoke-direct {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;-><init>(I)V

    return-void
.end method

.method private final getMStatusBar()Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->mStatusBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;

    return-object v0
.end method

.method private static final onCreate$lambda$1(Lcom/ljwx/baseactivity/BaseActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/ljwx/baseactivity/BaseActivity;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->start()V

    :cond_c
    return-void
.end method

.method private static final setKeyboardHeightListener$lambda$8(Lcom/ljwx/baseactivity/BaseActivity;II)V
    .registers 7

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget p2, p0, Lcom/ljwx/baseactivity/BaseActivity;->mScreenHeight:I

    const/4 v0, 0x0

    if-gtz p2, :cond_e

    .line 352
    iput p1, p0, Lcom/ljwx/baseactivity/BaseActivity;->hidePopBottom:I

    const/4 v2, 0x0

    goto :goto_24

    .line 354
    :cond_e
    iget v1, p0, Lcom/ljwx/baseactivity/BaseActivity;->hidePopBottom:I

    if-le p1, v1, :cond_1b

    sub-int v2, p1, v1

    div-int/lit8 v3, p2, 0x4

    if-le v2, v3, :cond_1b

    sub-int v2, p1, v1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    mul-int/lit8 v3, p2, 0x3

    .line 357
    div-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_24

    sub-int v2, p1, v1

    :cond_24
    :goto_24
    if-gtz p2, :cond_35

    .line 362
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->keyboardHeightRootView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_33

    :cond_31
    const/16 p2, 0x7d0

    :goto_33
    iput p2, p0, Lcom/ljwx/baseactivity/BaseActivity;->mScreenHeight:I

    .line 364
    :cond_35
    iget p2, p0, Lcom/ljwx/baseactivity/BaseActivity;->hidePopBottom:I

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/baseactivity/BaseActivity;->isKeyboardShow(II)Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p1, 0x1

    .line 365
    invoke-virtual {p0, p1, v2}, Lcom/ljwx/baseactivity/BaseActivity;->onKeyboardHeightChange(ZI)V

    goto :goto_45

    .line 367
    :cond_42
    invoke-virtual {p0, v0, v0}, Lcom/ljwx/baseactivity/BaseActivity;->onKeyboardHeightChange(ZI)V

    :goto_45
    return-void
.end method

.method private final setToolbar(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/Toolbar;
    .registers 5

    if-eqz p1, :cond_18

    .line 148
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "设置Toolbar返回"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 150
    new-instance v0, Lcom/ljwx/baseactivity/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ljwx/baseactivity/BaseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ljwx/baseactivity/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-object p1
.end method

.method private static final setToolbar$lambda$3$lambda$2(Lcom/ljwx/baseactivity/BaseActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public commonStep1InitData()V
    .registers 1

    return-void
.end method

.method public commonStep2InitView()V
    .registers 1

    return-void
.end method

.method public commonStep3ObserveData()V
    .registers 1

    return-void
.end method

.method public commonStep4SetViewListener()V
    .registers 1

    return-void
.end method

.method public commonStep5RequestData(Z)V
    .registers 2

    return-void
.end method

.method public createKeyboardHeightProvider()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    invoke-direct {v0, p0}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    :cond_9
    iput-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    return-void
.end method

.method public enableCommonSteps()V
    .registers 4

    .line 310
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep1InitData()V

    .line 311
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep2InitView()V

    .line 312
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep3ObserveData()V

    .line 313
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep4SetViewListener()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    invoke-static {p0, v0, v1, v2}, Lcom/ljwx/baseapp/page/IPageProcessStep$DefaultImpls;->commonStep5RequestData$default(Lcom/ljwx/baseapp/page/IPageProcessStep;ZILjava/lang/Object;)V

    return-void
.end method

.method public enableKeyboardHeightListener()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenOrientation()Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initToolbar(I)Landroidx/appcompat/widget/Toolbar;
    .registers 5

    .line 136
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "通过id初始化toolbar"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_16

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 138
    :goto_17
    invoke-direct {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;->setToolbar(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    return-object p1
.end method

.method public isKeyboardShow(II)Z
    .registers 3

    sub-int/2addr p1, p2

    .line 373
    iget p2, p0, Lcom/ljwx/baseactivity/BaseActivity;->mScreenHeight:I

    div-int/lit8 p2, p2, 0x4

    if-le p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public keyboardHeightRootView()Landroid/view/View;
    .registers 2

    .line 346
    invoke-static {p0}, Lcom/ljwx/baseactivity/ActivityExtensionKt;->getRootLayout(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 4

    .line 298
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "触发onBackPress"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->onBackPressInterceptors:Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    .line 416
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 300
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 301
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "返回被拦截"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 305
    :cond_37
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "生命周期onConfigurationChanged"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 66
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseToolsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "生命周期onCreate"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;->setStatusBarLight(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getScreenOrientation()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 72
    :cond_1f
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->enableKeyboardHeightListener()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 73
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->createKeyboardHeightProvider()V

    .line 74
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->keyboardHeightRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    new-instance v0, Lcom/ljwx/baseactivity/BaseActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ljwx/baseactivity/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lcom/ljwx/baseactivity/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_36
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 407
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseToolsActivity;->onDestroy()V

    .line 408
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->broadcastReceivers:Ljava/util/HashMap;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 426
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    invoke-virtual {p0, v1}, Lcom/ljwx/baseactivity/BaseActivity;->unregisterLocalEvent(Ljava/lang/String;)V

    goto :goto_22

    .line 412
    :cond_32
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->close()V

    :cond_39
    return-void
.end method

.method public onKeyboardHeightChange(ZI)V
    .registers 3

    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 381
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 382
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onPause"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->setKeyboardHeightListener(Lcom/ljwx/baseapp/keyboard/KeyboardHeightCallback;)V

    :cond_16
    return-void
.end method

.method protected onRestart()V
    .registers 4

    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 393
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onRestart"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 166
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 167
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onResume"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->enableKeyboardHeightListener()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 170
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->setKeyboardHeightListener()V

    :cond_17
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "生命周期onSaveInstanceState"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 181
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 182
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onStart"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 175
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 176
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onStop"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated()V
    .registers 2

    .line 79
    sget v0, Lcom/ljwx/baseapp/R$id;->base_app_toolbar:I

    invoke-virtual {p0, v0}, Lcom/ljwx/baseactivity/BaseActivity;->initToolbar(I)Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public overridePendingTransition(II)V
    .registers 4

    .line 401
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 403
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "进出动画"

    invoke-virtual {p1, p2, v0}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 257
    :cond_8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    new-instance v1, Lcom/ljwx/baseactivity/BaseActivity$registerLocalEvent$receiver$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/ljwx/baseactivity/BaseActivity$registerLocalEvent$receiver$1;-><init>(Lcom/ljwx/baseactivity/BaseActivity;Landroid/content/IntentFilter;Lkotlin/jvm/functions/Function4;Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/ljwx/baseactivity/BaseActivity;->broadcastReceivers:Ljava/util/HashMap;

    if-nez p2, :cond_1b

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1b
    iput-object p2, p0, Lcom/ljwx/baseactivity/BaseActivity;->broadcastReceivers:Ljava/util/HashMap;

    .line 273
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/BroadcastReceiver;

    .line 274
    sget-object p2, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "注册事件广播:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public sendLocalEvent(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 4

    .line 279
    sget-object p3, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    invoke-virtual {p3, p1, p2}, Lcom/ljwx/baseapp/util/LocalEventUtils;->sendAction(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public setKeyboardHeightListener()V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/ljwx/baseactivity/BaseActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ljwx/baseactivity/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->setKeyboardHeightListener(Lcom/ljwx/baseapp/keyboard/KeyboardHeightCallback;)V

    :cond_c
    return-void
.end method

.method public setStatusBar(IZ)Lcom/ljwx/baseapp/view/IViewStatusBar;
    .registers 4

    .line 115
    invoke-direct {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getMStatusBar()Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;->setCustomStatusBar(IZ)Lcom/ljwx/baseapp/view/IViewStatusBar;

    move-result-object p1

    return-object p1
.end method

.method public setStatusBarLight(Z)V
    .registers 4

    if-eqz p1, :cond_d

    .line 120
    invoke-direct {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getMStatusBar()Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;

    move-result-object p1

    sget v0, Lcom/ljwx/baseapp/R$color;->white:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;->setCustomStatusBar(IZ)Lcom/ljwx/baseapp/view/IViewStatusBar;

    goto :goto_17

    .line 122
    :cond_d
    invoke-direct {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getMStatusBar()Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;

    move-result-object p1

    .line 123
    sget v0, Lcom/ljwx/baseapp/R$color;->base_app_textColorSecondary:I

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;->setCustomStatusBar(IZ)Lcom/ljwx/baseapp/view/IViewStatusBar;

    :goto_17
    return-void
.end method

.method public setStatusBarTransparent(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 131
    invoke-direct {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getMStatusBar()Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;->transparent(Z)V

    :cond_9
    return-void
.end method

.method public showDialogTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 12

    .line 216
    sget-object p6, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "快速显示弹窗"

    invoke-virtual {p6, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance p6, Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    invoke-direct {p6}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;-><init>()V

    .line 228
    invoke-virtual {p6, p5}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showCloseIcon(Ljava/lang/Boolean;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    if-eqz p1, :cond_18

    .line 230
    invoke-virtual {p6, p1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    .line 232
    :cond_18
    invoke-virtual {p6, p2}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setContent(Ljava/lang/CharSequence;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    if-nez p3, :cond_1f

    if-eqz p9, :cond_22

    .line 235
    :cond_1f
    invoke-virtual {p6, p3, p9}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    :cond_22
    if-nez p4, :cond_26

    if-eqz p8, :cond_29

    .line 239
    :cond_26
    invoke-virtual {p6, p4, p8}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    .line 242
    :cond_29
    invoke-virtual {p6, p7}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->buttonsReversal(Z)V

    .line 243
    invoke-virtual {p6, p0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public startActivity(Ljava/lang/Class;Ljava/lang/Integer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_10

    .line 95
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 97
    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1c
    return-void
.end method

.method public unregisterLocalEvent(Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_39

    .line 284
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->broadcastReceivers:Ljava/util/HashMap;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2f

    .line 285
    sget-object v1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "注销事件广播:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    :cond_2f
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseActivity;->broadcastReceivers:Ljava/util/HashMap;

    if-eqz v0, :cond_39

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/BroadcastReceiver;

    :cond_39
    return-void
.end method
