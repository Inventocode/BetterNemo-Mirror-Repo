.class public abstract Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;
.super Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;
.source "MineCommonUserInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "BindingPad:",
        "Landroidx/databinding/ViewDataBinding;",
        "ViewModel:",
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "*>;>",
        "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
        "TBinding;TBindingPad;TViewModel;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineCommonUserInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineCommonUserInfoFragment.kt\ncom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n*L\n1#1,237:1\n15#2,7:238\n*S KotlinDebug\n*F\n+ 1 MineCommonUserInfoFragment.kt\ncom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment\n*L\n74#1:238,7\n*E\n"
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;

.field private ivFrame:Landroid/widget/ImageView;

.field private loginView:Landroid/view/View;

.field private name_tv:Landroid/widget/TextView;

.field private photo_iv:Landroid/widget/ImageView;

.field private tvUserId:Landroid/widget/TextView;

.field private userInfoLayout:Landroid/view/ViewGroup;

.field private userLoginLayout:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$Q0HQ2xl6epfKeIDMidIqbtTmFik(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->initData$lambda$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->_$_findViewCache:Ljava/util/Map;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getName_tv$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)Landroid/widget/TextView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->name_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getPhoto_iv$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->photo_iv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getTvUserId$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)Landroid/widget/TextView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->tvUserId:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setUserLevelInfo(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;ILjava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->setUserLevelInfo(ILjava/lang/String;)V

    return-void
.end method

.method private static final initData$lambda$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private final setUserLevelInfo(ILjava/lang/String;)V
    .registers 6

    .line 175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "ivFrame"

    if-eqz p1, :cond_17

    .line 176
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->ivFrame:Landroid/widget/ImageView;

    if-nez p1, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 179
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->ivFrame:Landroid/widget/ImageView;

    if-nez p1, :cond_1f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1f
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_26

    return-void

    .line 182
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->ivFrame:Landroid/widget/ImageView;

    if-nez p1, :cond_2e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2e
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->ivFrame:Landroid/widget/ImageView;

    if-nez p1, :cond_3a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3b

    :cond_3a
    move-object v0, p1

    :goto_3b
    invoke-static {p2, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_3e
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public commonStep4SetViewListener()V
    .registers 7

    .line 73
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep4SetViewListener()V

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->loginView:Landroid/view/View;

    if-nez v0, :cond_d

    const-string v0, "loginView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    sget-object v1, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$commonStep4SetViewListener$1;

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 20
    new-instance v5, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final getAvatarUrl()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initData()V
    .registers 7

    .line 86
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const-string v1, "userInfoLayout"

    const/16 v2, 0x8

    const-string v3, "userLoginLayout"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_5e

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->userLoginLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->userInfoLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_21

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v5, v0

    :goto_22
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 98
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_30

    return-void

    .line 102
    :cond_30
    invoke-virtual {p0, v4}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->setHeadLoadFinish(Z)V

    .line 103
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v2

    const-class v3, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v2, v3}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-interface {v2, v0, v1}, Lcom/codemao/nemo/retrofit/api/UserService;->getCreateHeadData(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 159
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$2;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$2;-><init>()V

    sget-object v1, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount;->getUserInfoProfile(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void

    .line 92
    :cond_5e
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->userLoginLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_66

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_66
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->userInfoLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_71

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_72

    :cond_71
    move-object v5, v0

    :goto_72
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public initUserInfoView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 9

    const-string v0, "userName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "levelStroke"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notLoginContainer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoContainer"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goLogin"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->name_tv:Landroid/widget/TextView;

    .line 63
    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->tvUserId:Landroid/widget/TextView;

    .line 65
    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->ivFrame:Landroid/widget/ImageView;

    .line 66
    iput-object p4, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->photo_iv:Landroid/widget/ImageView;

    .line 67
    iput-object p5, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->userLoginLayout:Landroid/view/ViewGroup;

    .line 68
    iput-object p6, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->userInfoLayout:Landroid/view/ViewGroup;

    .line 69
    iput-object p7, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->loginView:Landroid/view/View;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 233
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->onDestroy()V

    .line 234
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 81
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->initData()V

    return-void
.end method

.method public final onUserInfoUpdate(Lcom/codemao/nemo/event/UpdateUserInfoEvents;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_46

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    goto :goto_71

    .line 217
    :cond_14
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "ivFrame"

    if-eqz v0, :cond_2d

    .line 219
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->ivFrame:Landroid/widget/ImageView;

    if-nez p1, :cond_28

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    move-object v2, p1

    :goto_29
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_71

    .line 222
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->ivFrame:Landroid/widget/ImageView;

    if-nez v0, :cond_35

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->ivFrame:Landroid/widget/ImageView;

    if-nez v0, :cond_41

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_42

    :cond_41
    move-object v2, v0

    :goto_42
    invoke-static {p1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_71

    .line 212
    :cond_46
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->avatarUrl:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->photo_iv:Landroid/widget/ImageView;

    if-nez v0, :cond_5a

    const-string v0, "photo_iv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5b

    :cond_5a
    move-object v2, v0

    :goto_5b
    invoke-static {p1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_71

    .line 228
    :cond_5f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->name_tv:Landroid/widget/TextView;

    if-nez v0, :cond_69

    const-string v0, "name_tv"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6a

    :cond_69
    move-object v2, v0

    :goto_6a
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_71
    return-void
.end method

.method protected final setAvatarUrl(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setDataOffline(Z)V
    .registers 6

    .line 199
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    if-nez p1, :cond_1f

    goto :goto_4f

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_4f

    .line 200
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->name_tv:Landroid/widget/TextView;

    if-nez p1, :cond_31

    const-string p1, "name_tv"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_31
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthorLevel()I

    move-result p1

    .line 203
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->setUserLevelInfo(ILjava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method
