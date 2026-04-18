.class public abstract Lcom/codemao/creativecenter/NewBcmFragment;
.super Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/callback/CreativeLocalAudioMoveInterface;
.implements Lcom/codemao/creativestore/view/NewBcmView;
.implements Lcom/codemao/creativecenter/view/LocalBcmView;
.implements Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;
.implements Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;
.implements Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/NewBcmFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewBcmFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewBcmFragment.kt\ncom/codemao/creativecenter/NewBcmFragment\n*L\n1#1,3510:1\n*E\n"
.end annotation


# static fields
.field private static globalOpenBcmMode:I


# instance fields
.field private accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

.field private bcmMode:I

.field private bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

.field private binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

.field private blockRedo:Landroid/widget/ImageView;

.field private blockRevoke:Landroid/widget/ImageView;

.field private canNotCallStatusChange:Z

.field private cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

.field private closeAuto:Z

.field private completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private creativeLoadingAnimResource:I

.field private currentStatus:I

.field private flRevokeRedo:Landroid/view/View;

.field private fullScreenHelperCenter:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

.field private fullScreenWebViewContentPadding:Landroid/graphics/Rect;

.field private guideHighlightInfos:[Lcom/codemao/creativecenter/bean/GuideHighlightInfo;

.field private guideView:Lcom/codemao/creativecenter/customview/CreationGuideView;

.field private handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/creativecenter/utils/CreativeHandlerUtil<",
            "*>;"
        }
    .end annotation
.end field

.field private hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

.field private hasNotch:Z

.field private hideUploadAlways:Z

.field private isFullScreen:Z

.field private isKeyboadShow:Z

.field private isLoadFinish:Z

.field private isOtherClicking:Z

.field private keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

.field private final landscapeStyleDispatchTouchListener:Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;

.field private loadTimeoutMills:I

.field private loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

.field private final loadingTimeoutRunnable:Ljava/lang/Runnable;

.field private mHelper:Lcom/codemao/creativecenter/synergic/SynergicHelper;

.field private mInitHeight:I

.field private final mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

.field private notchMargin:I

.field private pageStyle:I

.field private final portraitStyleDispatchTouchListener:Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;

.field private redo:Landroid/widget/ImageView;

.field private revoke:Landroid/widget/ImageView;

.field private screenSelectVM:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

.field private selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

.field private sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

.field private sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

.field private final stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

.field private stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

.field private videoInit:Z

.field private webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

.field private webViewBottomMargin:F

.field private webViewLeftMargin:F

.field private webViewRightMargin:F

.field private webViewTopMargin:F

.field private worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/creativecenter/NewBcmFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x3

    .line 111
    sput v0, Lcom/codemao/creativecenter/NewBcmFragment;->globalOpenBcmMode:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 94
    invoke-direct {p0}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;-><init>()V

    .line 120
    sget v0, Lcom/codemao/creativecenter/R$array;->creative_loading_anim:I

    iput v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->creativeLoadingAnimResource:I

    const v0, 0xea60

    .line 124
    iput v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->loadTimeoutMills:I

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenWebViewContentPadding:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    const/16 v0, -0x270f

    .line 144
    iput v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mInitHeight:I

    .line 159
    new-instance v0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-direct {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    const/4 v0, 0x2

    .line 164
    iput v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->pageStyle:I

    .line 165
    sget v0, Lcom/codemao/creativecenter/NewBcmFragment;->globalOpenBcmMode:I

    iput v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmMode:I

    .line 439
    new-instance v0, Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->portraitStyleDispatchTouchListener:Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;

    .line 452
    new-instance v0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->landscapeStyleDispatchTouchListener:Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;

    .line 740
    new-instance v0, Lcom/codemao/creativecenter/NewBcmFragment$loadingTimeoutRunnable$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/NewBcmFragment$loadingTimeoutRunnable$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->loadingTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$addMaterial(Lcom/codemao/creativecenter/NewBcmFragment;ILjava/util/List;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment;->addMaterial(ILjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$cancelCLKeyboard(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->cancelCLKeyboard()V

    return-void
.end method

.method public static final synthetic access$changeLayout(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeLayout()V

    return-void
.end method

.method public static final synthetic access$defaultDispatchTouchEvent(Lcom/codemao/creativecenter/NewBcmFragment;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->defaultDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$delayInit(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->delayInit()V

    return-void
.end method

.method public static final synthetic access$exitHanshu(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->exitHanshu()V

    return-void
.end method

.method public static final synthetic access$getBcmWeb$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativestore/dsbridge/DWebView;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    return-object p0
.end method

.method public static final synthetic access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    return-object p0
.end method

.method public static final synthetic access$getFlRevokeRedo$p(Lcom/codemao/creativecenter/NewBcmFragment;)Landroid/view/View;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getFullScreenWebViewContentPadding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Landroid/graphics/Rect;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenWebViewContentPadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getHasNotch$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hasNotch:Z

    return p0
.end method

.method public static final synthetic access$getKeyboardHeightProvider$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    return-object p0
.end method

.method public static final synthetic access$getMHelper$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/synergic/SynergicHelper;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mHelper:Lcom/codemao/creativecenter/synergic/SynergicHelper;

    return-object p0
.end method

.method public static final synthetic access$getMic$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/utils/CreativeMicUtils;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    return-object p0
.end method

.method public static final synthetic access$getNotchMargin$p(Lcom/codemao/creativecenter/NewBcmFragment;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->notchMargin:I

    return p0
.end method

.method public static final synthetic access$getRedo$p(Lcom/codemao/creativecenter/NewBcmFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->redo:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getRevoke$p(Lcom/codemao/creativecenter/NewBcmFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->revoke:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    return-object p0
.end method

.method public static final synthetic access$getStageDashboardItemVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/StageDashboardItemVM;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    return-object p0
.end method

.method public static final synthetic access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    return-object p0
.end method

.method public static final synthetic access$getWebTopToolsView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmScreenSelectView;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    return-object p0
.end method

.method public static final synthetic access$initCreateUtils(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->initCreateUtils(Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V

    return-void
.end method

.method public static final synthetic access$initLayout(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->initLayout()V

    return-void
.end method

.method public static final synthetic access$initView(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->initView()V

    return-void
.end method

.method public static final synthetic access$initWorkDirection(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->initWorkDirection()V

    return-void
.end method

.method public static final synthetic access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    return p0
.end method

.method public static final synthetic access$isLoadFinish$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isLoadFinish:Z

    return p0
.end method

.method public static final synthetic access$setHanshubarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/vm/HanshubarVM;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    return-void
.end method

.method public static final synthetic access$setHasNotch$p(Lcom/codemao/creativecenter/NewBcmFragment;Z)V
    .registers 2

    .line 94
    iput-boolean p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hasNotch:Z

    return-void
.end method

.method public static final synthetic access$setNotchMargin$p(Lcom/codemao/creativecenter/NewBcmFragment;I)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->notchMargin:I

    return-void
.end method

.method public static final synthetic access$setOtherClicking$p(Lcom/codemao/creativecenter/NewBcmFragment;Z)V
    .registers 2

    .line 94
    iput-boolean p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isOtherClicking:Z

    return-void
.end method

.method public static final synthetic access$setScreenSelectVM$p(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/vm/ScreenSelectVM;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->screenSelectVM:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    return-void
.end method

.method public static final synthetic access$setSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/vm/SidebarVM;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    return-void
.end method

.method public static final synthetic access$startLoadTimeout(Lcom/codemao/creativecenter/NewBcmFragment;J)V
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment;->startLoadTimeout(J)V

    return-void
.end method

.method private final addMaterial(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_c

    .line 1704
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    .line 1708
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment;->updateMaterialUI(ILjava/util/List;)V

    :cond_c
    :goto_c
    return-void
.end method

.method private final afterGuideAction(Ljava/lang/String;)V
    .registers 6

    .line 3223
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->guideView:Lcom/codemao/creativecenter/customview/CreationGuideView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->guideHighlightInfos:[Lcom/codemao/creativecenter/bean/GuideHighlightInfo;

    if-eqz v0, :cond_32

    if-nez v0, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    array-length v0, v0

    if-lez v0, :cond_32

    .line 3224
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->guideHighlightInfos:[Lcom/codemao/creativecenter/bean/GuideHighlightInfo;

    if-nez v0, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_17
    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_32

    aget-object v3, v0, v2

    if-eqz v3, :cond_24

    .line 3225
    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getGudieType()Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    :goto_25
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3226
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->afterDoGuideAction(Ljava/lang/String;)V

    goto :goto_32

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_32
    :goto_32
    return-void
.end method

.method private final calculateSize()V
    .registers 8

    .line 821
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v0, :cond_5

    return-void

    .line 825
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v1, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v1

    .line 824
    invoke-static {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->calculateWebViewSize(Landroid/content/Context;Z)Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v1, :cond_1f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v1

    const-string v2, "stagePositionBean"

    const/4 v3, 0x0

    if-eqz v1, :cond_e6

    .line 830
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getLandscape()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v1

    const-string v2, "stagePositionBean.landscape"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getNormal()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v1

    const-string v4, "stagePositionBean.landscape.normal"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v1

    .line 832
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getLandscape()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getNormal()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v5

    .line 834
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getLandscape()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getNormal()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v4

    .line 835
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v6, :cond_7f

    iget-object v6, v6, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->smallWebViewBottom:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v6, :cond_7f

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 836
    :cond_7f
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v5, :cond_8a

    iget-object v5, v5, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->smallWebViewTop:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v5, :cond_8a

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 837
    :cond_8a
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v4, :cond_97

    iget-object v4, v4, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->line2:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v4, :cond_97

    add-int/lit8 v5, v1, -0x3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 838
    :cond_97
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v4, :cond_a4

    iget-object v4, v4, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->lineDebug:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v4, :cond_a4

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 839
    :cond_a4
    iput v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewTopMargin:F

    .line 840
    iput v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewBottomMargin:F

    const/16 v1, 0xc

    int-to-float v1, v1

    .line 842
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getLandscape()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getFullscreen()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v3

    const-string v4, "stagePositionBean.landscape.fullscreen"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-static {v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v3

    .line 844
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getLandscape()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getFullscreen()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v0

    .line 845
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v0, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenWebViewContentPadding:Landroid/graphics/Rect;

    goto/16 :goto_18f

    .line 853
    :cond_e6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getPortrait()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v1

    const-string v2, "stagePositionBean.portrait"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getNormal()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v1

    const-string v4, "stagePositionBean.portrait.normal"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v1

    .line 854
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v4

    iget-boolean v4, v4, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v4, :cond_113

    const/high16 v4, 0x42a00000  # 80.0f

    .line 855
    invoke-static {v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v4

    goto :goto_119

    :cond_113
    const/high16 v4, 0x42940000  # 74.0f

    .line 857
    invoke-static {v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v4

    .line 860
    :goto_119
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getPortrait()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getFullscreen()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v5

    const-string v6, "stagePositionBean.portrait.fullscreen"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    .line 863
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getPortrait()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getFullscreen()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    .line 866
    sget v2, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v2, v0

    cmpg-float v0, v2, v3

    if-eqz v0, :cond_15a

    .line 868
    iput v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewLeftMargin:F

    .line 869
    iput v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewRightMargin:F

    .line 873
    :cond_15a
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    int-to-float v2, v4

    sub-float/2addr v0, v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewTopMargin:F

    add-float/2addr v0, v2

    .line 874
    iput v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewBottomMargin:F

    .line 875
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_175

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->line2:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_175

    add-int/lit8 v2, v1, -0x3

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 876
    :cond_175
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_182

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->lineDebug:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_182

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_182
    const/high16 v0, 0x41400000  # 12.0f

    .line 877
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v0

    .line 878
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenWebViewContentPadding:Landroid/graphics/Rect;

    :goto_18f
    return-void
.end method

.method private final cancelCLKeyboard()V
    .registers 3

    .line 752
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->clKeyboard:Landroid/widget/FrameLayout;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_f

    const/16 v1, 0x8

    .line 753
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 754
    :cond_f
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isLandscapeStyle()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 755
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    if-eqz v0, :cond_21

    .line 756
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->cancelAllDashBtnSelected()V

    goto :goto_30

    .line 758
    :cond_21
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->cancelAllDashBtnSelected()V

    goto :goto_30

    .line 761
    :cond_29
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->cancelAllDashBtnSelected()V

    :cond_30
    :goto_30
    return-void
.end method

.method private final cancelStageGuideMode()V
    .registers 3

    .line 2880
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getCurrentModel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 2881
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_17

    if-nez v0, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    invoke-virtual {v0, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuides(Landroid/view/View;)V

    :cond_17
    return-void
.end method

.method private final changeKeyboardListener(Z)V
    .registers 3

    if-eqz p1, :cond_10

    .line 1068
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_1d

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->cav:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->setCmListener(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;)V

    goto :goto_1d

    .line 1070
    :cond_10
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_1d

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->cav:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->setCmListener(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private final changeKeyboardPopLocation()V
    .registers 10

    .line 1506
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->cancelCLKeyboard()V

    .line 1507
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_44

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1508
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1509
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v7, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    goto :goto_20

    :cond_1f
    move-object v1, v7

    :goto_20
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1511
    sget v8, Lcom/codemao/creativecenter/R$id;->cl_keyboard:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move v2, v8

    .line 1510
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x2

    const/4 v5, 0x2

    .line 1517
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x4

    .line 1527
    sget v4, Lcom/codemao/creativecenter/R$id;->cfbv_inflated:I

    const/4 v5, 0x3

    .line 1524
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1531
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_40

    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    :cond_40
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    .line 1534
    :cond_44
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_56

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v0, :cond_56

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$changeKeyboardPopLocation$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_56
    return-void
.end method

.method private final changeLayout()V
    .registers 9

    .line 923
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 924
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 925
    :goto_f
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/16 v5, 0x8

    if-eqz v4, :cond_126

    .line 926
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->initFullScreenBottomView()V

    const/4 v4, -0x1

    if-eqz v0, :cond_32

    .line 928
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v6

    iget-boolean v6, v6, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-nez v6, :cond_2a

    .line 929
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v6, :cond_2a

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 931
    :cond_2a
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v6, :cond_7e

    invoke-virtual {v6}, Lcom/codemao/creativestore/presenter/CreateUtils;->landscape()V

    goto :goto_7e

    .line 933
    :cond_32
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v6, :cond_39

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 934
    :cond_39
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v6, :cond_44

    iget-object v6, v6, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz v6, :cond_44

    invoke-virtual {v6, v4}, Lcom/codemao/creativecenter/customview/CreateDebugView;->changeType(I)V

    .line 935
    :cond_44
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v6, :cond_4b

    invoke-virtual {v6}, Lcom/codemao/creativestore/presenter/CreateUtils;->endDebug()V

    :cond_4b
    if-nez v2, :cond_61

    .line 937
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v6, :cond_61

    iget-boolean v7, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hideUploadAlways:Z

    if-nez v7, :cond_5d

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showUploadButton()Z

    move-result v7

    if-eqz v7, :cond_5d

    const/4 v7, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v7, 0x0

    :goto_5e
    invoke-virtual {v6, v7}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->ready(Z)V

    .line 939
    :cond_61
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v6, :cond_6c

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showUploadButton()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->setShowUpload(Z)V

    .line 940
    :cond_6c
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v6, :cond_77

    iget-object v6, v6, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz v6, :cond_77

    invoke-virtual {v6}, Lcom/codemao/creativecenter/customview/CreateDebugView;->hide()V

    .line 941
    :cond_77
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v6, :cond_7e

    invoke-virtual {v6}, Lcom/codemao/creativestore/presenter/CreateUtils;->portrait()V

    .line 944
    :cond_7e
    :goto_7e
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v6, :cond_93

    iget-object v6, v6, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v6, :cond_93

    if-eqz v0, :cond_8e

    iget v7, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    if-nez v7, :cond_8e

    const/4 v7, 0x0

    goto :goto_90

    :cond_8e
    const/16 v7, 0x8

    :goto_90
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 945
    :cond_93
    iget v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->pageStyle:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b4

    .line 946
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->revoke:Landroid/widget/ImageView;

    if-eqz v6, :cond_9f

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 947
    :cond_9f
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->redo:Landroid/widget/ImageView;

    if-eqz v6, :cond_a6

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 948
    :cond_a6
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRevoke:Landroid/widget/ImageView;

    if-eqz v6, :cond_ad

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 949
    :cond_ad
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRedo:Landroid/widget/ImageView;

    if-eqz v6, :cond_b4

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 951
    :cond_b4
    iget v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    if-eq v6, v4, :cond_f7

    if-eqz v6, :cond_e0

    if-eq v6, v1, :cond_be

    goto/16 :goto_126

    .line 953
    :cond_be
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v4

    iget-boolean v4, v4, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-nez v4, :cond_d8

    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->guideView:Lcom/codemao/creativecenter/customview/CreationGuideView;

    if-nez v4, :cond_d8

    .line 954
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRevoke:Landroid/widget/ImageView;

    if-eqz v4, :cond_d1

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 955
    :cond_d1
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRedo:Landroid/widget/ImageView;

    if-eqz v4, :cond_d8

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    :cond_d8
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v4, :cond_126

    invoke-virtual {v4, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->showBlock(Z)V

    goto :goto_126

    .line 960
    :cond_e0
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-nez v1, :cond_126

    .line 961
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->revoke:Landroid/widget/ImageView;

    if-eqz v1, :cond_ef

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 962
    :cond_ef
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->redo:Landroid/widget/ImageView;

    if-eqz v1, :cond_126

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_126

    .line 966
    :cond_f7
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v4, :cond_117

    if-nez v4, :cond_100

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_100
    invoke-virtual {v4}, Lcom/codemao/creativecenter/vm/SidebarVM;->getLastStatus()I

    move-result v4

    if-nez v4, :cond_117

    .line 967
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v4, :cond_117

    iget-object v4, v4, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v4, :cond_117

    if-eqz v0, :cond_112

    const/4 v6, 0x0

    goto :goto_114

    :cond_112
    const/16 v6, 0x8

    :goto_114
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_117
    if-eqz v0, :cond_126

    .line 970
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v4, :cond_126

    iget-object v4, v4, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz v4, :cond_126

    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v4, v6, v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->initData(Lcom/codemao/creativestore/presenter/CreateUtils;Z)V

    :cond_126
    :goto_126
    if-nez v2, :cond_159

    .line 976
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isPageStyle()Z

    move-result v1

    if-eqz v1, :cond_159

    .line 977
    iget v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->notchMargin:I

    if-lez v1, :cond_159

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_159

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_159

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_159

    if-eqz v0, :cond_149

    .line 978
    iget v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->notchMargin:I

    goto :goto_14a

    :cond_149
    const/4 v4, 0x0

    :goto_14a
    if-eqz v0, :cond_14e

    const/4 v6, 0x0

    goto :goto_150

    .line 979
    :cond_14e
    iget v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->notchMargin:I

    :goto_150
    if-eqz v0, :cond_155

    .line 980
    iget v7, p0, Lcom/codemao/creativecenter/NewBcmFragment;->notchMargin:I

    goto :goto_156

    :cond_155
    const/4 v7, 0x0

    .line 977
    :goto_156
    invoke-virtual {v1, v4, v6, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 984
    :cond_159
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v1, :cond_168

    iget-object v1, v1, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandModel:Landroidx/databinding/ObservableField;

    if-eqz v1, :cond_168

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_168
    if-eqz v0, :cond_172

    .line 986
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v1, :cond_179

    invoke-interface {v1, v3}, Lcom/codemao/creativecenter/view/SideBarInterface;->setVisibility(I)V

    goto :goto_179

    .line 988
    :cond_172
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v1, :cond_179

    invoke-interface {v1, v5}, Lcom/codemao/creativecenter/view/SideBarInterface;->setVisibility(I)V

    .line 990
    :cond_179
    :goto_179
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-nez v1, :cond_19c

    .line 991
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v4, 0x0

    if-eqz v1, :cond_191

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    if-eqz v1, :cond_191

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v1

    if-eqz v1, :cond_191

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    goto :goto_192

    :cond_191
    move-object v1, v4

    :goto_192
    instance-of v5, v1, Lcom/codemao/creativestore/dsbridge/DWebView;

    if-nez v5, :cond_197

    goto :goto_198

    :cond_197
    move-object v4, v1

    :goto_198
    check-cast v4, Lcom/codemao/creativestore/dsbridge/DWebView;

    iput-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    .line 993
    :cond_19c
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_1ae

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->topLine:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_1ae

    if-eqz v0, :cond_1a8

    const/4 v4, 0x0

    goto :goto_1ab

    :cond_1a8
    iget v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewTopMargin:F

    float-to-int v4, v4

    :goto_1ab
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 994
    :cond_1ae
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_1bf

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->bottomLine:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_1bf

    if-eqz v0, :cond_1b9

    goto :goto_1bc

    :cond_1b9
    iget v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewBottomMargin:F

    float-to-int v3, v3

    :goto_1bc
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 995
    :cond_1bf
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->notifyStageTopBottomViewVisible()V

    .line 996
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeKeyboardListener(Z)V

    if-eqz v2, :cond_1cb

    .line 998
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->notifyLandscapeConstraintSet()V

    goto :goto_1ce

    .line 1000
    :cond_1cb
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->notifyPortraitConstraintSet(Z)V

    .line 1002
    :goto_1ce
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeKeyboardPopLocation()V

    return-void
.end method

.method private final defaultDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 429
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->getRvRoles()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 430
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    invoke-interface {v2}, Lcom/codemao/creativecenter/view/SideBarInterface;->getWidth()I

    move-result v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 431
    :goto_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 433
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_52

    .line 434
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v2, v5

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_52

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_52

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :cond_52
    :goto_52
    return v1
.end method

.method private final delayInit()V
    .registers 6

    .line 590
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isPageStyle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 591
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/codemao/creativecenter/utils/CreativeStatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 593
    :cond_f
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-eq v0, v1, :cond_3b

    .line 594
    :cond_1e
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->bcmWeb:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_32

    :cond_31
    move-object v0, v3

    :goto_32
    instance-of v1, v0, Lcom/codemao/creativestore/dsbridge/DWebView;

    if-nez v1, :cond_37

    move-object v0, v3

    :cond_37
    check-cast v0, Lcom/codemao/creativestore/dsbridge/DWebView;

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    .line 596
    :cond_3b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_46

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->cav:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->init()V

    .line 597
    :cond_46
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_5b

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz v0, :cond_5b

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v1

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->init(Z)V

    .line 598
    :cond_5b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_6c

    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz v1, :cond_6c

    if-eqz v0, :cond_67

    iget-object v3, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    :cond_67
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v1, v3, v0, p0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->bindBlurView(Landroid/view/View;Lcom/codemao/creativestore/dsbridge/DWebView;Lcom/codemao/creativecenter/view/LocalBcmView;)V

    .line 599
    :cond_6c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_7d

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showUploadButton()Z

    move-result v4

    invoke-interface {v0, v1, v3, v4}, Lcom/codemao/creativecenter/view/SideBarInterface;->setSidebarVM(Lcom/codemao/creativecenter/vm/SidebarVM;Ljava/lang/String;Z)V

    .line 600
    :cond_7d
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_84

    invoke-interface {v0, v2}, Lcom/codemao/creativecenter/view/SideBarInterface;->setScreenSelect(Z)V

    .line 601
    :cond_84
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    if-eqz v0, :cond_94

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->screenSelectVM:Lcom/codemao/creativecenter/vm/ScreenSelectVM;

    if-nez v1, :cond_91

    const-string v3, "screenSelectVM"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_91
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->setScreenSelectVm(Lcom/codemao/creativecenter/vm/ScreenSelectVM;)V

    .line 603
    :cond_94
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->pageStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_fc

    .line 604
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_cd

    .line 605
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v0, :cond_aa

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :cond_aa
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42300000  # 44.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 608
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 607
    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 609
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x43828000  # 261.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 606
    invoke-virtual {p0, v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getLeftTopView(II)Landroid/view/View;

    move-result-object v0

    goto :goto_f5

    .line 612
    :cond_cd
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v0, :cond_d4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :cond_d4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42600000  # 56.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 615
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 614
    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 616
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x435e0000  # 222.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 613
    invoke-virtual {p0, v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->getLeftTopView(II)Landroid/view/View;

    move-result-object v0

    .line 619
    :goto_f5
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v1, :cond_fc

    invoke-interface {v1, v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->addLeftTopView(Landroid/view/View;)V

    .line 623
    :cond_fc
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_10c

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->cav:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    if-eqz v0, :cond_10c

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 637
    :cond_10c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_119

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->chb:Lcom/codemao/creativecenter/customview/CmHanshuBar;

    if-eqz v0, :cond_119

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmHanshuBar;->setSidebarVM(Lcom/codemao/creativecenter/vm/HanshubarVM;)V

    .line 638
    :cond_119
    new-instance v0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final doOtherClick()V
    .registers 5

    const/4 v0, 0x1

    .line 2557
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isOtherClicking:Z

    .line 2558
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$doOtherClick$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$doOtherClick$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method private final exitHanshu()V
    .registers 3

    .line 2355
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/HanshubarVM;->isEditHanshuModel:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_d

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 2356
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_17

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->finishEditHanshu(Z)V

    :cond_17
    return-void
.end method

.method private final initCreateUtils(Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V
    .registers 11

    .line 702
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_default_bg_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st…creative_default_bg_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_default_work_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st…eative_default_work_name)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    new-instance v7, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;

    invoke-direct {v7, v0, v1}, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_48

    .line 706
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 707
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v4, :cond_34

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 709
    :cond_34
    iget-object v6, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-nez v6, :cond_3b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3b
    move-object v3, v0

    move-object v5, p0

    move-object v8, p1

    .line 706
    invoke-direct/range {v3 .. v8}, Lcom/codemao/creativestore/presenter/CreateUtils;-><init>(Lcom/codemao/creativestore/bean/WorksEvent;Lcom/codemao/creativestore/view/NewBcmView;Lcom/codemao/creativestore/dsbridge/DWebView;Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    .line 715
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    :goto_48
    return-void
.end method

.method private final initFullScreenBottomView()V
    .registers 10

    .line 1026
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-nez v0, :cond_b0

    .line 1027
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->cfbv:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_19

    :cond_18
    move-object v0, v1

    :goto_19
    if-eqz v0, :cond_a8

    check-cast v0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    .line 1028
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v2

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->setBindingView(Z)V

    .line 1029
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_35

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->setStageDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V

    .line 1030
    :cond_35
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showUploadButton()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->setShowUpload(Z)V

    .line 1031
    :cond_40
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v3, :cond_61

    .line 1032
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 1034
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_4e

    iget-object v2, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->cav:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    move-object v6, v2

    goto :goto_4f

    :cond_4e
    move-object v6, v1

    :goto_4f
    if-eqz v0, :cond_55

    .line 1035
    iget-object v2, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->ivArrowDown:Landroid/widget/ImageView;

    move-object v7, v2

    goto :goto_56

    :cond_55
    move-object v7, v1

    :goto_56
    if-eqz v0, :cond_5c

    .line 1036
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->clKeyboard:Landroid/widget/FrameLayout;

    move-object v8, v0

    goto :goto_5d

    :cond_5c
    move-object v8, v1

    :goto_5d
    move-object v5, p0

    .line 1031
    invoke-virtual/range {v3 .. v8}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->bindData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 1038
    :cond_61
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_6a

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1041
    :cond_6a
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b0

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_b0

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->isBindData()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 1042
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v2, :cond_a0

    .line 1043
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 1045
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_8f

    iget-object v4, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->cav:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    move-object v5, v4

    goto :goto_90

    :cond_8f
    move-object v5, v1

    :goto_90
    if-eqz v0, :cond_96

    .line 1046
    iget-object v4, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->ivArrowDown:Landroid/widget/ImageView;

    move-object v6, v4

    goto :goto_97

    :cond_96
    move-object v6, v1

    :goto_97
    if-eqz v0, :cond_9b

    .line 1047
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->clKeyboard:Landroid/widget/FrameLayout;

    :cond_9b
    move-object v7, v1

    move-object v4, p0

    .line 1042
    invoke-virtual/range {v2 .. v7}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->bindData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 1049
    :cond_a0
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->ready()V

    goto :goto_b0

    .line 1027
    :cond_a8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.codemao.creativecenter.customview.CmFullScreenBottomView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b0
    :goto_b0
    return-void
.end method

.method private final initLayout()V
    .registers 4

    .line 320
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 322
    :cond_12
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 323
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_19

    move v1, v2

    .line 326
    :cond_19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 328
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_43

    .line 329
    :cond_35
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 328
    :cond_43
    sput v1, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    .line 332
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eqz v1, :cond_63

    .line 333
    :cond_55
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 332
    :cond_63
    sput v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    .line 336
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isPageStyle()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 337
    invoke-static {}, Lcom/codemao/creativecenter/utils/NotchScreenManager;->getInstance()Lcom/codemao/creativecenter/utils/NotchScreenManager;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 339
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/utils/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;)V

    .line 353
    :cond_7b
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->calculateSize()V

    return-void
.end method

.method private final initView()V
    .registers 5

    .line 362
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->keyboardGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v1, :cond_13

    const/high16 v1, 0x42f00000  # 120.0f

    goto :goto_15

    :cond_13
    const/high16 v1, 0x42ac0000  # 86.0f

    :goto_15
    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 363
    :cond_1c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->ivDownloadCloudBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$initView$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initView$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v1, :cond_3f

    const/high16 v1, 0x42900000  # 72.0f

    goto :goto_41

    :cond_3f
    const/high16 v1, 0x42800000  # 64.0f

    .line 364
    :goto_41
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 368
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_50

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->leftGuideLine:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_50

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 369
    :cond_50
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isLandscapeStyle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_bb

    .line 370
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_66

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->webBottomToolsViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-eq v0, v1, :cond_7e

    .line 372
    :cond_66
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_79

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->webBottomToolsViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_7a

    :cond_79
    move-object v0, v2

    :goto_7a
    check-cast v0, Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    .line 374
    :cond_7e
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_8c

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->webTopToolsViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-eq v0, v1, :cond_a4

    .line 376
    :cond_8c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_9f

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->webTopToolsViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_a0

    :cond_9f
    move-object v0, v2

    :goto_a0
    check-cast v0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    .line 378
    :cond_a4
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_ad

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setStageDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V

    .line 379
    :cond_ad
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_c8

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v0, :cond_c8

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->landscapeStyleDispatchTouchListener:Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/customview/CreationRootLayout;->setListener(Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;)V

    goto :goto_c8

    .line 381
    :cond_bb
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_c8

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v0, :cond_c8

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->portraitStyleDispatchTouchListener:Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/customview/CreationRootLayout;->setListener(Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;)V

    .line 383
    :cond_c8
    :goto_c8
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_d8

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->clKeyboard:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d8

    new-instance v3, Lcom/codemao/creativecenter/NewBcmFragment$initView$2;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initView$2;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    :cond_d8
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->pageStyle:I

    if-ne v0, v1, :cond_102

    .line 386
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_ea

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->leftViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_ea

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-eq v0, v1, :cond_1c5

    .line 387
    :cond_ea
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_fc

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->leftViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_fc

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_fc

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    :cond_fc
    check-cast v2, Lcom/codemao/creativecenter/view/SideBarInterface;

    iput-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    goto/16 :goto_1c5

    .line 390
    :cond_102
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_110

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->leftFragmentViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_110

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-eq v0, v1, :cond_128

    .line 392
    :cond_110
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_123

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->leftFragmentViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_123

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_123

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_124

    :cond_123
    move-object v0, v2

    :goto_124
    check-cast v0, Lcom/codemao/creativecenter/view/SideBarInterface;

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    .line 394
    :cond_128
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_136

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flRevokeRedoViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_136

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-eq v0, v1, :cond_156

    .line 395
    :cond_136
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_149

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flRevokeRedoViewStub:Landroidx/databinding/ViewStubProxy;

    if-eqz v0, :cond_149

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_149

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_14a

    :cond_149
    move-object v0, v2

    :goto_14a
    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v0, :cond_156

    .line 396
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$initView$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initView$3;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 412
    :cond_156
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v0, :cond_163

    sget v1, Lcom/codemao/creativecenter/R$id;->block_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_164

    :cond_163
    move-object v0, v2

    :goto_164
    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRevoke:Landroid/widget/ImageView;

    .line 413
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v0, :cond_173

    sget v1, Lcom/codemao/creativecenter/R$id;->block_restore:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_174

    :cond_173
    move-object v0, v2

    :goto_174
    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRedo:Landroid/widget/ImageView;

    .line 414
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v0, :cond_183

    sget v1, Lcom/codemao/creativecenter/R$id;->back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_184

    :cond_183
    move-object v0, v2

    :goto_184
    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->revoke:Landroid/widget/ImageView;

    .line 415
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->flRevokeRedo:Landroid/view/View;

    if-eqz v0, :cond_193

    sget v1, Lcom/codemao/creativecenter/R$id;->restore:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    :cond_193
    iput-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->redo:Landroid/widget/ImageView;

    .line 417
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRedo:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a1

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$initView$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initView$4;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    :cond_1a1
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRevoke:Landroid/widget/ImageView;

    if-eqz v0, :cond_1ad

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$initView$5;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initView$5;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    :cond_1ad
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->revoke:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b9

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$initView$6;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initView$6;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    :cond_1b9
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->redo:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c5

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$initView$7;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initView$7;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_1c5
    :goto_1c5
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_1d5

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->bluetoothClosePageIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d5

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$initView$8;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$initView$8;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d5
    return-void
.end method

.method private final initWorkDirection()V
    .registers 11

    .line 305
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_41

    .line 307
    iget-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 308
    iget-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    const-string v2, "it.srcPath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, "."

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_34

    .line 310
    :cond_32
    iget-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    .line 312
    :goto_34
    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getMetaFromPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 314
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MetaVO;->isLandscape()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    :cond_41
    return-void
.end method

.method private final isLandscapeStyle()Z
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private final isPageStyle()Z
    .registers 3

    .line 357
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->pageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private final isPortraitStyle()Z
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private final notifyLandscapeConstraintSet()V
    .registers 9

    .line 1006
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1007
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_36

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v0, :cond_36

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1009
    sget v7, Lcom/codemao/creativecenter/R$id;->ll_current_actor:I

    const/4 v2, 0x1

    .line 1011
    sget v3, Lcom/codemao/creativecenter/R$id;->left_guide_line:I

    const/4 v4, 0x1

    .line 1013
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenWebViewContentPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, v6

    move v1, v7

    .line 1008
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x3

    .line 1018
    sget v3, Lcom/codemao/creativecenter/R$id;->top_line:I

    const/4 v4, 0x3

    .line 1020
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenWebViewContentPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object v0, v6

    .line 1015
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1022
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_36
    return-void
.end method

.method private final notifyPortraitConstraintSet(Z)V
    .registers 12

    .line 1075
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1076
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    goto :goto_e

    :cond_d
    move-object v0, v7

    :goto_e
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1078
    sget v0, Lcom/codemao/creativecenter/R$id;->cfbv_inflated:I

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1077
    invoke-virtual {v6, v0, v1, v8, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v1, 0x2

    .line 1083
    invoke-virtual {v6, v0, v1, v8, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1092
    sget v1, Lcom/codemao/creativecenter/R$id;->bottom_line:I

    const/4 v9, 0x3

    const/4 v2, 0x4

    .line 1089
    invoke-virtual {v6, v0, v9, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1095
    invoke-virtual {v6, v0, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 v3, -0x2

    .line 1096
    invoke-virtual {v6, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    if-eqz p1, :cond_4c

    .line 1099
    sget p1, Lcom/codemao/creativecenter/R$id;->bcm_web_inflated:I

    .line 1098
    invoke-virtual {v6, p1, v2, v8, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v2, 0x1

    .line 1107
    sget v3, Lcom/codemao/creativecenter/R$id;->left_guide_line:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    .line 1104
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1111
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1121
    sget v0, Lcom/codemao/creativecenter/R$id;->top_line:I

    .line 1118
    invoke-virtual {v6, p1, v9, v0, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1124
    invoke-virtual {v6, p1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1125
    invoke-virtual {v6, p1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    goto :goto_b6

    .line 1128
    :cond_4c
    sget p1, Lcom/codemao/creativecenter/R$id;->bcm_web_inflated:I

    .line 1127
    invoke-virtual {v6, p1, v2, v1, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1138
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewLeftMargin:F

    float-to-int v5, v0

    move-object v0, v6

    move v1, p1

    .line 1133
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x2

    const/4 v4, 0x2

    .line 1145
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewRightMargin:F

    float-to-int v5, v0

    move-object v0, v6

    .line 1140
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x3

    const/4 v4, 0x3

    .line 1152
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewTopMargin:F

    float-to-int v5, v0

    move-object v0, v6

    .line 1147
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1155
    invoke-virtual {v6, p1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1156
    invoke-virtual {v6, p1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1158
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_97

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->stagePositionBean:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getPortrait()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getFullscreen()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1159
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1160
    invoke-virtual {v6, p1, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 1164
    :cond_97
    sget p1, Lcom/codemao/creativecenter/R$id;->ll_current_actor:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1168
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenWebViewContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webViewLeftMargin:F

    float-to-int v1, v1

    add-int v5, v0, v1

    move-object v0, v6

    move v1, p1

    .line 1163
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v2, 0x3

    .line 1173
    sget v3, Lcom/codemao/creativecenter/R$id;->top_line:I

    const/4 v4, 0x3

    .line 1175
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenWebViewContentPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object v0, v6

    .line 1170
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1178
    :goto_b6
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_bc

    iget-object v7, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    :cond_bc
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private final notifyStageTopBottomViewVisible()V
    .registers 3

    .line 1055
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isLandscapeStyle()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1056
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    .line 1057
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1058
    :cond_17
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2f

    .line 1060
    :cond_1f
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    const/16 v1, 0x8

    if-eqz v0, :cond_28

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1061
    :cond_28
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private final startLoadTimeout(J)V
    .registers 5

    .line 747
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->loadingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method private final statusChanged(IZ)V
    .registers 8

    .line 1201
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p2, :cond_c

    if-eqz v0, :cond_c

    .line 1203
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 1205
    :cond_c
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    if-eq p1, v0, :cond_13

    .line 1206
    invoke-virtual {p0, v0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->onStatusChange(II)V

    .line 1208
    :cond_13
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    if-eq p1, v1, :cond_1d

    .line 1209
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onStatusChangeFromRun()V

    .line 1211
    :cond_1d
    iput p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    .line 1213
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->pageStyle:I

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v0, v2, :cond_42

    .line 1214
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->revoke:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1215
    :cond_2d
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->redo:Landroid/widget/ImageView;

    if-eqz v0, :cond_34

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1216
    :cond_34
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRedo:Landroid/widget/ImageView;

    if-eqz v0, :cond_3b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1217
    :cond_3b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRevoke:Landroid/widget/ImageView;

    if-eqz v0, :cond_42

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_42
    const/4 v0, 0x0

    if-eq p1, v1, :cond_1af

    const/4 v1, 0x1

    if-eqz p1, :cond_134

    const/4 v4, 0x0

    if-eq p1, v1, :cond_81

    if-eq p1, v2, :cond_4f

    goto/16 :goto_1fb

    .line 1222
    :cond_4f
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hasVideo()Z

    move-result p1

    if-eqz p1, :cond_66

    iget-boolean p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->videoInit:Z

    if-nez p1, :cond_66

    .line 1223
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_5f

    iget-object v4, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vsVideo:Landroid/widget/FrameLayout;

    :cond_5f
    sget p1, Lcom/codemao/creativecenter/R$id;->vs_video:I

    invoke-virtual {p0, v4, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->initVideoView(Landroid/widget/FrameLayout;I)V

    .line 1224
    iput-boolean v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->videoInit:Z

    .line 1226
    :cond_66
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_71

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vsVideo:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_71

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1227
    :cond_71
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showVideo()V

    .line 1228
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_1fb

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz p1, :cond_1fb

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->hide()V

    goto/16 :goto_1fb

    .line 1231
    :cond_81
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->guideView:Lcom/codemao/creativecenter/customview/CreationGuideView;

    if-nez p1, :cond_9b

    .line 1232
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRevoke:Landroid/widget/ImageView;

    if-eqz p1, :cond_94

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1233
    :cond_94
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRedo:Landroid/widget/ImageView;

    if-eqz p1, :cond_9b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1235
    :cond_9b
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_a6

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vsVideo:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a6

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1236
    :cond_a6
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideVideo()V

    .line 1237
    iget-boolean p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    if-nez p1, :cond_b4

    .line 1238
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_b4

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->showBlock(Z)V

    :cond_b4
    if-nez p2, :cond_bd

    .line 1241
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_bd

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->stop()V

    :cond_bd
    const-string p1, "change_block"

    .line 1243
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->afterGuideAction(Ljava/lang/String;)V

    .line 1244
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_cd

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz p1, :cond_cd

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1246
    :cond_cd
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    if-eqz p1, :cond_d4

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1247
    :cond_d4
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_db

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1248
    :cond_db
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_e6

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz p1, :cond_e6

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->hide()V

    .line 1249
    :cond_e6
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_12f

    if-eqz p1, :cond_f0

    .line 1250
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    :cond_f0
    if-eqz v4, :cond_12f

    .line 1251
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz p1, :cond_12f

    .line 1252
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez p2, :cond_fd

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_fd
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v0, :cond_104

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_104
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    if-nez v0, :cond_10d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10d
    const-string v1, "createUtils!!.currentActor!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1253
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v0, :cond_121

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_121
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    if-nez v0, :cond_12a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12a
    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    .line 1251
    invoke-interface {p1, p2, v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->setCurrentAcotr(Ljava/lang/String;Z)V

    .line 1257
    :cond_12f
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->cancelStageGuideMode()V

    goto/16 :goto_1fb

    .line 1260
    :cond_134
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-nez p1, :cond_14a

    .line 1261
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->revoke:Landroid/widget/ImageView;

    if-eqz p1, :cond_143

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1262
    :cond_143
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->redo:Landroid/widget/ImageView;

    if-eqz p1, :cond_14a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1265
    :cond_14a
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_155

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vsVideo:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_155

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1266
    :cond_155
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideVideo()V

    .line 1267
    iget-boolean p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    if-nez p1, :cond_180

    .line 1268
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_167

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz p1, :cond_167

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->hide()V

    .line 1269
    :cond_167
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_172

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz p1, :cond_172

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1271
    :cond_172
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    if-eqz p1, :cond_179

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1273
    :cond_179
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_180

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1275
    :cond_180
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    if-eqz p1, :cond_187

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->setEnable(Z)V

    .line 1276
    :cond_187
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_19e

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v2, :cond_19a

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    if-eqz v2, :cond_19a

    iget-boolean v2, v2, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-nez v2, :cond_19a

    goto :goto_19b

    :cond_19a
    const/4 v1, 0x0

    :goto_19b
    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setDashViewsEnable(Z)V

    :cond_19e
    if-nez p2, :cond_1a7

    .line 1278
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_1a7

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->stop()V

    .line 1280
    :cond_1a7
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_1fb

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->showBlock(Z)V

    goto :goto_1fb

    .line 1283
    :cond_1af
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_1ba

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vsVideo:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1ba

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1284
    :cond_1ba
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideVideo()V

    .line 1285
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_1c4

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->play()V

    .line 1286
    :cond_1c4
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_1cb

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->showBlock(Z)V

    .line 1287
    :cond_1cb
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    if-eqz p1, :cond_1d2

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->setEnable(Z)V

    .line 1288
    :cond_1d2
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_1d9

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setDashViewsEnable(Z)V

    .line 1289
    :cond_1d9
    iget-boolean p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    if-nez p1, :cond_1f8

    .line 1290
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_1ea

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz p1, :cond_1ea

    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1, p2, v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->initData(Lcom/codemao/creativestore/presenter/CreateUtils;Z)V

    .line 1291
    :cond_1ea
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->webTopToolsView:Lcom/codemao/creativecenter/customview/CmScreenSelectView;

    if-eqz p1, :cond_1f1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1292
    :cond_1f1
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_1f8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1294
    :cond_1f8
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->cancelStageGuideMode()V

    .line 1297
    :cond_1fb
    :goto_1fb
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showUploader()V

    return-void
.end method

.method private final updateMaterialUI(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x18c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_86

    const/16 v0, 0x18d

    if-eq p1, v0, :cond_67

    const/16 v0, 0x198e

    if-eq p1, v0, :cond_5a

    const/16 v0, 0x198f

    if-eq p1, v0, :cond_4f

    const/16 v0, 0x1992

    if-eq p1, v0, :cond_42

    const/16 v0, 0x1995

    if-eq p1, v0, :cond_37

    const/16 v0, 0x1999

    if-eq p1, v0, :cond_1f

    goto/16 :goto_ee

    .line 1783
    :cond_1f
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    if-eqz p1, :cond_ee

    if-eqz p1, :cond_28

    .line 1784
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->addSounds(Ljava/util/List;)V

    .line 1786
    :cond_28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1787
    sget p2, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_upload_success:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1785
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_ee

    .line 1780
    :cond_37
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    if-eqz p1, :cond_ee

    if-eqz p1, :cond_ee

    .line 1781
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->addSounds(Ljava/util/List;)V

    goto/16 :goto_ee

    .line 1777
    :cond_42
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_ee

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz p1, :cond_ee

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->updateBackgroundStyle(Ljava/util/List;)V

    goto/16 :goto_ee

    .line 1771
    :cond_4f
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_ee

    if-eqz p1, :cond_ee

    .line 1772
    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->addActors(Ljava/util/List;)V

    goto/16 :goto_ee

    .line 1774
    :cond_5a
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_ee

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz p1, :cond_ee

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->updateActorStyle(Ljava/util/List;)V

    goto/16 :goto_ee

    .line 1791
    :cond_67
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    if-eqz p1, :cond_76

    if-eqz p1, :cond_76

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->updateSelectDate(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 1792
    :cond_76
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_ee

    if-eqz p1, :cond_ee

    .line 1793
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->updateMidi(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    goto :goto_ee

    .line 1797
    :cond_86
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    if-eqz p1, :cond_90

    if-eqz p1, :cond_99

    .line 1798
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->addSounds(Ljava/util/List;)V

    goto :goto_99

    .line 1799
    :cond_90
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_99

    if-eqz p1, :cond_99

    .line 1800
    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->addSounds(Ljava/util/List;)I

    .line 1802
    :cond_99
    :goto_99
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->convertMidiSound()Lcom/codemao/creativestore/bean/SoundVO;

    move-result-object p1

    .line 1803
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const-string v0, "soundVO"

    if-eqz p2, :cond_db

    .line 1805
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v1, :cond_b5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b5
    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/record/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mid"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1806
    invoke-static {p2}, Lcom/codemao/creativestore/utils/CreativeCommonUtil;->fileToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/SoundVO;->setMidi(Ljava/lang/String;)V

    .line 1808
    :cond_db
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz p2, :cond_ee

    if-eqz p2, :cond_eb

    .line 1809
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_eb
    const/4 p1, 0x0

    .line 1810
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    :cond_ee
    :goto_ee
    return-void
.end method

.method private final visibleLLCurrentActorPopTitle(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1426
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->tvCutActorName:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_20
    move-object p1, v1

    .line 1429
    :goto_21
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_27

    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->ivCutActorHeader:Landroid/widget/ImageView;

    .line 1427
    :cond_27
    invoke-static {p1, v1}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1431
    iget-boolean p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    if-eqz p1, :cond_3a

    .line 1432
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_3a

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->llCurrentActor:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3a
    return-void
.end method


# virtual methods
.method public actorAddInfo(I)V
    .registers 3

    .line 2868
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->getAdapter()Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_11
    return-void
.end method

.method public actorScrollTo(I)V
    .registers 6

    .line 2891
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->getAdapter()Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getLastActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 2892
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->actorScrollto(IZ)V

    .line 2893
    :cond_24
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_7c

    .line 2895
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_48

    .line 2896
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v2, :cond_3b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3b
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2897
    iget-boolean v3, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    .line 2895
    invoke-interface {v0, v2, v3}, Lcom/codemao/creativecenter/view/SideBarInterface;->setCurrentAcotr(Ljava/lang/String;Z)V

    .line 2899
    :cond_48
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_4f

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeCurrentSelectActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 2900
    :cond_4f
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_56

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeCurrentSelectActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 2901
    :cond_56
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isLandscapeStyle()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7c

    .line 2902
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_68

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->setDashViewsEnable(Z)V

    .line 2903
    :cond_68
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 2904
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_7c
    return-void
.end method

.method public addBroadcaset(Lcom/codemao/creativestore/bean/AddBroadcastMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddBroadcastMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addBroadcastMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 2816
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 2819
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 2820
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2821
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2822
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2824
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    .line 2825
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_39

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2826
    :cond_39
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 2824
    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2828
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddBroadcastMsg;->getNames()Ljava/util/HashSet;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setPools(Ljava/util/HashSet;Ljava/util/HashSet;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2829
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/creativecenter/NewBcmFragment$addBroadcaset$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2823
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2842
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_5a
    return-void
.end method

.method public addCloudVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addVariableMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 2709
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 2712
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 2713
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2714
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2715
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2717
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    .line 2718
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_39

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2719
    :cond_39
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    .line 2717
    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2722
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getCloud_info()Lcom/codemao/creativestore/bean/CloudInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setCloudInfo(Lcom/codemao/creativestore/bean/CloudInfo;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object v1

    .line 2723
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getGlobal()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getEntity()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setPools(Ljava/util/HashSet;Ljava/util/HashSet;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2724
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$addCloudVarible$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/creativecenter/NewBcmFragment$addCloudVarible$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2716
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2742
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_65
    return-void
.end method

.method public addList(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addVariableMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 2621
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 2624
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 2625
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2626
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2627
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2629
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    .line 2630
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_39

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2631
    :cond_39
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 2629
    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2634
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v3, 0x0

    if-eqz v2, :cond_56

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    if-eqz v4, :cond_52

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v3

    :cond_52
    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_56
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setCurActorUrl(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object v1

    .line 2635
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getGlobal()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getEntity()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setPools(Ljava/util/HashSet;Ljava/util/HashSet;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2636
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$addList$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/creativecenter/NewBcmFragment$addList$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2628
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2656
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_76
    return-void
.end method

.method public addMidi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2505
    sget-object v1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    .line 2506
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    const-string v0, "activity!!"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1b

    .line 2507
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1b
    if-nez p3, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getMidiMode()I

    move-result v5

    if-nez p1, :cond_29

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_29
    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    .line 2505
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/CMMidiHelper$Companion;->startCreateEditor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2510
    :cond_2f
    invoke-virtual {p0, p4}, Lcom/codemao/creativecenter/NewBcmFragment;->setCompletionHandler(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public addVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AddVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addVariableMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 2578
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 2581
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 2582
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2583
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2584
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2586
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    .line 2587
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_39

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2588
    :cond_39
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 2586
    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2591
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v3, 0x0

    if-eqz v2, :cond_56

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    if-eqz v4, :cond_52

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v3

    :cond_52
    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_56
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setCurActorUrl(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object v1

    .line 2592
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getGlobal()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getEntity()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setPools(Ljava/util/HashSet;Ljava/util/HashSet;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2593
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$addVarible$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/creativecenter/NewBcmFragment$addVarible$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2585
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2613
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_76
    return-void
.end method

.method public annotateBlock(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AnnotateBlockMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "annotateBlockMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2788
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 2789
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2790
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2791
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2793
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    .line 2794
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_30

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2795
    :cond_30
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    .line 2793
    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2797
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->setDiaplayName(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    move-result-object p1

    .line 2798
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$annotateBlock$1;

    invoke-direct {v1, p2}, Lcom/codemao/creativecenter/NewBcmFragment$annotateBlock$1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    move-result-object p1

    .line 2792
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2808
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_51
    return-void
.end method

.method public blockUndoAndRedoStatus(ZZ)V
    .registers 5

    .line 2933
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRevoke:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back:I

    goto :goto_b

    :cond_9
    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back_unable:I

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2934
    :cond_e
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->blockRedo:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_17

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert:I

    goto :goto_19

    :cond_17
    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert_unable:I

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2935
    :cond_1c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz v0, :cond_5c

    if-nez v0, :cond_25

    .line 2936
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_25
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/HanshubarVM;->isEditHanshuModel:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_30

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_30
    const-string v1, "hanshubarVM!!.isEditHanshuModel.get()!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2937
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/HanshubarVM;->canRedo:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_4c

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 2938
    :cond_4c
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz p2, :cond_5b

    iget-object p2, p2, Lcom/codemao/creativecenter/vm/HanshubarVM;->canRevert:Landroidx/databinding/ObservableField;

    if-eqz p2, :cond_5b

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_5b
    return-void

    .line 2942
    :cond_5c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_6b

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->blockCanRedo:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_6b

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 2943
    :cond_6b
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p2, :cond_7a

    iget-object p2, p2, Lcom/codemao/creativecenter/vm/SidebarVM;->blockCanUndo:Landroidx/databinding/ObservableField;

    if-eqz p2, :cond_7a

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_7a
    return-void
.end method

.method public bluetoothConnectSuccess()V
    .registers 3

    .line 3408
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    const-string v1, "bluetooth_act.mp3"

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;->playAssetMusic(Ljava/lang/String;)V

    return-void
.end method

.method public bluetoothDisconnect()V
    .registers 3

    .line 3399
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    const-string v1, "bluetooth_dis.mp3"

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;->playAssetMusic(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$bluetoothDisconnect$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$bluetoothDisconnect$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method public changeBcm(Lcom/codemao/creativestore/bean/WorksEvent;)V
    .registers 3

    const-string v0, "worksEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2385
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBcm(Lcom/codemao/creativestore/bean/WorksEvent;)V

    :cond_c
    return-void
.end method

.method public changeScreenOrientation()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1614
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v0, :cond_5

    return-void

    .line 1617
    :cond_5
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->calculateSize()V

    .line 1618
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7a

    .line 1619
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_74

    const/16 v4, 0x8

    if-eqz v0, :cond_52

    .line 1620
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_52

    .line 1621
    iput-boolean v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    .line 1622
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1623
    :cond_2f
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_3c

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeModel(I)V

    .line 1624
    :cond_3c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v0

    if-ne v0, v1, :cond_76

    .line 1625
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->visibleLLCurrentActorPopTitle(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_76

    .line 1628
    :cond_52
    iput-boolean v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    .line 1629
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_5b

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1630
    :cond_5b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeModel(I)V

    .line 1631
    :cond_68
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_76

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->llCurrentActor:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_76

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_76

    .line 1634
    :cond_74
    iput-boolean v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    .line 1636
    :cond_76
    :goto_76
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeLayout()V

    goto :goto_a4

    .line 1639
    :cond_7a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "resources"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_97

    .line 1643
    iput-boolean v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    .line 1644
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a4

    :cond_97
    if-ne v0, v2, :cond_a4

    .line 1647
    iput-boolean v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    .line 1648
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public changeToBlock()V
    .registers 3

    .line 2514
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    .line 2515
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/vm/SidebarVM;->changeStatus(I)V

    .line 2516
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_13

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->changeSWStatus(I)V

    :cond_13
    return-void
.end method

.method public changeToVideo()V
    .registers 3

    .line 2521
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 2522
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/vm/SidebarVM;->changeStatus(I)V

    .line 2523
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_13

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->changeSWStatus(I)V

    :cond_13
    return-void
.end method

.method public checkCanClickVideo()Z
    .registers 2

    .line 1187
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isOtherClicking:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1190
    :cond_6
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->doOtherClick()V

    const/4 v0, 0x1

    return v0
.end method

.method public clickBlcokRestore()V
    .registers 2

    .line 912
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 913
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->redoBlock()V

    :cond_e
    return-void
.end method

.method public clickBlockRevoke()V
    .registers 2

    .line 917
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 918
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->revokeBlock()V

    :cond_e
    return-void
.end method

.method public clickBottomUpload(Landroid/view/View;)V
    .registers 5

    .line 1338
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "运行状态-全屏"

    const-string/jumbo v1, "全屏运行-发布"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1339
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->runOrStop()V

    const/4 p1, 0x2

    .line 1340
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->onUploadButtonClick(I)V

    return-void
.end method

.method public clickHanshuRestore()V
    .registers 2

    .line 2335
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 2336
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->redoBlock()V

    :cond_e
    return-void
.end method

.method public clickHanshuRevoke()V
    .registers 2

    .line 2330
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 2331
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->revokeBlock()V

    :cond_e
    return-void
.end method

.method public clickHead()V
    .registers 5

    .line 1362
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 1363
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->isShowSlectcor()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 1364
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->hideSlectcor()V

    .line 1365
    :cond_19
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_54

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->hide()V

    goto :goto_54

    .line 1367
    :cond_25
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "积木编辑"

    const-string/jumbo v3, "积木-切换角色"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1368
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->showSlectcor()V

    .line 1369
    :cond_3a
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_49

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->initData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/dsbridge/DWebView;)V

    .line 1370
    :cond_49
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_54

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->show()V

    :cond_54
    :goto_54
    return-void
.end method

.method public clickMenu()V
    .registers 5

    .line 884
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isOtherClicking:Z

    if-eqz v0, :cond_5

    return-void

    .line 887
    :cond_5
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->doOtherClick()V

    .line 888
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 889
    :cond_f
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    if-nez v0, :cond_19

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_19
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_24

    goto :goto_39

    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_39

    .line 890
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "积木编辑"

    const-string/jumbo v3, "积木-菜单"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_46

    .line 892
    :cond_39
    :goto_39
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "舞台编辑-横屏"

    const-string/jumbo v3, "舞台-菜单"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 894
    :goto_46
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onTopMenuClick()V

    return-void
.end method

.method public clickRestore()V
    .registers 5

    .line 906
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台编辑-横屏"

    const-string/jumbo v2, "舞台-重做"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 907
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 908
    :cond_15
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->redo()V

    :cond_1c
    return-void
.end method

.method public clickRevoke()V
    .registers 5

    .line 899
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台编辑-横屏"

    const-string/jumbo v2, "舞台-撤销"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 900
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideBlockError()V

    .line 901
    :cond_15
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->revoke()V

    :cond_1c
    return-void
.end method

.method public clickRunOrStop()V
    .registers 5

    .line 796
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_7d

    .line 797
    iget-object v1, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_69

    iget-object v1, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-ltz v1, :cond_69

    const-string v1, "run"

    .line 798
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->afterGuideAction(Ljava/lang/String;)V

    .line 799
    iget-object v1, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v1, :cond_36

    goto :goto_4a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4a

    .line 800
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "积木编辑"

    const-string/jumbo v3, "积木-运行"

    invoke-virtual {v0, v1, v3, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_76

    .line 801
    :cond_4a
    :goto_4a
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_55

    goto :goto_76

    :cond_55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_76

    .line 802
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台编辑-横屏"

    const-string/jumbo v3, "舞台-运行"

    invoke-virtual {v0, v1, v3, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_76

    .line 805
    :cond_69
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "运行状态"

    const-string/jumbo v3, "运行-停止"

    invoke-virtual {v0, v1, v3, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 807
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/SidebarVM;->runOrStop()V

    :cond_7d
    return-void
.end method

.method public clickScreen()V
    .registers 6

    .line 1345
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "舞台编辑-横屏"

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->isScreenEditShow()Z

    move-result v0

    if-ne v0, v1, :cond_37

    .line 1346
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台-屏幕关"

    invoke-virtual {v0, v3, v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1347
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isPortraitStyle()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1348
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->hideSceneEdit()V

    .line 1349
    :cond_2e
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_59

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->setScreenSelect(Z)V

    goto :goto_59

    .line 1352
    :cond_37
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v4, "舞台-屏幕开"

    invoke-virtual {v0, v3, v4, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1353
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->isPortraitStyle()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1354
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_52

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->showSceneEdit()V

    .line 1355
    :cond_52
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_59

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->setScreenSelect(Z)V

    :cond_59
    :goto_59
    return-void
.end method

.method public clickUpload(Landroid/view/View;)V
    .registers 5

    .line 1325
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "运行状态"

    const-string/jumbo v1, "运行-发布"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1326
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->runOrStop()V

    const/4 p1, 0x1

    .line 1327
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->onUploadButtonClick(I)V

    return-void
.end method

.method public closeAutoSave()V
    .registers 2

    const/4 v0, 0x1

    .line 2446
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->closeAuto:Z

    return-void
.end method

.method public completeBlockGuide(Ljava/lang/String;)V
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3216
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->afterGuideAction(Ljava/lang/String;)V

    return-void
.end method

.method public copyAndImportAudio(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
    .registers 5

    const-string v0, "audioBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1936
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    if-eqz v0, :cond_63

    if-nez v0, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_63

    .line 1943
    :cond_15
    iget-object v0, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1945
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1946
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_format_error:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1944
    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1950
    :cond_2b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v0, :cond_32

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_32
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getExitRecordSoundNameArray()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_49

    .line 1952
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1953
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_nemo_over_max_record:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1951
    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 1957
    :cond_49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 1959
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v1, :cond_56

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_56
    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v1

    .line 1960
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$copyAndImportAudio$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment$copyAndImportAudio$$inlined$let$lambda$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    .line 1958
    invoke-static {p1, v1, v0, v2}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->moveFileToPath(Lcom/codemao/creativecenter/bean/MaterialUploadBean;Ljava/lang/String;Landroid/content/Context;Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;)V

    :cond_62
    return-void

    .line 1938
    :cond_63
    :goto_63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1939
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1937
    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public deleteActor(I)V
    .registers 3

    .line 2847
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->getAdapter()Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 2848
    :cond_11
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->notifyActorRemove()V

    .line 2850
    :cond_18
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->notifyActorRemove()V

    :cond_1f
    return-void
.end method

.method public deleteWork()V
    .registers 2

    .line 2360
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteWork()V

    :cond_7
    return-void
.end method

.method public downloadAndLoadNewBcmWork(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 15

    const-string v0, "bcmUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3466
    new-instance v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v5}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 3467
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 3468
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v1, :cond_15

    return-void

    :cond_15
    if-nez v1, :cond_1a

    .line 3469
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1a
    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    iput-object v1, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 3470
    iput-object p1, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 3471
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getType()I

    move-result p1

    iput p1, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 3472
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getTemplate_id()J

    move-result-wide v1

    iput-wide v1, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 3473
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez p1, :cond_33

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_33
    iget-object p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    .line 3474
    iput-object p1, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 3475
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 3477
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v0, :cond_44

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_44
    iget-object v6, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    const-string v0, "worksEvent!!.srcPath"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, ".bcm"

    const-string v8, ".cover"

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 3488
    new-instance v7, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment$downloadAndLoadNewBcmWork$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    const-string v4, ""

    .line 3481
    invoke-static/range {v1 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    :cond_66
    return-void
.end method

.method public editBlockFoldName(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/AnnotateBlockMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2757
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 2758
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2759
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2760
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2762
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    .line 2763
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_26

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2764
    :cond_26
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    .line 2762
    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p1, :cond_36

    .line 2766
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setDisplayName(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2767
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$editBlockFoldName$1;

    invoke-direct {v1, p2}, Lcom/codemao/creativecenter/NewBcmFragment$editBlockFoldName$1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2761
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2779
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_4b
    return-void
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x1

    .line 2312
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->closeAuto:Z

    .line 2313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_c
    return-void
.end method

.method public fullScreen()V
    .registers 5

    .line 2854
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isOtherClicking:Z

    if-eqz v0, :cond_5

    return-void

    .line 2857
    :cond_5
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->doOtherClick()V

    .line 2858
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    goto :goto_30

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_30

    .line 2859
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "运行状态"

    const-string/jumbo v3, "运行-全屏"

    invoke-virtual {v0, v1, v3, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3d

    .line 2861
    :cond_30
    :goto_30
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v1, "舞台编辑-横屏"

    const-string/jumbo v3, "舞台-全屏"

    invoke-virtual {v0, v1, v3, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2863
    :goto_3d
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeScreenOrientation()V

    return-void
.end method

.method public fullScreenChangeStylePopShow(Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2003
    iget v0, p1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;->type:I

    iget v1, p1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;->childType:I

    iget-boolean p1, p1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;->show:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->onCreateViewLevelVisibleChange(IIZ)V

    return-void
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .registers 2

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method protected final getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-object v0
.end method

.method public abstract getCreationMode()Lcom/codemao/creativecenter/bean/CreationMode;
.end method

.method public final getCreativeLoadingAnimResource()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->creativeLoadingAnimResource:I

    return v0
.end method

.method public getHandler()Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/codemao/creativecenter/utils/CreativeHandlerUtil<",
            "*>;"
        }
    .end annotation

    .line 1921
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    return-object v0
.end method

.method public getLandScreenHeight()I
    .registers 2

    .line 3395
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    return v0
.end method

.method public abstract getLeftTopView(II)Landroid/view/View;
.end method

.method protected final getLoadTimeoutMills()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->loadTimeoutMills:I

    return v0
.end method

.method public getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;
    .registers 2

    .line 816
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    return-object v0
.end method

.method public getMic()Lcom/codemao/creativecenter/utils/CreativeMicUtils;
    .registers 2

    .line 1917
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    return-object v0
.end method

.method public getOpenBcmMode()I
    .registers 2

    .line 2980
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmMode:I

    return v0
.end method

.method public getRunTimeListMsg(Lcom/codemao/creativestore/bean/GetRuntimeListMsg;)V
    .registers 5

    .line 2466
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/GetRuntimeListMsgEvent;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/codemao/creativecenter/event/GetRuntimeListMsgEvent;-><init>(Ljava/lang/String;Lcom/codemao/creativestore/bean/GetRuntimeListMsg;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getRuntimeVariableMsg(Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V
    .registers 5

    .line 2470
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;-><init>(Ljava/lang/String;Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected final getSideBarInterface()Lcom/codemao/creativecenter/view/SideBarInterface;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    return-object v0
.end method

.method public getSideBarVm()Lcom/codemao/creativecenter/vm/SidebarVM;
    .registers 2

    .line 2017
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    return-object v0
.end method

.method public getViewContext()Landroid/content/Context;
    .registers 2

    .line 2984
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getWorkId()Ljava/lang/String;
    .registers 2

    .line 2318
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_d

    if-eqz v0, :cond_b

    .line 2319
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkId()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    const/4 v0, 0x0

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0
.end method

.method public getWorkPath()Ljava/lang/String;
    .registers 2

    .line 2381
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getWorkUid()Ljava/lang/String;
    .registers 2

    .line 2324
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_d

    if-eqz v0, :cond_b

    .line 2325
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    const/4 v0, 0x0

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0
.end method

.method public final getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    return-object v0
.end method

.method public abstract hasVideo()Z
.end method

.method public hideBlockActor()V
    .registers 2

    .line 2562
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->hideSlectcor()V

    .line 2563
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->hide()V

    :cond_12
    return-void
.end method

.method public hideCutActorView()V
    .registers 3

    .line 1438
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->llCurrentActor:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public hideLoadingPop()V
    .registers 8

    const/4 v0, 0x1

    .line 2234
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isLoadFinish:Z

    .line 2235
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-object v3, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v3, :cond_1b

    if-eqz v1, :cond_17

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, v2

    :goto_18
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2236
    :cond_1b
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->needGuideView()Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez v1, :cond_29

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_29
    iget v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    if-ne v1, v3, :cond_3a

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->hasShowGuideRework()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2237
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->showGuideRework()V

    .line 2238
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showRunGuide()V

    goto :goto_88

    .line 2239
    :cond_3a
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->needGuideView()Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v1, :cond_88

    invoke-interface {v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->isHasVideo()Z

    move-result v1

    if-ne v1, v0, :cond_88

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->hasShowGuideVideo()Z

    move-result v1

    if-nez v1, :cond_88

    .line 2240
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->showGuideVideo()V

    .line 2241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 2242
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2243
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2244
    sget-object v4, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v1, v4}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2246
    new-instance v4, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_79

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2247
    :cond_79
    new-instance v6, Lcom/codemao/creativecenter/NewBcmFragment$hideLoadingPop$1;

    invoke-direct {v6, p0}, Lcom/codemao/creativecenter/NewBcmFragment$hideLoadingPop$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    .line 2246
    invoke-direct {v4, v5, v6}, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 2245
    invoke-virtual {v1, v4}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v1

    .line 2249
    invoke-virtual {v1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 2252
    :cond_88
    :goto_88
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showVideoAfterLoading()Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-boolean v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->videoInit:Z

    if-nez v1, :cond_b4

    .line 2253
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_98

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vsVideo:Landroid/widget/FrameLayout;

    :cond_98
    sget v1, Lcom/codemao/creativecenter/R$id;->vs_video:I

    invoke-virtual {p0, v2, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->initVideoView(Landroid/widget/FrameLayout;I)V

    .line 2254
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v1, :cond_a4

    invoke-interface {v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->hasVideo()V

    .line 2255
    :cond_a4
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->videoInit:Z

    .line 2256
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_ad

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/vm/SidebarVM;->changeStatus(I)V

    .line 2257
    :cond_ad
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_b4

    invoke-interface {v0, v3}, Lcom/codemao/creativecenter/view/SideBarInterface;->changeSWStatus(I)V

    :cond_b4
    return-void
.end method

.method public hideSavintPop()V
    .registers 3

    .line 2307
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flProgress:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public hideSideBarCover()V
    .registers 3

    .line 1375
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->sidebarCover:Landroid/view/View;

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public hideUploadButtonAlways()V
    .registers 3

    const/4 v0, 0x1

    .line 1312
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hideUploadAlways:Z

    .line 1313
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->setShowUpload(Z)V

    .line 1314
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->showUploadButton(Z)V

    :cond_12
    return-void
.end method

.method public abstract hideVideo()V
.end method

.method protected final init()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$init$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$init$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public initMBcm()V
    .registers 1

    return-void
.end method

.method public initTheateConfig()Lcom/codemao/creativestore/bean/TheateConfigInfo;
    .registers 8

    .line 3022
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreationMode()Lcom/codemao/creativecenter/bean/CreationMode;

    move-result-object v0

    .line 3024
    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/CreationMode;->getMode()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "visible"

    const/4 v4, 0x1

    if-eqz v1, :cond_18

    if-eq v1, v4, :cond_16

    if-eq v1, v2, :cond_13

    goto :goto_18

    :cond_13
    const-string v3, "translucent"

    goto :goto_18

    :cond_16
    const-string v3, "hidden"

    .line 3030
    :cond_18
    :goto_18
    new-instance v1, Lcom/codemao/creativestore/bean/TheateConfigInfo;

    .line 3031
    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/CreationMode;->getMode()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    .line 3033
    :goto_24
    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/CreationMode;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 3030
    :goto_2c
    invoke-direct {v1, v5, v3, v4}, Lcom/codemao/creativestore/bean/TheateConfigInfo;-><init>(ZLjava/lang/String;Z)V

    return-object v1
.end method

.method public abstract initUserInfo()Lcom/codemao/creativestore/bean/WebUserInfo;
.end method

.method public abstract initVideoView(Landroid/widget/FrameLayout;I)V
.end method

.method public isInBlock()Z
    .registers 4

    .line 2227
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    if-eqz v0, :cond_f

    .line 2228
    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/SidebarVM;->getLastStatus()I

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public isRuning()Z
    .registers 3

    .line 1301
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isStageFullScreen()Z
    .registers 2

    .line 1654
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isFullScreen:Z

    return v0
.end method

.method public loadBcmDone()V
    .registers 3

    .line 2917
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string v1, " bcm加载完成"

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;)V

    .line 2918
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    .line 2919
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideLoadingPop()V

    .line 2920
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->setCurWorkUid(Ljava/lang/String;)V

    return-void
.end method

.method public loadWorkspace()V
    .registers 3

    .line 2202
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCreativeWebViewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public needAutoSave()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract needGuideView()Z
.end method

.method public needHideWhenLock()Z
    .registers 3

    .line 3038
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreationMode()Lcom/codemao/creativecenter/bean/CreationMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/CreationMode;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public needToInitBcm()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newComerBlockGuideFinish()V
    .registers 3

    .line 2911
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSideBarCover()V

    .line 2912
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->showGuideRework()V

    .line 2913
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_click_start_to_run:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->showNewBeeRunGuide(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 216
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 217
    new-instance p1, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    .line 218
    invoke-virtual {p1, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    .line 219
    new-instance p1, Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    new-instance v0, Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-direct {p1, p0, v0}, Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;-><init>(Ljava/lang/Object;Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    .line 236
    new-instance p1, Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$2;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$2;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 237
    new-instance p1, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .line 1817
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x18c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_bc

    if-eq p1, v0, :cond_8e

    const/16 p2, 0x18d

    if-eq p1, p2, :cond_8e

    const/16 p2, 0x198e

    if-eq p1, p2, :cond_80

    const/16 p2, 0x198f

    if-eq p1, p2, :cond_80

    const/16 p2, 0x1e61

    const/4 v0, 0x0

    if-eq p1, p2, :cond_5a

    const-string p2, "resultInfo"

    packed-switch p1, :pswitch_data_e6

    goto/16 :goto_e4

    .line 1840
    :pswitch_24  #0x1994
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_e4

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz p1, :cond_e4

    if-eqz p3, :cond_38

    .line 1841
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_38

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    :cond_38
    check-cast v2, Lcn/codemao/android/sketch/model/ResultInfo;

    .line 1840
    invoke-virtual {p1, v2, v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->replaceStyle(Lcn/codemao/android/sketch/model/ResultInfo;Z)V

    goto/16 :goto_e4

    :pswitch_3f  #0x1993
    if-eqz p3, :cond_4b

    .line 1837
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4b

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    :cond_4b
    check-cast v2, Lcn/codemao/android/sketch/model/ResultInfo;

    .line 1838
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_e4

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz p1, :cond_e4

    invoke-virtual {p1, v2, v1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->replaceStyle(Lcn/codemao/android/sketch/model/ResultInfo;Z)V

    goto/16 :goto_e4

    :cond_5a
    if-eqz p3, :cond_65

    const-string p1, "result_categories"

    .line 1845
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_65

    goto :goto_67

    :cond_65
    new-array p1, v0, [Ljava/lang/String;

    :goto_67
    const-string p2, "data?.getStringArrayExtr…             ?: arrayOf()"

    .line 1846
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1847
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz p2, :cond_7b

    .line 1848
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1847
    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 1850
    :cond_7b
    iput-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    .line 1851
    iput-boolean v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->canNotCallStatusChange:Z

    goto :goto_e4

    :cond_80
    :pswitch_80  #0x1992, 0x1995
    if-eqz p3, :cond_88

    const-string p2, "actorBeans"

    .line 1822
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    :cond_88
    check-cast v2, Ljava/util/List;

    .line 1823
    invoke-direct {p0, p1, v2}, Lcom/codemao/creativecenter/NewBcmFragment;->addMaterial(ILjava/util/List;)V

    goto :goto_e4

    :cond_8e
    if-eqz p3, :cond_96

    const-string p2, "midi_data"

    .line 1827
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    :cond_96
    check-cast v2, Lcom/codemao/midi/bean/MidiMaterialBean;

    if-nez v2, :cond_9d

    .line 1829
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9d
    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiMaterialBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiMaterialBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiMaterialBean;->getExt()Ljava/lang/String;

    move-result-object v0

    .line 1828
    invoke-static {p2, p3, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->parseFromMidiBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;

    move-result-object p2

    .line 1831
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1832
    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiMaterialBean;->getMode()I

    move-result p3

    invoke-static {p3}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putMidiMode(I)V

    .line 1833
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment;->addMaterial(ILjava/util/List;)V

    goto :goto_e4

    :cond_bc
    if-ne p1, v0, :cond_e4

    const/16 p1, 0x7b

    if-ne p2, p1, :cond_d9

    if-eqz p3, :cond_cf

    const-string p1, "mode"

    .line 1857
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_d0

    :cond_cf
    move-object p1, v2

    :goto_d0
    if-eqz p1, :cond_d9

    .line 1858
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putMidiMode(I)V

    .line 1860
    :cond_d9
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz p1, :cond_e4

    if-eqz p1, :cond_e2

    .line 1861
    invoke-interface {p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete()V

    .line 1862
    :cond_e2
    iput-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    :cond_e4
    :goto_e4
    return-void

    nop

    :pswitch_data_e6
    .packed-switch 0x1992
        :pswitch_80  #00001992
        :pswitch_3f  #00001993
        :pswitch_24  #00001994
        :pswitch_80  #00001995
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public onBeforeReloadBcm()V
    .registers 5

    .line 2411
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mHelper:Lcom/codemao/creativecenter/synergic/SynergicHelper;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flCover:Landroid/widget/FrameLayout;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->init(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/synergic/SynergicHelper;Lcom/codemao/creativecenter/view/LocalBcmView;Landroid/widget/FrameLayout;)V

    :cond_15
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1443
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1444
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 181
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->resetDisplayDensity(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const-string v1, "worksEvent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, v0

    :goto_19
    check-cast p1, Lcom/codemao/creativestore/bean/WorksEvent;

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2a

    const-string v1, "pageStyle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x2

    :goto_2b
    iput p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->pageStyle:I

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3c

    sget v1, Lcom/codemao/creativecenter/NewBcmFragment;->globalOpenBcmMode:I

    const-string v2, "openBcmMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_3e

    :cond_3c
    sget p1, Lcom/codemao/creativecenter/NewBcmFragment;->globalOpenBcmMode:I

    :goto_3e
    iput p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmMode:I

    .line 188
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 正在打开创作页面： "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/WorksEvent;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_58

    :cond_57
    move-object v2, v0

    :goto_58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-nez p1, :cond_71

    .line 190
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The worksEvent instance is null when the onCreate method called."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->onLoadBcmError(Ljava/lang/Exception;)V

    return-void

    .line 193
    :cond_71
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string v1, "CreativeCenterUtils.getInstance()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v1, :cond_82

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkId()Ljava/lang/String;

    move-result-object v0

    :cond_82
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setCurrentWorkId(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 196
    sput p1, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    .line 197
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz p1, :cond_97

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/WorksEvent;->setUpdate(Z)V

    :cond_97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 208
    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_bcm_fragment:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 206
    invoke-static {p1, p2, p3, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_1a

    .line 212
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    :cond_1a
    return-object p3
.end method

.method public onCreateViewLevelVisibleChange(IIZ)V
    .registers 5

    .line 2084
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",是否显示:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nemo创作"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 6

    .line 1669
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string v1, " 退出创作页面"

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->onDestory()V

    .line 1671
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1672
    :cond_1b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_24

    if-eqz v0, :cond_24

    .line 1673
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->stopSensor()V

    .line 1675
    :cond_24
    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper;->destroy()V

    .line 1676
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/AudioPlayer;->onDestroy()V

    .line 1677
    invoke-super {p0}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->onDestroy()V

    .line 1678
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_40

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->close()V

    .line 1679
    :cond_40
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_49

    if-eqz v0, :cond_49

    .line 1680
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->onDestroy()V

    .line 1682
    :cond_49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1683
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->onDestroy()V

    .line 1684
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->stopRecording()V

    .line 1685
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    if-eqz v0, :cond_62

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1686
    :cond_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getCreateStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1687
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v0, v3

    const-string/jumbo v3, "创作页面"

    const-string/jumbo v4, "在创作页面内进行创作"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendViewDuration(Ljava/lang/String;Ljava/lang/String;J)V

    const-wide/16 v0, 0x0

    .line 1688
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putCreateStartTime(J)V

    .line 1689
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->bcmWeb:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v0, :cond_b5

    .line 1690
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_ad

    check-cast v1, Landroid/view/ViewGroup;

    .line 1691
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1692
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1694
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "it.settings"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1695
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 1696
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 1697
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 1698
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_b5

    .line 1690
    :cond_ad
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1700
    :cond_b5
    :goto_b5
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onMDestroy()V

    return-void
.end method

.method public onGetImagePathResult(Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;)V
    .registers 14
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_91

    .line 1973
    iget-object v0, p1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->result:Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;

    if-eqz v0, :cond_91

    const-string v1, "data.result"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->getResultInfo()Lcn/codemao/android/sketch/model/ResultInfo;

    move-result-object v0

    if-nez v0, :cond_13

    goto/16 :goto_91

    .line 1976
    :cond_13
    iget-object v0, p1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->workUid:Ljava/lang/String;

    .line 1977
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v1, :cond_24

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_24
    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1976
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_91

    .line 1983
    :cond_30
    iget-object p1, p1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->result:Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;

    const-string v0, "event"

    .line 1984
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->getType()I

    move-result v0

    if-eq v0, v2, :cond_3e

    return-void

    .line 1985
    :cond_3e
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->getResultInfo()Lcn/codemao/android/sketch/model/ResultInfo;

    move-result-object p1

    .line 1987
    new-instance v0, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    const-string v1, "info"

    .line 1988
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/ResultInfo;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 1989
    new-instance v1, Lcom/codemao/creativestore/bean/CenterPoint;

    .line 1990
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/ResultInfo;->getCenterPointX()F

    move-result v2

    float-to-double v2, v2

    .line 1991
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/ResultInfo;->getCenterPointY()F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    .line 1989
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCenterPoint(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 1993
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/ResultInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "filePath"

    .line 1995
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "nemo_users_db/"

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    .line 1996
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setPath(Ljava/lang/String;)V

    const/16 p1, 0x198f

    .line 1998
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->addMaterial(ILjava/util/List;)V

    :cond_91
    :goto_91
    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 7

    .line 773
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mInitHeight:I

    const/16 v1, -0x270f

    if-ne v0, v1, :cond_8

    .line 774
    iput p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mInitHeight:I

    .line 776
    :cond_8
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    if-eqz v0, :cond_5e

    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    if-nez v0, :cond_11

    goto :goto_5e

    :cond_11
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    :goto_19
    if-eqz p2, :cond_1d

    .line 779
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    .line 783
    :cond_1d
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p2, :cond_34

    iget v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mInitHeight:I

    sub-int v1, p1, v1

    div-int/lit8 v0, v0, 0x4

    if-le v1, v0, :cond_34

    .line 784
    iput-boolean v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isKeyboadShow:Z

    if-nez p2, :cond_30

    .line 785
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_30
    invoke-virtual {p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->onKeyboardShow()V

    goto :goto_44

    :cond_34
    if-eqz p2, :cond_44

    .line 786
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isKeyboadShow:Z

    if-eqz v0, :cond_44

    if-nez p2, :cond_3f

    .line 787
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3f
    invoke-virtual {p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->onKeyboardHdie()V

    .line 788
    iput-boolean v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isKeyboadShow:Z

    .line 790
    :cond_44
    :goto_44
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 791
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mInitHeight:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 792
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/event/RectEvent;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/codemao/creativecenter/event/RectEvent;-><init>(Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public abstract onLoadBcmError(Ljava/lang/Exception;)V
.end method

.method public onLoadCloudBaseMaterialDone()V
    .registers 3

    .line 3279
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    return-void

    .line 3282
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvDownloadCloudRetry:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3283
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_33

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_33

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvGoToWork:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_opening:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_33
    return-void
.end method

.method public onLoadCloudBaseMaterialError()V
    .registers 3

    .line 3298
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    return-void

    .line 3301
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvDownloadCloudRetry:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3302
    :cond_21
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvGoToWork:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_cloud_material_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_32
    return-void
.end method

.method public onLoadCloudBaseMaterialProgress(I)V
    .registers 6

    .line 3287
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    return-void

    .line 3290
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvDownloadCloudRetry:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3291
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvGoToWork:Landroid/widget/TextView;

    if-eqz v0, :cond_41

    .line 3292
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_downloading:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 3291
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    return-void
.end method

.method public abstract onMCreate()V
.end method

.method public abstract onMDestroy()V
.end method

.method public abstract onMPause()V
.end method

.method public abstract onMResume()V
.end method

.method public abstract onMStop()V
.end method

.method public onPause()V
    .registers 3

    .line 1497
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenHelperCenter:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1498
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenHelperCenter:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->onPause()V

    .line 1500
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_1c

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    .line 1501
    :cond_1c
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onMPause()V

    .line 1502
    invoke-super {p0}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1874
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_59

    .line 1876
    array-length v0, p3

    if-lez v0, :cond_4c

    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4c

    .line 1877
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_42

    if-nez v0, :cond_23

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_23
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-nez v0, :cond_2e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2e
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_39

    goto :goto_42

    :cond_39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_42

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->runOrStop()V

    .line 1879
    :cond_42
    :goto_42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1880
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_running:I

    .line 1878
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    goto :goto_59

    .line 1883
    :cond_4c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->prepareRecording()V

    .line 1884
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->mic:Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->startRecording(F)V

    :cond_59
    :goto_59
    const/16 v0, 0x248e

    if-ne p1, v0, :cond_af

    .line 1892
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_6a

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    goto :goto_6b

    :cond_6a
    const/4 v0, 0x0

    .line 1888
    :goto_6b
    invoke-static {p1, p2, p3, v0}, Lcom/codemao/creativestore/utils/BluetoothPermissionRequest;->isRequestLocationPermissionGranted(I[Ljava/lang/String;[ILcom/polidea/rxandroidble2_codemao/RxBleClient;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1895
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/16 v1, 0x6a

    if-eqz v0, :cond_7f

    new-instance v2, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    invoke-direct {v2, v1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBluetoothPermissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    .line 1901
    :cond_7f
    invoke-static {p1, p2, p3}, Lcom/codemao/creativestore/utils/BluetoothPermissionRequest;->isRequestAndroidSBlueEnablePermissionGranted(I[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 1907
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_af

    new-instance p2, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    invoke-direct {p2, v1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBluetoothPermissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    goto :goto_af

    .line 1909
    :cond_92
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_a0

    new-instance p2, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    const/16 p3, 0x68

    invoke-direct {p2, p3}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBluetoothPermissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    :cond_a0
    return-void

    .line 1897
    :cond_a1
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_af

    new-instance p2, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    const/16 p3, 0x67

    invoke-direct {p2, p3}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBluetoothPermissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    :cond_af
    :goto_af
    return-void
.end method

.method public onRestart()V
    .registers 3

    .line 1469
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->canNotCallStatusChange:Z

    if-nez v0, :cond_a

    .line 1470
    iget v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->statusChanged(IZ)V

    :cond_a
    const/4 v0, 0x0

    .line 1472
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->canNotCallStatusChange:Z

    .line 1473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->resetDisplayDensity(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 1478
    invoke-super {p0}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->onResume()V

    .line 1479
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    :cond_c
    const/4 v0, 0x0

    .line 1480
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->closeAuto:Z

    .line 1481
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vCover:Landroid/view/View;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 1482
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    if-eqz v0, :cond_2b

    .line 1483
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$onResume$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$onResume$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    const-wide/16 v2, 0x64

    .line 1482
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1487
    :cond_2b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenHelperCenter:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 1488
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenHelperCenter:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->onResume()V

    .line 1490
    :cond_3d
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onMResume()V

    .line 1491
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_49

    if-eqz v0, :cond_49

    .line 1492
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->startAutoSaveTimer()V

    :cond_49
    return-void
.end method

.method public onStartLoadCloudBaseMaterial()V
    .registers 6

    .line 3268
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    return-void

    .line 3271
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvDownloadCloudRetry:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3272
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvGoToWork:Landroid/widget/TextView;

    if-eqz v0, :cond_41

    .line 3273
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_downloading:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3274
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3272
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    return-void
.end method

.method public onStatusChange(II)V
    .registers 3

    return-void
.end method

.method public abstract onStatusChangeFromRun()V
.end method

.method public onStop()V
    .registers 4

    .line 1448
    invoke-super {p0}, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->onStop()V

    .line 1449
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    const/4 v2, -0x1

    if-nez v0, :cond_18

    goto :goto_28

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 1450
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->runOrStop()V

    .line 1451
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;->addStopAction(Ljava/lang/String;)V

    .line 1453
    :cond_28
    :goto_28
    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->closeAuto:Z

    if-nez v0, :cond_48

    iget-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->isLoadFinish:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v1, :cond_48

    if-eqz v1, :cond_48

    if-nez v0, :cond_3f

    .line 1454
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3f
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->isHavePublishStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->saveBcmAuto(Z)V

    .line 1456
    :cond_48
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->onStop()V

    .line 1457
    :cond_4f
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->stopAutoSaveTimer()V

    .line 1458
    :cond_56
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_62

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vCover:Landroid/view/View;

    if-eqz v0, :cond_62

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1459
    :cond_62
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onMStop()V

    return-void
.end method

.method public abstract onTopMenuClick()V
.end method

.method public onUploadButtonClick(I)V
    .registers 2

    return-void
.end method

.method public onUserInfoChange()V
    .registers 4

    .line 2548
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_23

    .line 2549
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->initUserInfo()Lcom/codemao/creativestore/bean/WebUserInfo;

    move-result-object v0

    .line 2550
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    .line 2551
    iget-object v2, v0, Lcom/codemao/creativestore/bean/WebUserInfo;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setUserId(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    const-string v2, "CreativeCenterUtils.getI…tUserId(userInfo.user_id)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/codemao/creativestore/bean/WebUserInfo;->user_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setUserToken(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    .line 2552
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v1, :cond_23

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->updateWebUserInfo(Lcom/codemao/creativestore/bean/WebUserInfo;)V

    :cond_23
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 242
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    const-string p2, " 开始初始化"

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->needToInitBcm()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 244
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->initMBcm()V

    goto :goto_24

    .line 246
    :cond_1b
    iget p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->loadTimeoutMills:I

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment;->startLoadTimeout(J)V

    .line 247
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->init()V

    .line 249
    :goto_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putCreateStartTime(J)V

    .line 251
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showLoading()V

    .line 252
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->onMCreate()V

    .line 253
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    const-string p2, " 初始化完成，等待WebView回调"

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public openStylePanel(ILcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2289
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2290
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2291
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2293
    new-instance v7, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;

    .line 2294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_26

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2295
    :cond_26
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    move-object v1, v7

    move-object v3, p2

    move v5, p1

    move-object v6, p3

    .line 2293
    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;-><init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/presenter/CreateUtils;ILcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    .line 2292
    invoke-virtual {v0, v7}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2298
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_36
    return-void
.end method

.method public quiteHanshu(Landroid/view/View;)V
    .registers 5

    .line 2346
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "函数编辑"

    const-string/jumbo v1, "函数-取消"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2347
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-nez p1, :cond_15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_15
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/HanshubarVM;->canRevert:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    const-string v0, "hanshubarVM!!.canRevert.get()!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 2348
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showQuiteHanshu()V

    goto :goto_34

    .line 2350
    :cond_31
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->exitHanshu()V

    :goto_34
    return-void
.end method

.method public refreshCutActorView()V
    .registers 11

    .line 1384
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v0, :cond_5

    return-void

    .line 1387
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreationMode()Lcom/codemao/creativecenter/bean/CreationMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/CreationMode;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1388
    :goto_14
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v3, :cond_1b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1b
    invoke-virtual {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v3

    const-string v4, "createUtils!!.currentScene"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object v3

    .line 1389
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 1390
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v5, :cond_35

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_35
    invoke-virtual {v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v5

    const-string v6, "createUtils!!.actors"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_43
    if-ge v6, v5, :cond_83

    .line 1391
    iget-object v7, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v7, :cond_4c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4c
    invoke-virtual {v7}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/creativestore/bean/ActorVO;

    const-string v8, "actorVO"

    if-eqz v0, :cond_63

    .line 1392
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v9

    if-nez v9, :cond_80

    :cond_63
    iget-boolean v9, v7, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-nez v9, :cond_80

    .line 1393
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1394
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v0, :cond_75

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_75
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrentActorId(Ljava/lang/String;)V

    goto :goto_83

    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 1399
    :cond_83
    :goto_83
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 1400
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a6

    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v5, 0x0

    if-eqz v4, :cond_98

    invoke-virtual {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    goto :goto_99

    :cond_98
    move-object v4, v5

    :goto_99
    if-eqz v4, :cond_a6

    .line 1401
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    :cond_a3
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_fd

    .line 1403
    :cond_a6
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v4, :cond_ad

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_ad
    invoke-virtual {v4, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1404
    check-cast v4, Lcom/codemao/creativestore/bean/ActorVO;

    if-nez v4, :cond_fd

    .line 1405
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v4, :cond_be

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_be
    invoke-virtual {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c6
    :goto_c6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/ActorVO;

    const-string v6, "actor"

    .line 1406
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 1407
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_c6

    .line 1410
    :cond_e4
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/codemao/creativestore/bean/ActorVO;

    if-nez v3, :cond_fd

    .line 1411
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v3, :cond_f1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f1
    invoke-virtual {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1415
    :cond_fd
    :goto_fd
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v1, :cond_12a

    .line 1416
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v3, :cond_10a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10a
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v3, v4, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    .line 1417
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, v2}, Lcom/codemao/creativecenter/NewBcmFragment;->visibleLLCurrentActorPopTitle(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 1418
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v2, :cond_123

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v2, v0}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->changeCurrentSelectActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 1419
    :cond_123
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->stageDashboardView:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz v0, :cond_12a

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->changeCurrentSelectActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 1421
    :cond_12a
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->changeKeyboardPopLocation()V

    return-void
.end method

.method public refreshMeta()V
    .registers 2

    .line 2442
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->refreshMetadata()V

    :cond_7
    return-void
.end method

.method public reloadBcm()V
    .registers 2

    const/4 v0, 0x0

    .line 2400
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->reloadBcm(Z)V

    return-void
.end method

.method public reloadBcm(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 2393
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->reloadBcmBySynergic()V

    goto :goto_11

    .line 2395
    :cond_a
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->reloadBcm()V

    :cond_11
    :goto_11
    return-void
.end method

.method public renameVariable(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/RenameVariableMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "renameVariableMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 2665
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x3

    .line 2669
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/RenameVariableMsg;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "list"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v0, 0x8

    goto :goto_4f

    .line 2671
    :cond_23
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/RenameVariableMsg;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cloud"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v0, 0x9

    goto :goto_4f

    .line 2673
    :cond_32
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/RenameVariableMsg;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edit_procedure_name"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/16 v0, 0xa

    goto :goto_4f

    .line 2675
    :cond_41
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/RenameVariableMsg;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edit_procedure_param"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/16 v0, 0xb

    .line 2678
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 2679
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2680
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2681
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2683
    new-instance v2, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    .line 2684
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_75

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2685
    :cond_75
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v4

    .line 2683
    invoke-direct {v2, v3, v4, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2687
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/RenameVariableMsg;->getPool()Ljava/util/HashSet;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setPools(Ljava/util/HashSet;Ljava/util/HashSet;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/RenameVariableMsg;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setDisplayName(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2688
    new-instance v0, Lcom/codemao/creativecenter/NewBcmFragment$renameVariable$1;

    invoke-direct {v0, p2}, Lcom/codemao/creativecenter/NewBcmFragment$renameVariable$1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2682
    invoke-virtual {v1, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2701
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_9d
    return-void
.end method

.method public retryCheckMaterial()V
    .registers 2

    .line 3307
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_9

    .line 3308
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->checkMaterial()V

    :cond_9
    return-void
.end method

.method public runOrStop()V
    .registers 2

    .line 2223
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/SidebarVM;->runOrStop()V

    :cond_7
    return-void
.end method

.method public saveHanshu(Landroid/view/View;)V
    .registers 5

    .line 2340
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "函数编辑"

    const-string/jumbo v1, "函数-保存"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2341
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/HanshubarVM;->isEditHanshuModel:Landroidx/databinding/ObservableField;

    if-eqz p1, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 2342
    :cond_1b
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz p1, :cond_25

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->finishEditHanshu(Z)V

    :cond_25
    return-void
.end method

.method public final saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
    .registers 5

    .line 2368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$saveWork$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$saveWork$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2369
    :cond_e
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->saveBcm(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    :cond_15
    return-void
.end method

.method public final saveWorkWithoutPop(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
    .registers 4

    .line 2373
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->saveBcm(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    return-void
.end method

.method public sceneScrollTo(I)V
    .registers 4

    .line 2886
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->sceneScrollto(IZ)V

    :cond_c
    return-void
.end method

.method public selectExtensionsCategories(Ljava/util/List;Ljava/util/List;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3429
    invoke-virtual {p0, p3}, Lcom/codemao/creativecenter/NewBcmFragment;->setCompletionHandler(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    .line 3430
    sget-object p3, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->Companion:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;

    .line 3431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x1e61

    .line 3430
    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public setCompletionHandler(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 2462
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    return-void

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.codemao.creativestore.dsbridge.CompletionHandler<kotlin.String?>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showBlcokErr(Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/BlockErrorMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 2175
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_code_error:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    .line 2176
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_code_error_quite:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2177
    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_code_error_check:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2178
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2182
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 2192
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2193
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2194
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2195
    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2196
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2197
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_63
    return-void
.end method

.method public showBlockHelper(Ljava/lang/String;)V
    .registers 5

    .line 2474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 2475
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2476
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2477
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2478
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2479
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2a
    invoke-direct {v1, v2, p1}, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2480
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_34
    return-void
.end method

.method public showCannotDeleteSceneOne()V
    .registers 4

    .line 1659
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1660
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_cannot_delete_scene_one:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1658
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showCleanCanshu(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 2131
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_delete_parameters_blocks:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    .line 2132
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_save:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2133
    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_delete:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$1;

    invoke-direct {v2, p1, v0}, Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2136
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$2;

    invoke-direct {v2, p1, v0}, Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$2;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 2140
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2141
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2142
    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2143
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2144
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2145
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_63
    return-void
.end method

.method public showClearBlock(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2052
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 2054
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_clear_all_blocks:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    .line 2055
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_cancel:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2056
    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_clear:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showClearBlock$1;

    invoke-direct {v2, p1, v0}, Lcom/codemao/creativecenter/NewBcmFragment$showClearBlock$1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2059
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showClearBlock$2;

    invoke-direct {v2, p1, v0}, Lcom/codemao/creativecenter/NewBcmFragment$showClearBlock$2;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 2063
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2064
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2065
    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2066
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2067
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2068
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_63
    return-void
.end method

.method public showConfirmDialog(Lcom/codemao/creativestore/bean/ConfirmDialogMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ConfirmDialogMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "confirmDialogMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 2092
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->getNoText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2093
    new-instance p2, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2094
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    .line 2095
    invoke-virtual {p2, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    .line 2096
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p2, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    .line 2098
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;

    .line 2099
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_39

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_39
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->getQuestion()Ljava/lang/String;

    move-result-object v2

    .line 2101
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->getYesText()Ljava/lang/String;

    move-result-object p1

    .line 2098
    invoke-direct {v0, v1, v2, p1}, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p2, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2104
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto :goto_a8

    .line 2107
    :cond_51
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5c
    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    .line 2109
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->getNoText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2110
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->getYesText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object p1

    .line 2111
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$showConfirmDialog$1;

    invoke-direct {v1, p2, v0}, Lcom/codemao/creativecenter/NewBcmFragment$showConfirmDialog$1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object p1

    .line 2114
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$showConfirmDialog$2;

    invoke-direct {v1, p2, v0}, Lcom/codemao/creativecenter/NewBcmFragment$showConfirmDialog$2;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 2118
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2119
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2120
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2121
    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 2122
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2123
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_a8
    :goto_a8
    return-void
.end method

.method public showContentEdit(Lcom/codemao/creativestore/bean/CreateEditTextMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/CreateEditTextMsg;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2024
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 2025
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2026
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2027
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2029
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    .line 2030
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_26

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2031
    :cond_26
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorkUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p1, :cond_32

    .line 2032
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/CreateEditTextMsg;->getType()Ljava/lang/String;

    move-result-object v5

    goto :goto_33

    :cond_32
    move-object v5, v4

    :goto_33
    const-string v6, "short"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x5

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x6

    .line 2029
    :goto_3e
    invoke-direct {v1, v2, v3, v5}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p1, :cond_47

    .line 2034
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/CreateEditTextMsg;->getText()Ljava/lang/String;

    move-result-object v4

    :cond_47
    invoke-virtual {v1, v4}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->setDisplayName(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2035
    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$showContentEdit$1;

    invoke-direct {v1, p2}, Lcom/codemao/creativecenter/NewBcmFragment$showContentEdit$1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->listen(Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    move-result-object p1

    .line 2028
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2047
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_5b
    return-void
.end method

.method public showHelp()V
    .registers 6

    .line 2416
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    goto :goto_28

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_28

    .line 2417
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v3, "舞台编辑-横屏"

    const-string/jumbo v4, "舞台-帮助"

    invoke-virtual {v0, v3, v4, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4d

    .line 2418
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-nez v0, :cond_2f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2f
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3a

    goto :goto_4d

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4d

    .line 2419
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v3, "积木编辑"

    const-string/jumbo v4, "积木-帮助"

    invoke-virtual {v0, v3, v4, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2421
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 2423
    new-instance v0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    .line 2424
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_5e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2425
    :cond_5e
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-nez v3, :cond_65

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_65
    iget-object v3, v3, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v3}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_70

    goto :goto_77

    :cond_70
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_77

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v1, 0x0

    .line 2423
    :goto_78
    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenHelperCenter:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    .line 2427
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2428
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2429
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2430
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->fullScreenHelperCenter:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 2431
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_9b
    return-void
.end method

.method public showKeyboardDialog(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 3443
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardUtilKt;->hideSystemInputMethod(Landroid/view/View;)V

    .line 3444
    :cond_16
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 3445
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 3446
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 3448
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_36

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_36
    invoke-direct {v1, v2, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3449
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showKeyboardDialog$1;

    invoke-direct {v2, p2, p1}, Lcom/codemao/creativecenter/NewBcmFragment$showKeyboardDialog$1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->setListener(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;

    move-result-object p1

    .line 3447
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 3459
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_49
    return-void
.end method

.method public showLoading()V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    goto :goto_9

    :cond_8
    move-object v2, v1

    :goto_9
    if-nez v2, :cond_c

    return-void

    :cond_c
    if-eqz v0, :cond_1c

    .line 260
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_1c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvDownloadCloudRetry:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_2d
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvDownloadCloudRetry:Landroid/widget/TextView;

    if-eqz v0, :cond_41

    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showLoading$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/NewBcmFragment$showLoading$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_41
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_52

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_52

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvGoToWork:Landroid/widget/TextView;

    if-eqz v0, :cond_52

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_opening:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 264
    :cond_52
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_5c

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->creativeLoading:Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;

    if-eqz v0, :cond_5c

    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->ivLoading:Lcom/codemao/creativecenter/customview/FrameImageView;

    :cond_5c
    if-eqz v1, :cond_66

    .line 265
    new-instance v0, Lcom/codemao/creativecenter/NewBcmFragment$showLoading$2;

    invoke-direct {v0, p0, v1}, Lcom/codemao/creativecenter/NewBcmFragment$showLoading$2;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/customview/FrameImageView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_66
    return-void
.end method

.method public showNewBeeGuide(Ljava/lang/String;)V
    .registers 3

    .line 1665
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->initNewBeeMsg(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public showNewBeeRunGuide(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public showQuiteHanshu()V
    .registers 4

    .line 2150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 2152
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_quit_dialog:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    .line 2153
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_save:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2154
    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_exit_confirm:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2155
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showQuiteHanshu$1;

    invoke-direct {v2, v0}, Lcom/codemao/creativecenter/NewBcmFragment$showQuiteHanshu$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v1

    .line 2156
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$showQuiteHanshu$2;

    invoke-direct {v2, p0, v0}, Lcom/codemao/creativecenter/NewBcmFragment$showQuiteHanshu$2;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 2160
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2161
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2162
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2163
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2164
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 2165
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_63
    return-void
.end method

.method public showRunGuide()V
    .registers 6

    .line 2206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2207
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2208
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2209
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 2211
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;

    .line 2212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_26

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 2213
    :cond_26
    new-instance v3, Lcom/codemao/creativecenter/NewBcmFragment$showRunGuide$1;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/NewBcmFragment$showRunGuide$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    const/4 v4, 0x1

    .line 2211
    invoke-direct {v1, v2, v3, v4, v4}, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZZ)V

    .line 2210
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 2216
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_36
    return-void
.end method

.method public showSavingPop()V
    .registers 3

    .line 2303
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flProgress:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public showSelectSoundPop(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1925
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1926
    new-instance v0, Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/codemao/creativecenter/pop/SelectSoundPop;-><init>(Landroid/app/Activity;Lcom/codemao/creativestore/presenter/CreateUtils;Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    .line 1927
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 1928
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 1929
    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 1930
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->selectSoundPop:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 1931
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_36
    return-void
.end method

.method public showSideBarCover()V
    .registers 3

    .line 1379
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->sidebarCover:Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public showToast(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_3

    goto :goto_32

    .line 2485
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x514d33ab

    if-eq v0, v1, :cond_22

    const v1, 0x1c155

    if-eq v0, v1, :cond_12

    goto :goto_32

    :cond_12
    const-string v0, "top"

    .line 2486
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 2487
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_39

    :cond_22
    const-string v0, "center"

    .line 2489
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 2490
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 2493
    :cond_32
    :goto_32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_39
    return-void
.end method

.method public showUploadButton()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showUploadWhenNeed()V
    .registers 3

    const/4 v0, 0x0

    .line 1318
    iput-boolean v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hideUploadAlways:Z

    .line 1319
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showUploadButton()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->setShowUpload(Z)V

    .line 1320
    :cond_e
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->cfbv:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->showUploadButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->showUploadButton(Z)V

    :cond_19
    return-void
.end method

.method public showUploader()V
    .registers 4

    .line 1308
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sideBarInterface:Lcom/codemao/creativecenter/view/SideBarInterface;

    if-eqz v0, :cond_1d

    iget v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->currentStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v1, :cond_19

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flDebug:Lcom/codemao/creativecenter/customview/CreateDebugView;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->getType()I

    move-result v1

    if-ne v1, v2, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/view/SideBarInterface;->showUpload(Z)V

    :cond_1d
    return-void
.end method

.method public abstract showVideo()V
.end method

.method public showVideoAfterLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showWebDialog(Ljava/lang/String;)V
    .registers 5

    .line 2073
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2074
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 2075
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2076
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2077
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 2078
    new-instance v2, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;

    invoke-direct {v2, v0, p1}, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 2079
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_27
    return-void
.end method

.method public startEditProcedure()V
    .registers 3

    .line 2750
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->hanshubarVM:Lcom/codemao/creativecenter/vm/HanshubarVM;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/HanshubarVM;->isEditHanshuModel:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public startMic()V
    .registers 4

    .line 2951
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 2952
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getMic()Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->stopRecording()V

    .line 2953
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getMic()Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getHandler()Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->setHandler(Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;)V

    .line 2954
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getMic()Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_25
    new-instance v2, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->requestAuthorization(Landroidx/fragment/app/FragmentActivity;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    .line 2974
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getMic()Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->prepareRecording()V

    .line 2975
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getMic()Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    move-result-object v0

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->startRecording(F)V

    :cond_3e
    return-void
.end method

.method public startShakeLitstener()V
    .registers 3

    .line 2262
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->setHandler(Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;)V

    .line 2263
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_12

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->setShakeInterval(I)V

    .line 2264
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->startShakeUpdates()V

    :cond_19
    return-void
.end method

.method public startTiltLitstener()V
    .registers 3

    .line 2272
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->handler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->setHandler(Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;)V

    .line 2273
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_12

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->setQingxieInterval(I)V

    .line 2274
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->startTiltUpdates()V

    :cond_19
    return-void
.end method

.method public statusChanged(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1183
    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->statusChanged(IZ)V

    return-void
.end method

.method public stopMic()V
    .registers 2

    .line 2947
    invoke-virtual {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->getMic()Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->stopRecording()V

    return-void
.end method

.method public stopShakeLitstener()V
    .registers 2

    .line 2268
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->stopShakeUpdates()V

    :cond_7
    return-void
.end method

.method public stopTiltLitstener()V
    .registers 2

    .line 2279
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->accelerometer:Lcom/codemao/creativecenter/utils/CreativeAccelerometer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->stopTiltUpdates()V

    :cond_7
    return-void
.end method

.method public undoAndRedoStatus(ZZ)V
    .registers 5

    .line 2924
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->revoke:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 2928
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->canRedo:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_1b

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 2929
    :cond_1b
    iget-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment;->sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p2, :cond_2a

    iget-object p2, p2, Lcom/codemao/creativecenter/vm/SidebarVM;->canRevert:Landroidx/databinding/ObservableField;

    if-eqz p2, :cond_2a

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public updateScenList(I)V
    .registers 3

    .line 2873
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->updateSceneList(I)V

    .line 2874
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->getSceneAdapter()Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->setCurrentPosition(I)V

    .line 2875
    :cond_1c
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz p1, :cond_2d

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->getSceneAdapter()Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2876
    :cond_2d
    invoke-direct {p0}, Lcom/codemao/creativecenter/NewBcmFragment;->cancelStageGuideMode()V

    return-void
.end method

.method public updateUserList()V
    .registers 3

    .line 2567
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->getAdapter()Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getLastActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 2568
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->getAdapter()Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->setLastActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 2569
    :cond_2a
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_3b

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->middle:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->getAdapter()Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2570
    :cond_3b
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_4d

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->getActorAdapter()Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    if-eqz v0, :cond_4d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->setInit(Z)V

    .line 2571
    :cond_4d
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment;->binding:Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    if-eqz v0, :cond_5e

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->flBlockActor:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->getActorAdapter()Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5e
    return-void
.end method

.method public visibleLeftBar(Z)V
    .registers 4

    .line 3412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/NewBcmFragment$visibleLeftBar$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method
