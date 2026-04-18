.class public Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;
    }
.end annotation


# instance fields
.field private activityActive:I

.field private isFromBack:Z

.field private isLastEyeshieldModeOpen:Z

.field private mCallBack:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;

.field private mEyeshieldViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/Activity;",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isFromBack:Z

    .line 74
    iput v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->activityActive:I

    .line 78
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mCallBack:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;Landroid/app/Activity;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->checkMiaoCode(Landroid/app/Activity;)V

    return-void
.end method

.method private checkMiaoCode(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "miaocode"

    const-string v1, "检查miaocode"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :try_start_7
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-nez v1, :cond_12

    sget-boolean v1, Lcom/codemao/nemo/http/PolicyUtils;->isTouristAgreePolicy:Z

    if-nez v1, :cond_12

    return-void

    .line 234
    :cond_12
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getFirstAgreementStatus()Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    :cond_19
    const-string v1, "clipboard"

    .line 237
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 238
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_2d

    const-string p1, "剪切板没有内容"

    .line 240
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    const/4 v2, 0x0

    .line 243
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    return-void

    .line 247
    :cond_3d
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miaocode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "\\&"

    .line 250
    invoke-direct {p0, v2, v1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->getSplitContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9b

    sget-object v3, Lcom/codemao/nemo/util/AppConstants;->GENERATE_MIAOCODE:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    goto :goto_9b

    .line 255
    :cond_6e
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->shouldNotShowMiaoCodeDialog(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string p1, "自己分享出去再打开"

    .line 256
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 258
    :cond_7a
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->shouldShowMiaoCodeDialogType2(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 260
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_8d

    .line 261
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mCallBack:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;

    const/4 v3, 0x3

    invoke-interface {v0, p1, v3, v2, v1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;->showPop(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 264
    :cond_8d
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mCallBack:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;

    const/4 v3, 0x2

    invoke-interface {v0, p1, v3, v2, v1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;->showPop(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    .line 267
    :cond_94
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mCallBack:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;

    const/4 v3, 0x1

    invoke-interface {v0, p1, v3, v2, v1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;->showPop(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9a} :catch_9c

    goto :goto_a0

    :cond_9b
    :goto_9b
    return-void

    :catch_9c
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a0
    return-void
.end method

.method private getSplitContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 275
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 276
    array-length p2, p1

    const/4 v0, 0x2

    if-le p2, v0, :cond_d

    .line 277
    array-length p2, p1

    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method private initEye(Landroid/app/Activity;)V
    .registers 7

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mEyeshieldViewMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mEyeshieldViewMap:Ljava/util/HashMap;

    .line 130
    :cond_b
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getCurUserEyeshieldMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isLastEyeshieldModeOpen:Z

    .line 131
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mEyeshieldViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "#33ffe6ac"

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 133
    iget-boolean p1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isLastEyeshieldModeOpen:Z

    if-eqz p1, :cond_26

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :cond_26
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void

    .line 136
    :cond_2a
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_37

    return-void

    .line 140
    :cond_37
    new-instance v3, Lcom/nemo/commonui/xpopup/widget/EyeshieldLayout;

    invoke-direct {v3, p1}, Lcom/nemo/commonui/xpopup/widget/EyeshieldLayout;-><init>(Landroid/content/Context;)V

    .line 141
    iget-boolean v4, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isLastEyeshieldModeOpen:Z

    if-eqz v4, :cond_44

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :cond_44
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 142
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x38

    .line 143
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x1

    .line 146
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 147
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 148
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mEyeshieldViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isInCreateCenter(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 365
    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    if-nez v1, :cond_18

    instance-of v1, p1, Lcom/codemao/creativecenter/activity/MaterialActivity;

    if-nez v1, :cond_18

    instance-of v1, p1, Lcn/codemao/android/sketch/SketchActivity2;

    if-nez v1, :cond_18

    instance-of v1, p1, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    if-nez v1, :cond_18

    instance-of p1, p1, Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    if-eqz p1, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private isNeedShowUserLevelUp(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 355
    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/activity/LoginActivity;

    if-nez v1, :cond_1f

    instance-of v1, p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    if-nez v1, :cond_1f

    instance-of v1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    if-nez v1, :cond_1f

    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isInCreateCenter(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x1

    return p1

    :cond_1f
    :goto_1f
    return v0
.end method

.method private shouldNotShowMiaoCodeDialog(Landroid/app/Activity;)Z
    .registers 3

    .line 284
    instance-of v0, p1, Lcom/codemao/nemo/activity/FirstActivity;

    if-nez v0, :cond_13

    instance-of v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    if-nez v0, :cond_13

    instance-of v0, p1, Lcom/codemao/nemo/activity/LoginActivity;

    if-nez v0, :cond_13

    instance-of p1, p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method private shouldNotShowUserAgreementDialog(Landroid/app/Activity;)Z
    .registers 3

    .line 296
    instance-of v0, p1, Lcom/codemao/nemo/activity/FirstActivity;

    if-nez v0, :cond_1f

    instance-of v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    if-nez v0, :cond_1f

    instance-of v0, p1, Lcom/codemao/nemo/activity/LoginActivity;

    if-nez v0, :cond_1f

    instance-of v0, p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    if-nez v0, :cond_1f

    instance-of v0, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;

    if-nez v0, :cond_1f

    instance-of v0, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    if-nez v0, :cond_1f

    instance-of p1, p1, Lcom/tencent/connect/common/AssistActivity;

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method private shouldShowMiaoCodeDialogType2(Landroid/app/Activity;)Z
    .registers 3

    .line 307
    instance-of v0, p1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcn/codemao/android/sketch/SketchActivity2;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/creativecenter/activity/MaterialActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcn/codemao/android/sketch/SketchActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcn/codemao/android/sketch/activity/ICutActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/nemo/ui/MultiImageSelectorActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/codemao/nemo/activity/CoverEditActivity;

    if-nez v0, :cond_47

    instance-of p1, p1, Lcom/codemao/nemo/activity/UserAvatarEditActivity;

    if-eqz p1, :cond_45

    goto :goto_47

    :cond_45
    const/4 p1, 0x0

    return p1

    :cond_47
    :goto_47
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 84
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/util/ActivityUtils;->addActivity(Landroid/app/Activity;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->initEye(Landroid/app/Activity;)V

    .line 87
    instance-of p2, p1, Lcom/codemao/nemo/activity/FirstActivity;

    if-eqz p2, :cond_f

    return-void

    .line 90
    :cond_f
    instance-of p2, p1, Lcom/giu/xzz/BaseActivity;

    if-eqz p2, :cond_1e

    .line 91
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/MainApplication;->getDefaultDpi()I

    move-result p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->setDefaultDisplay(Landroid/content/Context;I)V

    .line 93
    :cond_1e
    instance-of p1, p1, Lcom/codemao/nemo/MainActivityV2;

    if-eqz p1, :cond_36

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 94
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->postLogin()V

    .line 95
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->startCountDown()V

    :cond_36
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mEyeshieldViewMap:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 345
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_7
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/util/ActivityUtils;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 321
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 322
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/ActivityUtils;->setCurrentActivity(Landroid/app/Activity;)V

    :cond_12
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    .line 170
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/nemo/MainApplication;->isOADUpload:Z

    if-nez v0, :cond_b

    .line 171
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->pushOAID()V

    :cond_b
    const-string v0, "miaocode"

    const-string v1, "onActivityResumed"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isFromBack:Z

    if-nez v0, :cond_9c

    .line 176
    instance-of v0, p1, Lcom/codemao/nemo/MainActivityV2;

    if-eqz v0, :cond_4b

    .line 177
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/ActivityUtils;->hasActivity(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/ActivityUtils;->hasActivity(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/TemplateCreateActivity;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/ActivityUtils;->hasActivity(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/CourseActivity;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/ActivityUtils;->hasActivity(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_4a
    return-void

    .line 181
    :cond_4b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 183
    instance-of v2, p1, Lcn/codemao/android/sketch/SketchActivity2;

    if-eqz v2, :cond_60

    .line 184
    move-object v0, p1

    check-cast v0, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/SketchActivity2;->getViewName()Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    .line 185
    :cond_60
    instance-of v2, p1, Lcom/giu/xzz/BaseActivity;

    if-eqz v2, :cond_70

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/giu/xzz/BaseActivity;

    invoke-virtual {v0}, Lcom/giu/xzz/BaseActivity;->getViewExtraInfo()Ljava/util/Map;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    .line 188
    :cond_70
    instance-of v2, p1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    if-eqz v2, :cond_7c

    .line 189
    move-object v0, p1

    check-cast v0, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/NewBcmActivityV2;->getViewName()Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    .line 190
    :cond_7c
    instance-of v2, p1, Lcom/codemao/creativecenter/callback/ViewNameInterFace;

    if-eqz v2, :cond_88

    .line 191
    move-object v0, p1

    check-cast v0, Lcom/codemao/creativecenter/callback/ViewNameInterFace;

    invoke-interface {v0}, Lcom/codemao/creativecenter/callback/ViewNameInterFace;->getViewName()Ljava/lang/String;

    move-result-object v0

    goto :goto_95

    .line 192
    :cond_88
    instance-of v2, p1, Lcom/codemao/midi/MidiPlayerActivity;

    if-eqz v2, :cond_8f

    const-string v0, "MIDI画板"

    goto :goto_95

    .line 194
    :cond_8f
    instance-of v2, p1, Lcom/codemao/midi/MidiSettingActivity;

    if-eqz v2, :cond_95

    const-string v0, "MIDI设置页"

    .line 197
    :cond_95
    :goto_95
    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewCommonViewEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendMatomoViewEvent(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_a3

    .line 200
    :cond_9c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/SprefUtil;->putPageVisitTime(J)V

    :goto_a3
    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isFromBack:Z

    .line 204
    :try_start_a6
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/util/ActivityUtils;->setCurrentActivity(Landroid/app/Activity;)V

    .line 205
    invoke-static {p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->diffViewName(Landroid/app/Activity;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b0} :catch_b1

    goto :goto_b2

    :catch_b1
    nop

    .line 209
    :goto_b2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_bb

    const/4 v1, 0x1

    goto :goto_bc

    :cond_bb
    const/4 v1, 0x0

    :goto_bc
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c7

    const/4 v0, 0x1

    :cond_c7
    and-int/2addr v0, v1

    if-eqz v0, :cond_de

    instance-of v0, p1, Lcom/codemao/toolssdk/activity/CreateBcmActivity;

    if-nez v0, :cond_de

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$1;-><init>(Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 222
    :cond_de
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->shouldNotShowUserAgreementDialog(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_e7

    .line 223
    invoke-static {}, Lcom/codemao/nemo/http/PolicyUtils;->notifyPolicy()V

    :cond_e7
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .line 103
    iget v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->activityActive:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->activityActive:I

    if-ne v0, v1, :cond_32

    .line 105
    iput-boolean v1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isFromBack:Z

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mCallBack:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;

    if-eqz v0, :cond_11

    .line 107
    invoke-interface {v0, v1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;->onChanged(Z)V

    .line 109
    :cond_11
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isNeedShowUserLevelUp(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 110
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->getUserLevelInfo()V

    .line 112
    :cond_1e
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 113
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->startCountDown()V

    .line 114
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->postLogin()V

    :cond_32
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 328
    iget p1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->activityActive:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->activityActive:I

    if-nez p1, :cond_17

    .line 330
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->stopCountDown()V

    .line 331
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mCallBack:Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 332
    invoke-interface {p1, v0}, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks$ProcessChangeCallBack;->onChanged(Z)V

    :cond_17
    return-void
.end method

.method public onEyeshieldModeChange(Lcom/codemao/nemo/event/EyeshieldModeChange;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mEyeshieldViewMap:Ljava/util/HashMap;

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isLastEyeshieldModeOpen:Z

    iget-boolean p1, p1, Lcom/codemao/nemo/event/EyeshieldModeChange;->isOpen:Z

    if-eq v0, p1, :cond_45

    xor-int/lit8 p1, v0, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isLastEyeshieldModeOpen:Z

    .line 157
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/NemoUIConfigManager;->setOpenEyeshieldMode(Z)V

    .line 158
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/ActivityUtils;->getActivityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 159
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->mEyeshieldViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    .line 161
    iget-boolean v1, p0, Lcom/codemao/nemo/util/ActivityLifecycleCallbacks;->isLastEyeshieldModeOpen:Z

    if-eqz v1, :cond_40

    const-string v1, "#33ffe6ac"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_1f

    :cond_45
    return-void
.end method
