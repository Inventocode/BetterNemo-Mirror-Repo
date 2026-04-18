.class public final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final goSetting(Landroidx/fragment/app/FragmentActivity;)V
    .registers 7

    const-string v0, "CreativeCenterUtils.getInstance()"

    const-string v1, "package"

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "fragmentActivity"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    .line 212
    :try_start_11
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2a} :catch_2b

    goto :goto_49

    :catch_2b
    move-exception v5

    .line 216
    :try_start_2c
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_45} :catch_46

    goto :goto_49

    .line 220
    :catch_46
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    const/high16 v0, 0x10000000

    .line 223
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final checkPermissionInOrigin(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V
    .registers 7

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "permissions"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "permissionCallBack"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/CreativeCenterUtils;->permissionNoticeCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;

    if-eqz p2, :cond_26

    .line 90
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/CreativeCenterUtils;->permissionNoticeCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;

    new-instance p3, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;

    invoke-direct {p3, p1, p4, p5, p6}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    invoke-interface {p2, p4, p1, p3}, Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;->onRequestPermission(Ljava/lang/String;Landroid/content/Context;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V

    goto :goto_2e

    .line 104
    :cond_26
    new-instance p2, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$2;

    invoke-direct {p2, p1, p4, p5, p6}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$2;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    invoke-virtual {p0, p1, p4, p2}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->showNoticePop(Landroid/content/Context;Ljava/lang/String;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V

    :goto_2e
    return-void
.end method

.method public final checkPermissionWithDenyCallBack(Landroidx/fragment/app/FragmentActivity;I[Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V
    .registers 7

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "permissions"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "permissionCallBack"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/CreativeCenterUtils;->permissionNoticeCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;

    if-eqz p2, :cond_26

    .line 54
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/CreativeCenterUtils;->permissionNoticeCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;

    new-instance v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;

    invoke-direct {v0, p1, p4, p3, p5}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$1;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    invoke-interface {p2, p4, p1, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;->onRequestPermission(Ljava/lang/String;Landroid/content/Context;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V

    goto :goto_2e

    .line 70
    :cond_26
    new-instance p2, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$2;

    invoke-direct {p2, p1, p4, p3, p5}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithDenyCallBack$2;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V

    invoke-virtual {p0, p1, p4, p2}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->showNoticePop(Landroid/content/Context;Ljava/lang/String;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V

    :goto_2e
    return-void
.end method

.method public final varargs checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;

    invoke-direct {v0, p1, p3}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;-><init>(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;

    invoke-direct {v1, p1, p3, p2}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;-><init>(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create<Int> {…\n            }\n\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getGoSettingStrId(Ljava/lang/String;)I
    .registers 4

    .line 228
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_go_setting_read_write:I

    if-nez p1, :cond_5

    goto :goto_2e

    .line 229
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_30

    goto :goto_2e

    :sswitch_d
    const-string v1, "CREATE_TYPE_RECORD_MUSIC"

    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_go_setting_recorder:I

    goto :goto_2e

    :sswitch_18
    const-string v1, "CREATE_TYPE_OPEN_XIANGCE"

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2e

    :sswitch_1e
    const-string v1, "CREATE_TYPE_RUN_AUDIO_WORK"

    .line 232
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_go_setting_recorder:I

    goto :goto_2e

    :sswitch_29
    const-string v1, "CREATE_TYPE_OPEN_LOCAL_MUSICE"

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2e
    :goto_2e
    return v0

    nop

    :sswitch_data_30
    .sparse-switch
        -0x45fa40f9 -> :sswitch_29
        -0x2074bbd0 -> :sswitch_1e
        0x12af26b8 -> :sswitch_18
        0x2d6d20f9 -> :sswitch_d
    .end sparse-switch
.end method

.method public final getNoticeStrId(Ljava/lang/String;)I
    .registers 4

    .line 164
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_noitce_run_audio_work:I

    if-nez p1, :cond_5

    goto :goto_34

    .line 165
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_36

    goto :goto_34

    :sswitch_d
    const-string v1, "CREATE_TYPE_RECORD_MUSIC"

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_noitce_record_music:I

    goto :goto_34

    :sswitch_18
    const-string v1, "CREATE_TYPE_OPEN_XIANGCE"

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_noitce_open_xiangce:I

    goto :goto_34

    :sswitch_23
    const-string v1, "CREATE_TYPE_RUN_AUDIO_WORK"

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_34

    :sswitch_2a
    const-string v1, "CREATE_TYPE_OPEN_LOCAL_MUSICE"

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_permission_noitce_open_local_music:I

    :cond_34
    :goto_34
    return v0

    nop

    :sswitch_data_36
    .sparse-switch
        -0x45fa40f9 -> :sswitch_2a
        -0x2074bbd0 -> :sswitch_23
        0x12af26b8 -> :sswitch_18
        0x2d6d20f9 -> :sswitch_d
    .end sparse-switch
.end method

.method public final varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_12

    return v1

    .line 43
    :cond_12
    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v0, :cond_23

    aget-object v4, p2, v3

    .line 44
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_20

    return v2

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_23
    return v1
.end method

.method public final showGosettingPop(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->getGoSettingStrId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStrId(I)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object p2

    .line 195
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_nemo_cancel:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_tosetting:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showGosettingPop$1;

    invoke-direct {v1, p1, p2}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showGosettingPop$1;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 200
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 203
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public final showNoticePop(Landroid/content/Context;Ljava/lang/String;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V
    .registers 7

    const-string v0, "resultHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    if-nez p1, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->getNoticeStrId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStrId(I)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object p2

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_library_access_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_library_access_allow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$1;

    invoke-direct {v1, p2, p3}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$2;

    invoke-direct {v1, p2, p3}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$2;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 185
    new-instance p3, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p3, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p3

    .line 187
    invoke-virtual {p3, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 188
    sget-object p3, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, p3}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method
